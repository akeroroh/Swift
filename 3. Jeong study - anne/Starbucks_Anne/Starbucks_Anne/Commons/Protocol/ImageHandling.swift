//
//  ImageHandling.swift
//  Starbucks_Anne
//
//  Created by 진아현 on 7/30/25.
//

import Foundation
import SwiftUI

protocol ImageHandling: AnyObject {
    func addImage(_ image: UIImage)
    func getImages() -> [UIImage]
    var recognizedText: String { get set }
}
