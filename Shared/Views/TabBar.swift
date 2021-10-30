//
//  TabView.swift
//  FitnessApp
//
//  Created by Temi on 17/07/2021.
//

import SwiftUI

struct TabBar: View {
    
    @State private var tabselected = 0
    
    var body: some View {
        
        TabView(selection: $tabselected) {
            
                Text("Temi")
                .onTapGesture {
                    self.tabselected = 1
                }.tag(0)
                .tabItem {
                    
                    Image(systemName: "bookmark")
                    Text("Home")
                }
            
            Text("right tab")
                .onTapGesture {
                    self.tabselected = 2
                }.tag(1)
                .tabItem {
                    
                    Image(systemName: "waveform.path.ecg")
                    Text("Left")
            }
            Text("right tab")
                .onTapGesture {
                    self.tabselected = 3
                }.tag(1)
                .tabItem {
                    
                    Image(systemName: "l.circle.fill")
                    Text("Left")
            }
            
            Text("right tab")
                .onTapGesture {
                    self.tabselected = 4
                }.tag(1)
                .tabItem {
                    
                    Image(systemName: "l.circle.fill")
                    Text("Left")
            }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}

