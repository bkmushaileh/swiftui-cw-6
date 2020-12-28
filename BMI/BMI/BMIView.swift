//
//  BMIView.swift
//  BMI
//
//  Created by Khaled Al-Mushaileh on 12/28/20.
//

import SwiftUI

struct BMIView: View {

    @State var height: String = ""
    @State var weight: String = ""
    @State var bmi: String = ""
    @State var bmiS: String = ""
    @State var bmiIM: String = ""



    var body: some View {
        
        NavigationView{
         
            
                  
                       
        VStack{
           
            Image("bmi")
                .resizable()
                .scaledToFit()
                .frame(width: 100,height:100)
                .padding()
                
                
                
            
            Text("حياك انصدم شوي")
                .font(.largeTitle)
                .bold()
            TextField("الطول بالمتر", text: $height).multilineTextAlignment(.trailing).textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("الوزن بالكيلو جرام", text: $weight)
                .multilineTextAlignment(.trailing).textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("احسب"){
              
                let h = Double(height) ?? 1
                let w = Double(weight) ?? 1
                bmi = String(w / (h * h))
                let b = Double(bmi) ?? 1
                if b <= 20 {
                    bmiS = "ضعييييييف"
                    bmiIM = "snake"
                } else if b <= 25 {
                    bmiS = "جيد جيد جيد"
                    bmiIM = "flamingo"

                } else
                {
                    bmiS = "عكس الضعيييف"
                    bmiIM = "duck"

                }
               
            }
            .foregroundColor(.white)
            .font(.system(size: 25))
           .padding(.vertical,10)
           .padding(.horizontal, 40)
           .background(Color.blue)
           .clipShape(Capsule())
            Text(bmi)
            Text(bmiS)
            Image(bmiIM)
                .resizable()
                .scaledToFit()
                .frame(width: 100,height:100)
                .padding()
        } 
        .padding()
         
        }
    }
        
}

struct BMIView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BMIView()
                .previewDevice("iPhone 12")
        }
    }
}
