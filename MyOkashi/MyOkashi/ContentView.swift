//
//  ContentView.swift
//  MyOkashi
//
//  Created by 平田佑亮 on 2023/11/08.
//

import SwiftUI

struct ContentView: View {
    @StateObject var okashiDataList = OkashiData()
    @State var inputText = ""
    @State var showSafari = false
    
    var body: some View {
        VStack{
            TextField("キーワード",
                      text: $inputText,
                      prompt: Text("キーワードを入力してください"))
            .onSubmit {
                okashiDataList.searchOkashi(keyword: inputText)
            }
            
            .submitLabel(.search)
            .padding()
            
            List(okashiDataList.okashiList){okashi in
                Button{
                    okashiDataList.okashiLink = okashi.link
                    showSafari = true
                }label: {
                    HStack{
                        AsyncImage(url: okashi.image){image in
                            image
                                .resizable()
                                .scaledToFit()
                                .frame(height: 40)
                        } placeholder: {
                            ProgressView()
                        }
                        Text(okashi.name)
                    }
                }
                
            }
            .sheet(isPresented: $showSafari, content: {
                SafariView(url: okashiDataList.okashiLink!)
                    .ignoresSafeArea(edges: [.bottom])
            })
        }
    }
}

#Preview {
    ContentView()
}
