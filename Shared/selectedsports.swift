//
//  selectedsports.swift
//  FitnessApp
//
//  Created by Temi on 17/07/2021.
//

import SwiftUI

struct selectedsports: View {
    
     let columns = [GridItem(.adaptive(minimum: 180))]
    
    @State private var images = [Images(images: "Gym", name: "Gym")
                                 ,Images(images: "Exercise", name: "Exercise"), Images(images: "boxing", name: "Boxing"),Images(images: "Football", name: "Football"),Images(images: "Yoga", name: "Yoga"),Images(images: "Athletics", name: "Athletics"),Images(images: "Tennis", name: "Tennis"),Images(images: "baseball", name: "Baseball"), Images(images: "basketball", name: "Basketball"), Images(images: "Fitness", name: "Fitness")]

    var body: some View {
        
        VStack {
            
            HStack(spacing: 65){
               
                Image(systemName: "text.justify")
                    .font(.title2)
                    .padding()
                
                Text("Fitness+")
                    .font(.system(size: 30, weight: Font.Weight.bold, design: Font.Design.default))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    
                
                Spacer()
                
            }
            
            ScrollView {
                
                LazyVGrid(columns: columns, spacing: 20) {
                    
                    ForEach(images, id: \.self) { i in
                        
                        VStack {
                            
                            Image(i.images)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                            
                            Text(i.name)
                                .font(.system(size: 20, weight: Font.Weight.medium, design: Font.Design.default))
                                .foregroundColor(.blue)
                        }
                    }
                    .padding(.horizontal, 4)
                    
                }
                
            }
        }
    }
}
struct selectedsports_Previews: PreviewProvider {
    static var previews: some View {
        selectedsports()
    }
}


