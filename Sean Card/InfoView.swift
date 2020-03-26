//
//  InfoView.swift
//  Sean Card
//
//  Created by Sean Raftery on 3/25/20.
//  Copyright © 2020 Sean Raftery. All rights reserved.
//

import SwiftUI
import UIKit
        
        struct InfoView: View {
            @State private var showShareSheet = false
            
            let text: String
            let imageName: String
            let linkItem: String
            
            var body: some View {
                    ZStack  {
                        RoundedRectangle(cornerRadius: 25).fill(Color.white).frame(height: 45)
                        HStack {
                            Image(systemName: imageName)
                        Button(action: {
                            self.showShareSheet = true
                        }) {
                            Text(text).bold().font(Font.custom("Lato-Regular", size: 20)).foregroundColor(.black)
                        }
                        .padding()
                        }
                    }
                    .sheet(isPresented: $showShareSheet) {
                        ShareSheet(activityItems: [self.linkItem])
                    }
                }
            }
            

