//
//  DataScanner.swift
//  ourappScna
//
//  Created by SAF on 17/06/1444 AH.
//

import SwiftUI
import UIKit
import VisionKit

struct DataScanner: UIViewControllerRepresentable {
    
    @Binding var startScanning: Bool
    @Binding var scanText: String
    
    var contentType: UITextContentType?
    //let myDate = Date()
    @StateObject private var model = FrameHandler()
    
    
    
    let recognizedDataTypes:Set<DataScannerViewController.RecognizedDataType> = [
      
        .text(textContentType: .flightNumber)
           
    ]
    func makeUIViewController(context: Context) -> DataScannerViewController {
        
        
        let controller = DataScannerViewController(recognizedDataTypes: [
          
            .text(textContentType: .flightNumber)
        ],qualityLevel: .balanced, isHighlightingEnabled: true
        )
        
        
        controller.delegate = context.coordinator
        
        return controller
    }
    
    
    
    func updateUIViewController(_ uiViewController: DataScannerViewController, context: Context) {
        
        if startScanning {
            try? uiViewController.startScanning()
        } else {
            uiViewController.stopScanning()
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, DataScannerViewControllerDelegate {
        var parent: DataScanner
        
        init(_ parent: DataScanner) {
            self.parent = parent
        }
        // func isValidDate(scanText: String) -> Bool {
        // let dateFormatterGet = DateFormatter()
        // dateFormatterGet.dateFormat = "yyyy-MM-dd hh:mm:ss"
        // if let _ = dateFormatterGet.date(from: scanText) {
        //
        // return true
        // } else {
        // // Invalid date
        // return false
        // }
        //
        //
        // }
        func dataScanner(_ dataScanner: DataScannerViewController, didTapOn item: RecognizedItem) {
            
            switch item {
            case .text(let text):
                parent.scanText = text.transcript
          
            default: break
            }
        }
        
    }
}
