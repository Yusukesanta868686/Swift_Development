//
//  ContentView.swift
//  MyCamera
//
//  Created by 平田佑亮 on 2023/11/08.
//

import SwiftUI
import PhotosUI

struct ContentView: View {
    @State var captureImage: UIImage? = nil
    @State var isShowSheet = false
    @State var photosPickerSelectedImage: PhotosPickerItem? = nil
    
    var body: some View {
        VStack {
            Spacer()
            
            if let captureImage{
                Image(uiImage: captureImage)
                    .resizable()
                    .scaledToFit()
            }
            
            Spacer()
            
            Button{
                if UIImagePickerController.isSourceTypeAvailable(.camera){
                    print("カメラは利用できます")
                    isShowSheet.toggle()
                } else {
                    print("カメラは利用できません")
                }
            }label: {
                Text("カメラを起動する")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .frame(height: 50)
                    .multilineTextAlignment(.center)
                    .background(Color.blue)
                    .foregroundColor(Color.white)
            }
            .padding()
            
            .sheet(isPresented: $isShowSheet){
                ImagePickerView(isShowSheet: $isShowSheet, captureImage: $captureImage)
            }
            
            PhotosPicker(selection: $photosPickerSelectedImage,matching: .images,preferredItemEncoding: .automatic, photoLibrary: .shared()){
                Text("フォトライブラリーから選択する")
                    .frame(width: .infinity)
                    .frame(height: 50)
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .padding()
            }
            
            .onChange(of: photosPickerSelectedImage) { oldValue, newValue in
                if let photosPickerItem = newValue {
                    photosPickerItem.loadTransferable(type: Data.self) { result in
                        switch result {
                        case .success(let data):
                            if let unwrappedData = data {
                                captureImage = UIImage(data: unwrappedData)
                            }
                        case .failure:
                            // ここでエラーを処理する
                            break
                        }
                    }
                }
            }

            
            if let captureImage{
                let shareImage = Image(uiImage: captureImage)
                ShareLink(item: shareImage, subject: nil, message: nil, preview: SharePreview("Photo", image: shareImage)){
                    Text("SNSに投稿する")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .frame(height: 50)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .padding()
                }
                
            }
        }
        
    }
}

#Preview {
    ContentView()
}
