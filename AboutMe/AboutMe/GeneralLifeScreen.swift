//
//  GeneralLifeScreen.swift
//  AboutMe
//
//  Created by Jonathan Vineyard on 9/18/25.
//

import SwiftUI

struct GeneralLifeScreen: View {
    var body: some View {
        
        
        
        Form {
            createSection(title: "Location of Residence", description: "We have been living in St. George, UT, for almost three years. We moved from Northern Utah, so we love the heat down here!")
            
            createSection(title: "Education from Homeschool", description: "In my home, I try my hardest to teach myself a lot of great stuff -- whether they're life skills, or helpful information. I've been raised by a homeschooling family, so I'm familiar with teaching myself new concepts and learning from trial and error.")
            
            createSection(title: "Family and Friends", description: "I've been raised by a fantastic family, and two very smart parents who try their hardest to fuel our inner passions. I have a twin brother, Adam, a younger brother Marcus, and a sister Valerie.")
            
            createSection(title: "Where I was Raised", description: "I was born in Provo, UT, in 2007. For a very long time, we've lived up in Northern UT -- more specifically, around Park City and Heber Valley.")
            
            
            
            
        }
        .navigationTitle("General Life")
        .navigationBarTitleDisplayMode(.inline)
        .scrollContentBackground(.hidden)
        .background {
            Image(.stGeorgePlaceholder)
                .resizable()
                .ignoresSafeArea()
                .frame(width: 1500)
                .blur(radius: 7)
        }
    }
    
    private func createSection(title: String, description: String) -> some View {
        
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
        GeneralLifeScreen()
    }
}
