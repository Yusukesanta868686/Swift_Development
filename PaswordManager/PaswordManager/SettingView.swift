//
//  SettingView.swift
//  PaswordManager
//
//  Created by 平田佑亮 on 2023/11/11.
//

import SwiftUI

struct SettingView: View {
    @State var setpass: Bool = false
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                NavigationLink("パスワードを変更", destination: ChangePassword())
                
                Spacer()
                
                NavigationLink("パスワードジャンルの追加", destination: ChangePassword())
                
                Spacer()
            }
            
        }
        
    }
}

#Preview {
    SettingView()
}
