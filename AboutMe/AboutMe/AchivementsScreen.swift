//
//  AchievementsScreen.swift
//  AboutMe
//
//  Created by Jonathan Vineyard on 9/22/25.
//

import SwiftUI

struct AchivementsScreen: View {
    var body: some View {
        Form {
            
            createAchievementSection(title: "Traveled to Rome, Italy in 2022", description: "For me and my brother Adam's fifteenth birthday, we traveled with our father and uncle to Rome, Italy. Everything I learned there was probably equivelent to two years of schoolwork; it was a huge experience, and extremely fun!")
            
            createAchievementSection(title: "Traveled again to Athens, Rome, and Paris in 2024", description: "We traveled to Europe again, this time bringing along our sister, Valerie. Visiting Athens inspired a lot of content in my book series, and exploring Rome and Paris were equally amazing. We sailed the Aegean Sea in a ferry, visited the Colosseum, and climbed to the top of the Arc De Triomphe.")
            
            createAchievementSection(title: "Taken a Public Speech and Debate class", description: "I took a year of Speech and Debate. If you're not familiar with it, it's basically public speaking, and knowing how to argue and communicate professionally. It nearly killed me, but it taught me a lot of life skills!")
            
            createAchievementSection(title: "Finished writing my novel's first draft", description: "I finished writing the first book in my series, The Awakening, in August last month. I'm now set on editing and revising it before it's ready to be formatted, illustrated, and printed.")
            
            createAchievementSection(title: "Learned the basics of high-res character creation in Blender 4.5", description: "It took months of learning and failing, but I've now learned a steady workflow of polybuilding, sculpting, rigging, and styling a high-resolution figure in Blender 4. I can't wait to get started on real projects!")
            
            createAchievementSection(title: "Created a simple PVP combat game with Unreal Engine 5", description: "I was introduced to Unreal Engine last year, and have now created a PVP battle game with it that was finished in May -- a simple simulator that pits two players together, each player having a unique character that has different abilites. I introduced myself to Node-based Programming, game engines, asset creation, and a lot more.")
            
            
            
        }
        .navigationTitle("Achievements")
        .navigationBarTitleDisplayMode(.inline)
        .scrollContentBackground(.hidden)
        .background {
            Image(.achievements)
                .resizable()
                .ignoresSafeArea()
                .aspectRatio(contentMode: .fill)
                .blur(radius: 7)
        }
    }
    
    private func createAchievementSection(title: String, description: String) -> some View {
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
        AchivementsScreen()
    }
}
