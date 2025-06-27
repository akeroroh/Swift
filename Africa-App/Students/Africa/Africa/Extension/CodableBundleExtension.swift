//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by 진아현 on 6/25/25.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        //MARK: - 1. LOCATE THE JSON FILE
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        //MARK: - 2. CREATE A PROPERTY FOR THE DATA
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        
        //MARK: - 3. CREATE A DECODER
        let decoder = JSONDecoder()
        
        //MARK: - 4. CREATE A PROPERTY FOR THE DECODED DATA
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        
        //MARK: - 5. RETURN THE READY-TO-USE DATA
        return loaded
    }
}
