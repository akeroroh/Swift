//
//  DevoteWidgetBundle.swift
//  DevoteWidget
//
//  Created by 진아현 on 7/1/25.
//

import WidgetKit
import SwiftUI

@main
struct DevoteWidgetBundle: WidgetBundle {
    var body: some Widget {
        DevoteWidget()
        DevoteWidgetControl()
        DevoteWidgetLiveActivity()
    }
}
