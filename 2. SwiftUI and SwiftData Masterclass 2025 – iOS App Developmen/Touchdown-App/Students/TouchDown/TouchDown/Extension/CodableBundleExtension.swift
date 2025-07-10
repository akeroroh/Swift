//
//  CodableBundleExtension.swift
//  TouchDown
//
//  Created by 진아현 on 6/29/25.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        //MARK: - 1. LOcate the JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        //MARK: - 2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        //MARK: - 3. Create a decoder
        let decoder = JSONDecoder()
        
        //MARK: - 4. Create a property for the decoded data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        //MARK: - 5. Return the ready-to-use data
        return decodedData
    }
}
