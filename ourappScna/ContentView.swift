//
//  ContentView.swift
//  ourappScna
//
//  Created by SAF on 17/06/1444 AH.
//

import SwiftUI
import VisionKit

struct ContentView: View {
    @StateObject private var model = FrameHandler()
    @State private var SacnneDdate = ""
    let string1 = NSLocalizedString("welcome", comment: "")
    @State private var startScanning = false
    @State private var scanText = ""
    @State private var scanText2 = ""
    
    
    var body: some View {
        
        VStack(spacing: 10) {
            
            DataScanner(startScanning: $startScanning, scanText: $scanText )
            
            
            Spacer()
            
Text(scanText)
                .font(.title)
                .foregroundColor(Color("Button"))
              
            
       
          
           
                            
            
//                .ignoresSafeArea()
            
            
        }.cornerRadius(30)
        .task {
            if DataScannerViewController.isSupported && DataScannerViewController.isAvailable {
                startScanning.toggle()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
