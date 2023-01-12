//
//  OnBoarding.swift
//  ourappScna
//
//  Created by SAF on 18/06/1444 AH.
//

import SwiftUI


struct OnBoarding: View {
    @Environment(\.colorScheme) var colorSchem
    @State var ispresented = false
    @State var ispresented2 = false
    @Binding    var showOnB : Bool
    
    
    var body: some View {

        ZStack {
            Color("Background")
                .ignoresSafeArea(.all)
           
            VStack{
//
//
                Button {
                    showOnB.toggle()
                 
                }label: {
                    Text("SKIP")
                        .foregroundColor(Color("text"))
//                        .font(.system(size: 15.0))
                        .padding(.leading,30)
                        .padding(.top,20)
Spacer()
                
                }
                
                Image("Image")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 300 , height:450 )
                Spacer()
             
            }
           
            
            VStack{
                Text("SCAN")
                    .font(.system(size: 30,weight: .bold))
                    .foregroundColor(Color("text"))
                    .padding(.top, 160.0)
                
                Text("SCANNING BOAEDING PASSES")
                    .font(.system(size: 15,weight: .regular))
                    .foregroundColor(Color("text"))
                    .padding(.top, 10.0)
                
                
                
                //
                //                    Button(action: {}, label:{
                //                        Text("NEXT")
                //                            .frame(minWidth: .infinity)
                //                    })
                //                    .tint(.blue)
                //                    .buttonStyle(.bordered)
                //
            }
            VStack{
                Spacer()
                Button {
                    showOnB.toggle()
                 
                }label: {
                    Text("NEXT")
                    .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(.blue)
                                .contentShape(Rectangle())
                                .cornerRadius(10)
                                .frame(width: 250, height: 350)
                
                }
                
            }
        }
       
    }
}

//struct OnBoarding_Previews: PreviewProvider {
//    static var previews: some View {
//        OnBoarding()
//
//        }
//    }


