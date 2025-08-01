//
//  OCRViewModel.swift
//  Starbucks_Anne
//
//  Created by 진아현 on 7/31/25.
//

import SwiftUI
import SwiftData
import Vision

@Observable
class OCRViewModel: ImageHandling {
    var isImagePickerPresented: Bool = false
    var images: [UIImage] = []
    var recognizedText: String = ""
    var currentReceipt: ReceiptsModel?

    func addImage(_ image: UIImage) {
        images.append(image)
        performOCR(on: image)
    }

    func removeImage(at index: Int) {
        guard images.indices.contains(index) else { return }
        images.remove(at: index)
    }

    func getImages() -> [UIImage] {
        images
    }

    private func performOCR(on uiImage: UIImage) {
        guard let cgImage = uiImage.cgImage else { return }

        let request = VNRecognizeTextRequest { [weak self] request, error in
            guard let self = self,
                  let observations = request.results as? [VNRecognizedTextObservation],
                  error == nil else {
                self?.currentReceipt = nil
                return
            }
            
            let recognizedStrings = observations.compactMap { $0.topCandidates(1).first?.string }
            let fullText = recognizedStrings.joined(separator: "\n")
            let parsed = self.parseWithoutRegex(from: fullText)
            
            DispatchQueue.main.async {
                self.currentReceipt = parsed
            }
        }

        request.recognitionLevel = .accurate
        request.usesLanguageCorrection = true
        request.recognitionLanguages = ["ko-KR", "en-US"]

        let handler = VNImageRequestHandler(cgImage: cgImage, options: [:])

        DispatchQueue.global(qos: .userInitiated).async {
            try? handler.perform([request])
        }
    }
    
    private func parseWithoutRegex(from text: String) -> ReceiptsModel {
        let lines = text.components(separatedBy: .newlines)
        
        var store = "장소 없음"
        var totalAmount = 0
        var orderAt = "확인 불가능"
        
        var i = 0
        
        print("===== OCR 디버그 시작 =====")
        
        while i < lines.count {
            let trimmed = lines[i].trimmingCharacters(in: .whitespacesAndNewlines)
            print("🔹 [\(i)] \(trimmed)")

            // 장소
            if store == "장소 없음", trimmed.contains("점") {
               store = trimmed
            }

            // 결제 금액
            if trimmed.contains("결제금액"), i + 2 < lines.count {
               let priceLine = lines[i + 2].trimmingCharacters(in: .whitespaces)
               let numberOnly = priceLine.components(separatedBy: CharacterSet.decimalDigits.inverted).joined()
               if let amount = Int(numberOnly) {
                   totalAmount = amount
               }
            }
            
            // 주문 일시
            if isDateStringValid(dateString: trimmed) {
                let dateFormatter = DateFormatter()
                dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
                let convertDate = dateFormatter.date(from: trimmed)
                        
                let myDateFormatter = DateFormatter()
                myDateFormatter.dateFormat = "yyyy.MM.dd HH:mm"

                let convertStr = myDateFormatter.string(from: convertDate ?? Date())
                
                orderAt = convertStr
            }
            
            i += 1
        }
        
        print("===== OCR 디버그 끝 =====")
        print("🏪 매장명: \(store)")
        print("💰 결제 금액: \(totalAmount)")
        print("🧾 주문일시: \(orderAt)")
        
        return ReceiptsModel(
            photo: images.first?.pngData() ?? Data(),
            store: store,
            totalAmount: totalAmount,
            orderAt: orderAt
        )
    }
    
    func isDateStringValid(dateString: String) -> Bool {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return dateFormatter.date(from: dateString) != nil
    }
}
