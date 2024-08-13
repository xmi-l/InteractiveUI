//  ContentView.swift
//  InteractiveUI
//  Created by Scholar on 08/08/2024.

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    @State private var textTitle = "What is Your Name?"
    
    var body: some View {
        //1st View: Start Page, User Enters Name
        NavigationStack {
            
            
            
            VStack {
                Text(textTitle)
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundColor(Color.lightPink)
                
                TextField("", text: $name)
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .border(Color.gray, width : 1)
                
                    .padding()
                
                Button("Submit Name") {
                    print(textTitle = "Welcome, \(name)!")
                    
                }
                .font(.title)
                .buttonStyle(.borderedProminent)
                .tint(.lightPink)
                
                .padding()
                
                NavigationLink(destination: QuizPage()) {
                    Text("Start Quiz")
                }
                
                
                
                .padding()
                
                
                //2nd View, Start of Quiz Page
                
            }
            
        }
        
    }
}
        #Preview {
            ContentView()
        }
        
  
