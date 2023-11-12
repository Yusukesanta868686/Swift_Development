//
//  MenuView.swift
//  PaswordManager
//
//  Created by 平田佑亮 on 2023/11/11.
//

import SwiftUI

struct MenuView: View {
    @State var Genres: [String] = ["大学", "パソコン"]
    @AppStorage("genre") var genre: String = ""
    @State var open: Bool = false
    @State var newdata: String = ""
    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                
                Text("ジャンルをお選びください")
                    .font(.headline)
                
                Spacer()
                
                Picker(selection: $genre){
                    ForEach(Genres, id: \.self){gen in
                        Text("\(gen)")
                            .tag(gen)
                    }
                } label: {
                    Text("ジャンルを選択")
                }
                .pickerStyle(.menu)
                
                Spacer()
                
                
                NavigationLink("開く", destination: LookPassword())
                    .font(.largeTitle)
                
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    NavigationLink{
                        SettingView()
                    } label: {
                        Text("設定")
                    }
                }
            }
            
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    NavigationLink{
                        ContentView()
                    } label: {
                        Text("ホーム")
                    }
                }
            }
            
        }
        
        
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
