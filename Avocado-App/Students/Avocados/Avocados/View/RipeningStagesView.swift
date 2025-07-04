//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by 진아현 on 7/4/25.
//

import SwiftUI

struct RipeningStagesView: View {
    //MARK: - PROPERTIES
    var ripeningStages: [Ripening] = ripeningData
    
    //MARK: - BODOY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { item in
                        RipeningView(ripening: item)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 25)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    RipeningStagesView(ripeningStages: ripeningData)
}
