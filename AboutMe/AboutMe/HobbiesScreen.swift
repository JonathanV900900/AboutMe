//
//  HobbiesScreen.swift
//  AboutMe
//
//  Created by Jonathan Vineyard on 9/22/25.
//

import SwiftUI

struct HobbiesScreen: View {
    var body: some View {
        Form {
            
            createHobbySection(title: "Playing the Guitar", description: "Learning to play an instrument has helped me a lot. Playing the guitar is one of my favorite things to do, even though I'm far from being fluent with it.")
            
            createHobbySection(title: "Using 3D Graphic Software", description: "I've currently been working with 3D generative software -- more specifically, Blender -- for around two or three years. Currently, I'm creating characters from the writing club my family and I are starting.")
            
           
            
            Section {
                Text("Drawing and Illustrating")
                    .font(.title2)
                    .padding(5)
                Text("I started illustrating my books when I was nine years old, and ever since then, I couldn't stop drawing. Even now, scene and figure drawing are one of my favorite things to do, and they're my best way to wind down and focus on something artistic instead of technical.")
                    .padding(5)
                
                Image(.drawing)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .padding(5)
            }
            
            createHobbySection(title: "Novel Writing", description: "I began writing a little before I started drawing at nine years old. Ever since then, I've been learning through trial and error a lot about how to write a good novel. If you've ever heard about the Hero's Journey or the Character Arc, then you know what I'm talking about. The process is rewarding, gratifying, and extremely fun. To learn more about my series, Hero, check out my Books section!")
            
            createHobbySection(title: "Martial Arts", description: "I've been wanting to learn how to kickbox for a long time, and now, I'm finally starting to learn! Even though I'm still a beginner, I still enjoy learning techniques and staying as active as I can.")
            
            createHobbySection(title: "Coding with Swift", description: "The idea of creating apps and video games has been on my making list for a while. It feels great getting to dive really deep into all the concepts and methods of coding, and I can't wait to get started on projects I've always wanted to see on the screen.")
            
            
        }
        .navigationTitle("Hobbies")
        .navigationBarTitleDisplayMode(.inline)
        .scrollContentBackground(.hidden)
        .background {
            Image(.hobbies)
                .resizable()
                .ignoresSafeArea()
                .aspectRatio(contentMode: .fill)
                .blur(radius: 7)
        }
        
    }
    
    private func createHobbySection(title: String, description: String) -> some View {
        
        Section {
            Text(title)
                .font(.title2)
                .padding(5)
            Text(description)
                .padding(5)
        }
    }
    
    
    
    
}

#Preview {
    NavigationStack {
        HobbiesScreen()
    }
}
