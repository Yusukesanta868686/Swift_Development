import SwiftUI

struct ContentView: View {
    @State var merody: [Int] = []
    @AppStorage ("sheetflag") var isSearchViewVisible: Bool = false
    let sound = SoundPlayer()
    var body: some View {
        VStack {
            Spacer()
            Text("メロディーを入力してください")
                .font(.headline)
            Spacer()

            HStack{
                Button{
                    merody.append(1)
                    sound.CPlay()
                } label: {
                    Text("ド")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .frame(width: 80, height: 80)
                        .background(Color.blue)
                        .clipShape(Circle())
                }
                Button{
                    merody.append(2)
                } label: {
                    Text("ド♯")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .frame(width: 80, height: 80)
                        .background(Color.blue)
                        .clipShape(Circle())
                }
                Button{
                    merody.append(3)
                    sound.DPlay()
                } label: {
                    Text("レ")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .frame(width: 80, height: 80)
                        .background(Color.blue)
                        .clipShape(Circle())
                    
                }
                Button{
                    merody.append(4)
                } label: {
                    Text("レ♯")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .frame(width: 80, height: 80)
                        .background(Color.blue)
                        .clipShape(Circle())
                }
            }
            HStack{
                Button{
                    merody.append(5)
                    sound.EPlay()
                } label: {
                    Text("ミ")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .frame(width: 80, height: 80)
                        .background(Color.blue)
                        .clipShape(Circle())
                }
                Button{
                    merody.append(6)
                    sound.FPlay()
                } label: {
                    Text("ファ")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .frame(width: 80, height: 80)
                        .background(Color.blue)
                        .clipShape(Circle())
                }
                Button{
                    merody.append(7)
                } label: {
                    Text("ファ♯")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .frame(width: 80, height: 80)
                        .background(Color.blue)
                        .clipShape(Circle())
                    
                }
                Button{
                    merody.append(8)
                    sound.GPlay()
                } label: {
                    Text("ソ")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .frame(width: 80, height: 80)
                        .background(Color.blue)
                        .clipShape(Circle())
                }
            }
            
            HStack{
                Button{
                    merody.append(9)
                } label: {
                    Text("ソ♯")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .frame(width: 80, height: 80)
                        .background(Color.blue)
                        .clipShape(Circle())
                }
                Button{
                    merody.append(10)
                    sound.APlay()
                } label: {
                    Text("ラ")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .frame(width: 80, height: 80)
                        .background(Color.blue)
                        .clipShape(Circle())
                }
                Button{
                    merody.append(11)
                } label: {
                    Text("ラ♯")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .frame(width: 80, height: 80)
                        .background(Color.blue)
                        .clipShape(Circle())
                    
                }
                Button{
                    merody.append(12)
                    sound.BPlay()
                } label: {
                    Text("シ")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .frame(width: 80, height: 80)
                        .background(Color.blue)
                        .clipShape(Circle())
                }
            }

            Spacer()
            HStack {
                Button {
                    merody = []
                } label: {
                    Text("リセット")
                        .font(.title)
                        .frame(width: 200, height: 50)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                }
                Button {
                    print(merody)
                    isSearchViewVisible.toggle() // ボタンをタップすると SearchView の表示状態をトグル
                } label: {
                    Text("検索")
                        .font(.title)
                        .frame(width: 200, height: 50)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                }
            }
            Spacer()
        }
        .sheet(isPresented: $isSearchViewVisible) {
            SearchView(merody: $merody) // モーダルシートとして SearchView を表示
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



