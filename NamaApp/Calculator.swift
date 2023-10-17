//
//  Calculator.swift
//  cal
//
//  Created by Rimah on 01/04/1445 AH.
//

import SwiftUI

struct Calculator: View {
    @State var badge1: String = ""
    @State var invest2: String = ""
    
    var calculation: String {
        
        //check if both fields have text else no need for message
        guard badge1.isEmpty == false,
              invest2.isEmpty == false else { return "" }
        
        //check if both are numbers else we need to print "Error"
        guard let badg = Double(badge1), let inv  = Double(invest2) else { return "Error" }
        
        // .2f% this will print two numbers after the dot
        let maths = (badg * inv) / inv / 100
        
        return String(format: "العائد الاستثماري: %.2f", maths)
        
    }
    var body: some View {
        
        
        Form {
            Text("الحاسبة الاستثمارية")
                .font(Font.custom("SFProARDisplay-Semibold", size: 33))
            Text("حاسبه آليه من خلالها تظهر لك النسبة للعائد المتوقع")
            
            
            Section {
                
                Text("نسبة العائد المتوقع:")
                    .font(Font.custom("SFProARDisplay-Semibold", size: 18))
                    .multilineTextAlignment(.trailing)
                
                
                TextField("numbers", text: $badge1)
                    .keyboardType(.decimalPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                
                Text(" مبلغ الاستثمار:")
                    .font(Font.custom("SFProARDisplay-Semibold", size: 18))
                    .multilineTextAlignment(.trailing)
                
                TextField("numbers", text: $invest2)
                    .keyboardType(.decimalPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            Section {
                
                Text(calculation)

            }
        }
        
    }
 }
    



#Preview {
    Calculator()
        .environment(\.layoutDirection, .rightToLeft)
}
