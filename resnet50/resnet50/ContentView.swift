//
//  ContentView.swift
//  resnet50
//
//  Created by user on 2023/12/18.
//

import SwiftUI
import CoreML
import Vision

struct ContentView: View {
    @State var classificationLabel = ""
    
    //リクエストを作成
    func createClassificationRequest ()-> VNCoreMLRequest{
        do {
            let configuration = MLModelConfiguration()
            let model = try VNCoreMLModel(for: Resnet50(configuration: configuration).model )
            let request = VNCoreMLRequest(model: model, completionHandler: {request,error in
                    perfomClassification(request: request)
            })
            return request
        } catch {
            fatalError("modelが読み込めません")
        }
    }
    
    //画像分類のメソッド
    func perfomClassification(request: VNRequest) {
        guard let results = request.results else {
            return
        }
        let classification = results as! [VNClassificationObservation]
        classificationLabel = classification[0].identifier
        
    }
    
    //実際に画像を分類する
    func classifyImage(image : UIImage) {
        //入力された画像の方をUIImageからCIImageに変換
        guard let ciImage = CIImage(image:image) else {
            fatalError("CIImageに変換できません")
        }
        //handlerを作る
        let handler = VNImageRequestHandler(ciImage: ciImage)
        
        //requestを作成
        let classificationReaquest = createClassificationRequest()
        
        //handlerを実行する
        do {
            try handler.perform([classificationReaquest])
        } catch {
            fatalError("画像の分類に失敗しましたい")
        }
    }
    
    
    var body: some View {
        VStack {
            Text(classificationLabel)
                .font(.title)
                .padding()
            Image("cat1")
                .resizable()
                .scaledToFit()
                .frame(width:500,height:400)
            Button(action:{
                classifyImage(image: UIImage(named: "cat1")!)
            },label: {
                Text("この画像は何の画像？")
                    .padding()
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
