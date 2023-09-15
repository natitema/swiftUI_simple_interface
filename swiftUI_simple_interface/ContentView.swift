//
//  ContentView.swift
//  swiftUI_simple_interface
//
//  Created by Artem Ryabichev on 09.09.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
            Color("background")
            Spacer()
            HStack {
                Image("avatar")
                    .resizable()
                    .frame(width: 120, height: 120)
                VStack(alignment: .leading) {
                    Text(email)
                        .foregroundColor(.white)
                        .padding(.bottom, 1)
                    Text(password)
                        .foregroundColor(.white)
                }
                .frame(maxHeight: 90, alignment: .top)
                Spacer()
            }
            .padding(.bottom, 420)
            .padding(.leading, 44)
            
            VStack {
                VStack {
                    TextField("Email", text: $email)
                        .padding()
                        .background(Color("textField"))
                        .cornerRadius(10)
                        .frame(height: 90)
                    
                    SecureField("Пароль", text: $password)
                        .padding()
                        .background(Color("textField"))
                        .cornerRadius(10)
                    
                    Button(action: {}) {
                        Text("Войти")
                            .foregroundColor(.white)
                            .padding(.vertical)
                            .padding(.horizontal, 136)
                            .background(Color("button"))
                            .cornerRadius(10)
                    }
                    .frame(height: 90)
                }
                .padding(22)
                .background(Color.white)
                .cornerRadius(20)
                .padding(.top, 130)
                .padding(.horizontal, 14)
                .padding(.bottom, 40)
                
                Text("Регистрация")
                    .foregroundColor(.white)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
