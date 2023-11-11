//
//  SoundPlayer.swift
//  MusicSearcher
//
//  Created by 平田佑亮 on 2023/11/11.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    
    let CData = NSDataAsset(name: "C")!.data
    let DData = NSDataAsset(name: "D")!.data
    let EData = NSDataAsset(name: "E")!.data
    let FData = NSDataAsset(name: "F")!.data
    let GData = NSDataAsset(name: "G")!.data
    let AData = NSDataAsset(name: "A")!.data
    let BData = NSDataAsset(name: "B")!.data
    
    var CPlayer: AVAudioPlayer!
    var DPlayer: AVAudioPlayer!
    var EPlayer: AVAudioPlayer!
    var FPlayer: AVAudioPlayer!
    var GPlayer: AVAudioPlayer!
    var APlayer: AVAudioPlayer!
    var BPlayer: AVAudioPlayer!
    
    
    func CPlay(){
        do{
            CPlayer = try AVAudioPlayer(data: CData)
            CPlayer.play()
        }catch{
            print("Cでエラーが発生しました")
        }
    }
    func DPlay(){
        do{
            DPlayer = try AVAudioPlayer(data: DData)
            DPlayer.play()
        }catch{
            print("Dでエラーが発生しました")
        }
    }
    func EPlay(){
        do{
            EPlayer = try AVAudioPlayer(data: EData)
            EPlayer.play()
        }catch{
            print("Cでエラーが発生しました")
        }
    }
    func FPlay(){
        do{
            FPlayer = try AVAudioPlayer(data: FData)
            FPlayer.play()
        }catch{
            print("Cでエラーが発生しました")
        }
    }
    func GPlay(){
        do{
            GPlayer = try AVAudioPlayer(data: GData)
            GPlayer.play()
        }catch{
            print("Cでエラーが発生しました")
        }
    }
    func APlay(){
        do{
            APlayer = try AVAudioPlayer(data: AData)
            APlayer.play()
        }catch{
            print("Cでエラーが発生しました")
        }
    }
    func BPlay(){
        do{
            BPlayer = try AVAudioPlayer(data: BData)
            BPlayer.play()
        }catch{
            print("Cでエラーが発生しました")
        }
    }
}
