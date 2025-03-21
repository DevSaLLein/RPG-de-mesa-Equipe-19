//
//  ProfField.swift
//  RPGdeMesa
//
//  Created by iredefbmac_22 on 12/01/25.
//

import SwiftUI

struct ProfField: View {
    @Binding var value: Int
    @State private var textValue = ""
    var body: some View {
        HStack{
            TextField("", text: $textValue)
                .multilineTextAlignment(.center)
                .padding(16)
                .frame(width: 64, height: 64)
                .background(Color.white)
                .foregroundColor(.rpgBlue)
                .bold()
                .font(.largeTitle)
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .strokeBorder(Color.rpgStrokeChar)
                )
                .onChange(of: textValue) { newValue in
                                   if let intValue = Int(newValue) {
                                       value = intValue
                                   }
                }
                .onAppear {
                    if value != 0 {
                        textValue = String(value)
                    }
                }
            Text("Bônus de Proficiência")
                .fontWeight(.medium)
                .font(.title2)
        }
    }
}

#Preview {
    ProfField(value: .constant(0))
}
