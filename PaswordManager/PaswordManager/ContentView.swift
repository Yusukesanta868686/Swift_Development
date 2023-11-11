//
//  ContentView.swift
//  PaswordManager
//
//  Created by 平田佑亮 on 2023/11/11.
//

import SwiftUI

struct ContentView: View {
    @State var inputText: String = ""
    @State var isAuthenticated: Bool = false // 認証フラグを追加
    
    @AppStorage ("password") var Password: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Text("パスワードを入力してください")
                
                TextField("パスワード",
                          text: $inputText,
                          prompt: Text("パスワードを入力"))
                
                if isAuthenticated { // パスワードが一致した場合にメニューに遷移
                    NavigationLink("メニューに移動", destination: MenuView())
                } else {
                    Button("認証", action: authenticate) // 認証ボタンを追加
                }
            }
            .navigationTitle("ホーム")
        }
    }
    
    func authenticate() {
        if inputText == Password {
            isAuthenticated = true
        } else {
            // パスワードが一致しない場合の処理を追加
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
