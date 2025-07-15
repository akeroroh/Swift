//
//  Dictionary.swift
//  3rd Practi e
//
//  Created by 진아현 on 7/14/25.
//

import SwiftUI

struct Dictionaryview: View {
    var studentScore: [String: Int] = ["김민준": 88, "박민영": 92, "이민철": 79]
    
    var body: some View {
        VStack {
//            for (name, score) in studentScore {
//                Text("\(name)의 점수 \(score)")
//            }
        }
    }
}

#Preview {
    Dictionaryview()
}
