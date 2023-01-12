//
//  circleAnimation.swift
//  ourappScna
//
//  Created by SAF on 19/06/1444 AH.
//

import SwiftUI

struct circleAnimation: View {
    @Environment(\.colorScheme) var colorScheme
    @State var scale : CGFloat = 1
//    let rouge = Color(red: 0.0, green: 0.05, blue: 0.14)
    var body: some View {
        
        ZStack {
            ForEach (1...50, id:\.self) { _ in
                Circle ()
                    .foregroundColor(Color (red: 0.2,
                                            green: 0.2,
                                            blue: .random(in: 0.3...1)
                                           ))
                
                
                    .blendMode(.colorDodge) // The bottom circle is lightened by an amount determined by the top layer
                    .animation (Animation.spring (dampingFraction: 0.5)
                        .repeatForever()
                        .speed (.random(in: 0.05...0.4))
                        .delay(.random (in: 0...1)), value: scale
                    )
                
                    .scaleEffect(self.scale * .random(in: 0.1...3))
                    .frame(width: .random(in: 1...40),
                           height: CGFloat.random (in:20...30),
                           alignment: .center)
                    .position(CGPoint(x: .random(in: 0...1150),
                                      y: .random (in:50...1000)))
            }
        }
        .onAppear {
            self.scale = 1.2 // default circle scale
        }
        
        .drawingGroup(opaque: false, colorMode: .linear)
        .background(
            Rectangle()
                .foregroundColor(Color("Background")))
        .ignoresSafeArea()
    }
    
    struct circleAnimation_Previews: PreviewProvider {
        static var previews: some View {
            circleAnimation()
        }
    }
}
