////
////  PhotoPickerViewModel.swift
////  Starbucks_Anne
////
////  Created by 진아현 on 7/30/25.
////
//
//import Foundation
//import SwiftUI
//
//@Observable
//class PhotoPickerViewModel: ImageHandling {
//    var recognizedText: String
//    
//    func addImage(_ images: UIImage) {
//        self.images.append(images)
//    }
//    
//    func removeImage(at index: Int) {
//        guard !self.images.isEmpty else { return }
//        self.images.remove(at: index)
//    }
//    
//    func getImages() -> [UIImage] {
//        self.images
//    }
//    
//    var isImagePickerPresented: Bool = false
//    
//    internal var images: [UIImage] = []
//}
