//
//  ChengePassword.swift
//  PaswordManager
//
//  Created by 平田佑亮 on 2023/11/11.
//

import SwiftUI

struct ChangePassword: View {
    @State var newpassword: String = ""
    @State var newpassword2: String = ""
    @AppStorage ("password") var Password:String = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                
                Text("新しいパスワードを入力してください")
                TextField("新しいパスワード",
                    text: $newpassword,
                    prompt: Text("新しいパスワードを入力してください"))
                
                Spacer()
                
                Text("もう一度新しいパスワードを入力してください")
                
                TextField("新しいパスワード",
                    text: $newpassword2,
                    prompt: Text("新しいパスワードを入力してください"))
                
                Spacer()
                
                if (newpassword != "" && newpassword2 != "" && newpassword != newpassword2){
                    Text("エラー: パスワードが一致していません")
                        .foregroundColor(.red) // エラーメッセージを赤色で表示
                }else {
                    Button{
                        Password = newpassword
                    }label: {
                        Text("変更する")
                    }
                }
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    NavigationLink{
                        ContentView()
                    }label: {
                        Text("ホーム")
                    }
                }
            }
        
        }
    }
}

#Preview {
    ChangePassword()
}
