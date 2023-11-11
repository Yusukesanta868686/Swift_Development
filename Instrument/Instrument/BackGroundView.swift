//
//  BackGroundView.swift
//  Instrument
//
//  Created by 平田佑亮 on 2023/10/01.
//

import SwiftUI

struct BackGroundView: View {
    let imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .ignoresSafeArea()
            .scaledToFill()
    }
}

struct BackGroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackGroundView(imageName: "backgound")
    }
}
