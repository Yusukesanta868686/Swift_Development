//
//  ContentView.swift
//  Timer
//
//  Created by 平田佑亮 on 2023/10/09.
//

import SwiftUI

struct ContentView: View {
    @State var timerHandler: Timer?
    @State var count = 0
    @State var showAlert = false
    
    @AppStorage("timer_value") var timerValue = 10
    
    var body: some View{
        NavigationStack{
            ZStack{
                Image("backgroundTimer")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                VStack(spacing: 30.0){
                    Text("残り\(timerValue - count)秒")
                        .font(.largeTitle)
                    
                    HStack{
                        Button{
                            startTimer()
                        } label: {
                            Text("スタート")
                                .font(.title)
                                .foregroundColor(Color.white)
                                .frame(width: 140, height: 140)
                                .background(Color("startColor"))
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        }
                        Button{
                            if let unwrapedTimerHandler = timerHandler{
                                if unwrapedTimerHandler.isValid == true{
                                    unwrapedTimerHandler.invalidate()
                                }
                            }
                        } label: {
                            Text("ストップ")
                                .font(.title)
                                .foregroundColor(Color.white)
                                .frame(width: 140, height: 140)
                                .background(Color("stopColor"))
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        }
                    }
                }
            }//ZStackここまで
            .onAppear{
                count = 0
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing){
                    NavigationLink{
                        SettingView()
                    } label:{
                        Text("秒数設定")
                    }
                }
            }
            .alert("終了", isPresented: $showAlert){
                Button("OK"){
                    print("OKタップされました")
                }
            }message: {
                Text("タイマー終了です")
            }
        }
    }//bodyここまで
    
    func countDownTimer(){
        count += 1
        if (timerValue - count <= 0){
            timerHandler?.invalidate()
            showAlert = true
        }
    }
    
    func startTimer(){
        if let unwrapedTimerHandler =  timerHandler{
            if unwrapedTimerHandler.isValid == true{
                return
            }
        }
        
        if timerValue - count <= 0{
            count = 0
        }
        
        timerHandler = Timer.scheduledTimer(withTimeInterval: 1, repeats: true){_ in
                countDownTimer()
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
