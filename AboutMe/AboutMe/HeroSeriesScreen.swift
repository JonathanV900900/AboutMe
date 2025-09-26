//
//  HeroSeriesScreen.swift
//  AboutMe
//
//  Created by Jonathan Vineyard on 9/22/25.
//

import SwiftUI

struct HeroSeriesScreen: View {
    var body: some View {
        Form {
            
            
            Section {
                Text("I'm creating a three-book series of graphic novels called Hero. It's designed to focus on morality, courage, inner confidence, and a single argument: that the greatest strength one could obtain, is the kind we have inside ourselves.")
                Text("For a more detailed approach to what I'm making, you can check out the sections below.")
            }
            
            createBookSection(title: "BOOK I", description1: "The book I'm currently editing and revising right now, I've designed this part to focus heavily on setting up the plot, and creating motives for the protagonist's inner journey.", description2: "Here I introduce a slave boy called Clayton, who really wants to become a hero. His dream is constantly weighted down by a fear of mistakes and his own imperfections -- setting him on a journey to find a relic that's known by legend to make whoever finds it perfect forever.")
            
            createBookSection(title: "BOOK II", description1: "I tried using Book II to escalate the Plot set up previously. It's main purpose is to show the reader how every protaganists' journey begins changing and progressing.", description2: "In this part, things get a little more intense as Clayton's search for the relic continues. Throughout Book II, he goes through various experiences that start showing him how to find power inside himself, instead of something external.")
            
            createBookSection(title: "BOOK III", description1: "The third book is as far as I've gotten to plan out so far. It uses the points and examples developed by Book I and II to create the story's final argument.", description2: "During the end, Clayton makes the final realization that what he has inside is indeed real. Using what he's learned, he battles the antagonist, who is under the relic's power. Clayton finally achieves heroism and rescues his friends, and with their help, the relic is destroyed.")
            
            
        }
        .navigationTitle("Discover the Series")
        .navigationBarTitleDisplayMode(.inline)
        .scrollContentBackground(.hidden)
        .background {
            Image(.bookSeries)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
                .blur(radius: 7)
        }
    }
    
    private func createBookSection(title: String, description1: String, description2: String) -> some View {
        
        Section {
            Text(title)
                .font(.title2)
                .bold()
                .padding()
                .glassEffect()
                
            Text(description1)
                .padding(5)
            Text(description2)
                .padding(5)
        }
    }
}

#Preview {
    NavigationStack {
        HeroSeriesScreen()
    }
    
}
