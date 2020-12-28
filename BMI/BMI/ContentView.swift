//
//  ContentView.swift
//  BMI
//
//  Created by Khaled Al-Mushaileh on 12/28/20.
//

import SwiftUI


struct ContentView: View {
     
    var body: some View {
        NavigationView{
            NavigationLink(destination: BMIView()) {
                     
                  
            ZStack{
                VStack{
                Image("Header")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .ignoresSafeArea()
                    Spacer()
            VStack{
            
            Text("مرحبا بك بحاسبة BMI")
                .font(.largeTitle)
                .bold()
                .padding()
                .foregroundColor(.black)
                
                NavigationLink(
                    destination: BMIView(),
                    label:
                    {
                        
                        Text("اضغط")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                           .padding(.vertical,10)
                           .padding(.horizontal, 40)
                           .background(Color.blue)
                           .clipShape(Capsule())
                        
                    })
                Spacer()
            }.padding()
            
            
                    
            
                }
        }
        }.navigationBarTitle("Home")
           
        }
        

    }
    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
