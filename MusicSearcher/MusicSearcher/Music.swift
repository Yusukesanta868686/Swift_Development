//
//  Search.swift
//  MusicSeacher
//
//  Created by 平田佑亮 on 2023/11/11.
//

import Foundation

let Songs = """
[
    {
        "song": "かえるの唄",
        "merody": [1, 3, 5, 6, 5, 3, 1, 5, 6, 8, 10, 8, 6, 5, 1, 1, 1, 1, 1, 3, 5, 6, 5, 3, 1]
    },
    {
        "song": "君が代",
        "merody": [3, 1, 3, 5, 8, 5, 3]
    },
    {
        "song": "song3",
        "merody": [5,2,1,6,2]
    }
]
"""

struct Musicinfo: Codable {
    let song: String
    let merody: [Int]
}


var Songsinfo: [Musicinfo]?
var is_same = true
class Music {
    
    func decodeJSON() {
        let decoder = JSONDecoder()
        let SongsData = Songs.data(using: .utf8)!
        Songsinfo = try! decoder.decode([Musicinfo].self, from: SongsData)
        
    }
    
    func printJson(){
        if let Songsinfo = Songsinfo{
            for songinfo in Songsinfo{
                print("song name is \(songinfo.song), the merody is \(songinfo.merody)")
            }
        }
    }
    
    func find(merody: [Int]) -> [String]{
        var result: [String] = []
        if let Songsinfo = Songsinfo{
            for songinfo in Songsinfo{
                is_same = true
                for i in 0 ..< min(merody.count, songinfo.merody.count) { // 配列の短い方を基準に比較
                    if songinfo.merody[i] != merody[i]{
                        is_same = false
                        break
                    }
                }
                if is_same == true{
                    print("same: \(songinfo.song)")
                    result.append(songinfo.song)
                }
            }
        }
        return result
    }
}





