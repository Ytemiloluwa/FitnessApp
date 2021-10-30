//
//  HomeScreen.swift
//  FitnessApp
//
//  Created by Temi on 17/07/2021.
//

import SwiftUI

struct HomeScreen: View {
    
    var body: some View {
        
        ZStack {
            
            Color.white.edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack(spacing: -14){
                    
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 21, height: 21)
                        .foregroundColor(.black)
                    
                    Spacer()
                    Text("Workout")
                        .foregroundColor(.black)
                        .font(.system(size: 23, weight: Font.Weight.medium, design: Font.Design.default))
                    
                    Spacer()
                    
                }.padding(.horizontal)
                .padding(.vertical, 3)
                
                ZStack {
                    Image("Exercise")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    
                }
                
                HStack {
                    
                    ExtractedView()
                }
                
                PickerView()
                
                GeometryReader { geometry in
                    ZStack(alignment: .top) {
                        Color.black.edgesIgnoringSafeArea(.all)
                        ScrollView {
                            VStack {
                                Spacer(minLength: Constants.navigationBarHeight).frame(width: geometry.size.width, height: Constants.navigationBarHeight, alignment: .top)
                                
                                self.createCharts()
                                
                            }
                        }
                        
                    }
                }
                
                // Spacer()
            }
        }
    }
    func createCharts() -> some View {
        Group {
            
            // Exercise Chart
            
            BarChartView(
                title: "Excercise",
                progress: "15",
                goal: "25",
                total: "2 175 CAL",
                average: "56",
                unit: "THR",
                data: ActivityData.moveChartData,
                textColor: Color.moveTextColor,
                barStartColor: Color.moveBarStartColor,
                barEndColor: Color.moveBarEndColor
            )
            .padding([.bottom], 25)
            
            // WorkOut Chart
            BarChartView(
                title: "Workout",
                progress: "19",
                goal: "35",
                total: "8H 42M",
                average: "11",
                unit: "MIN",
                data: ActivityData.exerciseChartData,
                textColor: Color.exerciseTextColor,
                barStartColor: Color.exerciseBarStartColor,
                barEndColor: Color.exerciseBarEndColor
            )
            .padding([.bottom], 25)
            
            // Stand Chart
            
            BarChartView(title: "Cardio", progress: "29", goal: "14", total: "23M", average: "14", unit: "METs", data: ActivityData.moveChartData, textColor: Color.standTextColor, barStartColor: Color.standBarStartColor, barEndColor: Color.standBarEndColor)
                .padding([.bottom], 25)
        }
    }
    
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}


struct ExtractedView: View {
    var body: some View {
        HStack {
            Text("Activity")
                .foregroundColor(.black)
                .font(.system(size: 24, weight: Font.Weight.medium, design: Font.Design.default))
            
            Spacer()
            
            Button(action: {}, label: {
                HStack(alignment: .top, spacing: 2){
                    Text("More")
                        .font(.system(size: 24, weight: Font.Weight.medium, design: Font.Design.default))
                        .foregroundColor(.black)
                }
            })
        }.padding(.horizontal, 4)
    }
}


//class Host: UIHostingController<ContentView> {
//    
//    
//    override var preferredStatusBarStyle: UIStatusBarStyle {
//        
//        return.lightContent
//    }
//    
//    override var prefersHomeIndicatorAutoHidden: Bool {
//        
//        return true
//    }
//}
