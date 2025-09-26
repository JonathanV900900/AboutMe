//
//  HomeScreen.swift
//  AboutMe
//
//  Created by Jonathan Vineyard on 9/17/25.
//

import SwiftUI

struct HomeScreen: View {
    
    var body: some View {
        ScrollView {
            
            VStack {
                
                generalLifeSection
                hobbiesAndTraits
                achievements
                theHeroSeries
            }
        }
        .navigationTitle("Jonathan V.")
        .foregroundStyle(Color .black)
        .buttonStyle(.glass)
    }
    
    private var generalLifeSection: some View {
        
        NavigationLink {
            GeneralLifeScreen()
        } label: {
    
            ZStack {
                
                Image(.stGeorgePlaceholder)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 25, style: .circular))
                    .padding()
                
                VStack {
                    Spacer()
                    
                    HStack {
                        NavigationLink("General Life") {
                            GeneralLifeScreen()
                        }
                        .padding(30)
                        Spacer()
                    }
                }
            }
        }
        .buttonStyle(.plain)
        
    }
    
    private var hobbiesAndTraits: some View {
        
        HStack {
            
            ZStack {
                
                NavigationLink {
                    TraitsScreen()
                } label: {
                    Image(.traits)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                        .padding()
                        
                }
                .buttonStyle(.plain)
                
                VStack {
                    Spacer()
                    
                    HStack {
                        Spacer()
                        NavigationLink("Traits") {
                            TraitsScreen()
                        }
                        .padding(30)
                        
                    }
                }
            }
            
            ZStack {
                
                NavigationLink {
                    HobbiesScreen()
                } label: {
                    Image(.hobbies)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                        .padding()

                }
                .buttonStyle(.plain)
                
                VStack {
                    
                    Spacer()
                    
                    HStack {
                        NavigationLink("Hobbies") {
                            HobbiesScreen()
                        }
                        .padding(30)
                        
                        Spacer()
                    }
                }
            }
        }
    }
    
    private var achievements: some View {
        
        ZStack {
            
            NavigationLink {
                AchivementsScreen()
            } label: {
                Image(.achievements)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .padding()
            }
            .buttonStyle(.plain)
            
            VStack {
                Spacer()
                
                HStack {
                    NavigationLink("Achievements") {
                        AchivementsScreen()
                    }
                    .padding(30)
                    
                    Spacer()
                }
            }
        }
    }
    
    private var theHeroSeries: some View {
        
        ZStack {
            
            NavigationLink {
                HeroSeriesScreen()
            } label: {
                Image(.bookSeries)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .padding()
            }
            .buttonStyle(.plain)
            
            VStack {
                Spacer()
                
                HStack {
                    
                    NavigationLink("Discover the Series") {
                        HeroSeriesScreen()
                    }
                    .padding(30)
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        HomeScreen()
    }
}
