//
//  AddPassword.swift
//  PaswordManager
//
//  Created by 平田佑亮 on 2023/11/12.
//

import SwiftUI

struct AddPasswordView: View {
    @State var newname: String = ""
    @State var newpassword: String = ""
    @AppStorage("genre") var genre: String = ""
    
    let passwordStorage = PasswordStorage()
    
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                
                Text("新しいパスワードを追加")
                
                Spacer()
                
                Text("パスワードの名前を入力")
                TextField("名前",
                          text: $newname,
                          prompt: Text("パスワードの名前を入力"))
                
                Spacer()
                
                Text("パスワードを入力")
                TextField("パスワード",
                          text: $newpassword,
                          prompt: Text("パスワードを入力"))
                
                Spacer()
                
                if (newname != "" && newpassword != ""){
                    Button{
                        passwordStorage.addNewData(genre: genre, name: newname, password: newpassword)
                    }label: {
                        Text("追加")
                    }
                }
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    NavigationLink{
                        LookPassword()
                    }label: {
                        Text("戻る")
                    }
                }
            }
        }
        
    }
}

#Preview {
    AddPasswordView()
}
