//
//  ContentView.swift
//  My Map
//
//  Created by 平田佑亮 on 2023/10/01.
//

import SwiftUI

struct ContentView: View {
    @State var inputText:String = ""
    @State var displaySearchkey:String = ""
    
    var body: some View {
        VStack{
            TextField("キーワード", text: $inputText, prompt: Text("キーワードを入力してください"))
                .onSubmit {
                    displaySearchkey = inputText
                }
                .padding()
            
            MapView(searchKey: displaySearchkey)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
