//
//  ContentView.swift
//  Sean Card
//
//  Created by Sean Raftery on 3/24/20.
//  Copyright © 2020 Sean Raftery. All rights reserved.
//

import SwiftUI
import UIKit

struct ContentView: View {
    var body: some View {
        ZStack {
            
            Color(red:0.52 , green:0.57 , blue:0.62, opacity:0.75).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("logo").resizable().aspectRatio(contentMode: .fit).frame(width: 100, height: 100).position(CGPoint(x: 75, y:75))
        
            VStack {
                
                Image("headshot").resizable().aspectRatio(contentMode: .fit).frame(width: 150, height: 150).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).overlay(Circle().stroke(Color.white, lineWidth: 3))
                
                Text("Sean Raftery").font(Font.custom("SourceSansPro-Bold", size: 50)).bold().foregroundColor(.white).kerning(-1)
                
                Text("Maker. Builder. Storyteller.").foregroundColor(.white).font(Font.custom("Lato-Regular", size: 20))
                
                Divider()
                
                InfoView(text: "sean.p.raftery@gmail.com", imageName: "envelope.fill", linkItem: "sean.p.raftery@gmail.com")
                InfoView(text: "908 268-8697", imageName: "phone.fill", linkItem: "+1 (908)-268-8697")
                InfoView(text: "seanraftery.com", imageName: "person.crop.circle", linkItem: "http://www.seanraftery.com/")
                }.padding()
    	}
	}
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 11"))
    }
}


}
