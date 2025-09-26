//
//  TraitsScreen.swift
//  AboutMe
//
//  Created by Jonathan Vineyard on 9/22/25.
//

import SwiftUI

struct TraitsScreen: View {
    var body: some View {
        Form {
            
            Section {
                Text("Likes")
                    .font(.title2)
                    .bold()
                    .padding(5)
                Text("Eating a great meal.")
                Text("Completing something worthwhile.")
                Text("Minecraft.")
                Text("Cultures and art of the ancient Greeks and Romans.")
                Text("Trail mix.")
            }
            
            Section {
                Text("Dislikes")
                    .font(.title2)
                    .bold()
                    .padding(5)
                Text("Getting embarrassed.")
                Text("Wearing jackets or oversized clothing.")
                Text("Pistachios.")
                Text("Displeasing someone.")
                Text("Bitingly cold weather.")
            }
            
            Section {
                Text("Facts and Statements")
                    .font(.title2)
                    .bold()
                    .padding(5)
                Text("I cognitively think through video and audio.")
                Text("My brain sometimes composes music while I sleep.")
                Text("I seriously enjoy making people laugh, and tend to joke around occasionally.")
                Text("I'm not a reader -- I've never finished a single series, although I do have a favorite book: The Count of Monte Cristo.")
            }
            
        }
        .navigationTitle("Traits")
        .navigationBarTitleDisplayMode(.inline)
        .scrollContentBackground(.hidden)
        .background {
            Image(.traits)
                .resizable()
                .ignoresSafeArea()
                .aspectRatio(contentMode: .fill)
                .blur(radius: 7)
        }
    }
    
    
}

#Preview {
    NavigationStack {
        TraitsScreen()
    }
}
