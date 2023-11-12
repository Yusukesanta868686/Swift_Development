//
//  LookPassword.swift
//  PaswordManager
//
//  Created by 平田佑亮 on 2023/11/11.
//

import SwiftUI

struct LookPassword: View {
    @AppStorage("genre") var genre: String = ""
    let storage = PasswordStorage()
    
    var body: some View {
        NavigationStack{
            VStack{
                Text("パスワード一覧")
                let passwords = storage.fetchData(forGenre: genre)
                
                List(passwords){passdata in
                    HStack{
                        Text("\(passdata.name)")
                        Text("\(passdata.password)")
                    }
                }
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    NavigationLink{
                        AddPasswordView()
                    }label: {
                        Text("パスワードを追加")
                    }
                }
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    NavigationLink{
                        MenuView()
                    }label: {
                        Text("メニューに戻る")
                    }
                }
            }
            
        }
    }
}


#Preview {
    LookPassword()
}
