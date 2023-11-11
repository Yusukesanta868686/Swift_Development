//
//  OkashiData.swift
//  MyOkashi
//
//  Created by 平田佑亮 on 2023/11/08.
//

import Foundation

//Identifiableプロトコルを利用して、お菓子の情報をまとめる構造体
struct OkashiItem: Identifiable{
    let id = UUID()
    let name: String
    let link: URL
    let image: URL
}

class OkashiData: ObservableObject{
    //JSONデータの構造
    struct ResultJson: Codable{
        struct Item: Codable{
            let name: String?
            let url: URL?
            let image: URL?
        }
        let item: [Item]?
    }
    
    //お菓子のリスト(Identifiableプロトコル)
    @Published var okashiList: [OkashiItem] = []
    var okashiLink: URL?
    
    //Web API検索用メソッド　第一引数: keyword 検索したいワード
    func searchOkashi(keyword: String){
        print("searchOkashiメソッドで受け取った値: \(keyword)")
        
        Task{
            await search(keyword: keyword)
        }
    }
    @MainActor
    private func search(keyword: String) async{
        guard let keyword_encode = keyword.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        else {
            return
        }
        
        guard let req_url = URL(string:
            "https://sysbird.jp/toriko/api/?apikey=guest&format=json&keyword=\(keyword_encode)&max=10&order=r"
        ) else {
            return
        }
        print(req_url)
        
        do{
            //リクエストURLからダウンロード
            let(data, _) = try await URLSession.shared.data(from: req_url)
            //JSONDecoderへのインスタンス取得
            let decoder = JSONDecoder()
            
            //受け取ったJSONデータを解析して格納
            let json = try decoder.decode(ResultJson.self, from: data)
            
            //お菓子の情報が取得できているか確認
            guard let items = json.item else {return}
            
            //お菓子のリストを初期化
            self.okashiList.removeAll()
            
            //取得しているお菓子の数だけ処理
            for item in items{
                if let name = item.name,
                   let link = item.url,
                   let image = item.image{
                    //1つのお菓子を構造体でまとめて管理
                    let okashi = OkashiItem(name: name, link: link, image: image)
                    //お菓子の配列へ追加
                    self.okashiList.append(okashi)
                }
            }
            print(self.okashiList)
            
        } catch{
            print("エラーが出ました")
        }//doここまで
    }
}
