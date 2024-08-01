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
        Button(action: {}, label:
                {
            Image(systemName: imageSystemName)
                .frame(width: 50, height: 50)
                .background(Color.black)
                .opacity(0.75)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
        })
        .padding([.leading, .trailing], 50)
        .padding(.bottom, 50)
        
        
    }
}
struct ContentView: View {
    var body: some View {
        ZStack {
            Image("mahsan")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: UIScreen.main.bounds.width)
            
            VStack{
                Image(systemName: "lock.fill")
                    .font(.largeTitle)
                    .padding(.top, 70)
                
                Text(Date(), style: .time)
                    .font(.system(size: 85, weight: .thin))
                
                Text(Date(), style: .date)
                    .font(.title2)
                    .offset(y: -2)
                Spacer()
                HStack{
                    
                    LockScreenButton(imageSystemName: "flashlight.off.fill")
                    Spacer()
                    LockScreenButton(imageSystemName: "camera.fill")
                }
//                Capsule()
//                    .fill(Color.white)
//                    .frame(width: 180, height: 5)
//                    .padding(.bottom, 8)
            }
            
            
        }
        .foregroundColor(.white)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
    
}

#Preview {
    ContentView()
}
