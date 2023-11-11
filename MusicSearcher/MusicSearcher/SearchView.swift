//
//  SearchMusic.swift
//  MusicSeacher
//
//  Created by 平田佑亮 on 2023/11/11.
//

import Foundation
import SwiftUI


struct SearchView: View {
    @AppStorage ("sheetflag") var isSearchViewvisible = false
    @Binding var merody: [Int]

    let music = Music()
    @State var result: [String] = []
    var body: some View {
        // ここにビューの内容を記述
        VStack{
            Spacer()
            if result.count > 0{
                Text("以下の曲が見つかりました")
                    .font(.title)
                Text("\(result[0])")
                    .font(.title)
                
            }else {
                Text("曲が見つかりませんでした")
                    .font(.title)
            }
            
            Spacer()
                
            Button{
                music.decodeJSON()
                result = music.find(merody: merody)
            }label: {
                Text("実行")
                    .font(.title)
                    .frame(width: 200, height: 100)
                    .foregroundColor(.white)
                    .background(.blue)
            }
            Button{
                isSearchViewvisible = false
            }label:{
                Text("閉じる")
                    .font(.title)
                    .frame(width: 200, height: 100)
                    .foregroundColor(.white)
                    .background(.blue)
            }
            Spacer()
        }
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(merody: .constant([1, 2, 3])) // 仮のデータをバインディング
    }
}



