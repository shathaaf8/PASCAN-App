//
//  home.swift
//  ourappScna
//
//  Created by SAF on 18/06/1444 AH.
//

import SwiftUI

struct home: View {
    @State private var isMegicallyMoving = false
    @AppStorage("viewww") var showOnB = true
    @State private var scanText = ""
    var body: some View {
        ZStack{
        
            Color("Background")
                .ignoresSafeArea()
            ZStack{
                circleAnimation()
            }
           
                Text("Boarding Scanner")
                .accessibilityLabel(Text("Boarding Scanner"))
                .font(.title3)
                .fontWeight(.black)
               
                    .font(.custom("SF Pro", fixedSize: 25))
                    .padding(.bottom,700)
                    .padding(.leading,-170)
                    
            Text("Tap on the flight number ")
                .font(.custom("SF Pro", fixedSize: 17))
                .padding(.bottom,650)
                .padding(.leading,-155)
            
        
                        
            
            
            ZStack{
                Rectangle()
                    .frame(width: 350, height: 650)
                    .cornerRadius(30)
            }.overlay(
                ContentView()
            )
            .padding(.bottom,-70)
            
//            HStack{
//
//                Text("Scanning.....")
//                    .accessibilityLabel(Text("Scanning....."))
//                    .padding(.top,600)
//                    .padding(.leading,10)
//                    .font(.title3)
//                    .fontWeight(isMegicallyMoving ? .black : .black)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(isMegicallyMoving ? Color("Button2") : Color("Button"))
//                    .animation(.interpolatingSpring(stiffness: 100, damping: 100).repeatForever(autoreverses : true), value: isMegicallyMoving).onAppear{
//                        isMegicallyMoving.toggle()
//                    }
//            }.offset(x:0,y:50)
            
           
        }.fullScreenCover(isPresented: $showOnB){ OnBoarding(showOnB: $showOnB)}
    }
}

struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}
