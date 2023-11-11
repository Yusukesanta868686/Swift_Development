//
//  ImagePickerView.swift
//  MyCamera
//
//  Created by 平田佑亮 on 2023/11/08.
//

import SwiftUI

struct ImagePickerView: UIViewControllerRepresentable {
    //UIViewControllerRepresentableが表示されいるかを管理
    @Binding var isShowSheet: Bool
    
    //撮影した画像を格納する変数
    @Binding var captureImage: UIImage?
    
    //Coordinatorでコントローラのdelegateを管理
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate{
        let parent: ImagePickerView
        
        init(_ parent: ImagePickerView){
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let originalImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
                parent.captureImage = originalImage
            }
            
            parent.isShowSheet.toggle()
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            parent.isShowSheet.toggle()
        }
    }//Coordinatorここまで
    
    //Coordinatorを作成、SwiftUIによって自動的に呼び出し
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    //Viewを生成する時に実行
    func makeUIViewController(context: Context) -> some UIViewController {
        let myImagePickerConoroller = UIImagePickerController()
        
        myImagePickerConoroller.sourceType = .camera
        myImagePickerConoroller.delegate = context.coordinator
        
        return myImagePickerConoroller
    }
    
    //Viewが更新された時に実行
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        //処理なし
    }
}

