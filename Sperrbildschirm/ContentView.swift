//
//  ContentView.swift
//  Sperrbildschirm
//
//  Created by Mahshad Jafari on 01.08.24.
//

import SwiftUI


struct LockScreenButton: View {
    
    let imageSystemName : String
    var body: some View {
        Image(systemName: imageSystemName)
            .frame(width: 50, height: 50)
            .background(Color.black)
            .opacity(0.75)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
        
    }
}
struct ContentView: View {
    var body: some View {
        ZStack {
            Color.gray
            VStack{
                Image(systemName: "lock.fill")
                    .font(.largeTitle)
                    .padding(.top, 70)
                
                Text("06:45")
                    .font(.system(size: 85, weight: .thin))
                
                Text("01.08.2024")
                    .font(.title2)
                    .offset(y: -2)
                Spacer()
                HStack{
                    LockScreenButton(imageSystemName: "flashlight.off.fill")
                    LockScreenButton(imageSystemName: "camera.fill")

                    
                }
                
            }
               
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ContentView()
}
