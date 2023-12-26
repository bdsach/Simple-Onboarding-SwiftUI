//
//  ContentView.swift
//  Onboarding
//
//  Created by Bandit Silachai on 13/12/23.
//


import SwiftUI

struct Screen: Identifiable {
    let id = UUID()
    let icon: String
    let color: Color
}

struct ContentView: View {
    
    let data: [Screen] = [
        Screen(icon: "figure.skiing.downhill", color: .yellow),
        Screen(icon: "figure.archery", color: .green),
        Screen(icon: "figure.baseball", color: .pink),
        Screen(icon: "figure.cooldown", color: .blue),
    ]
    
    var body: some View {
        TabView {
            ForEach(data, id: \.id) { item in
                DetailView(color: item.color, icon: item.icon)
            }
        }
        .ignoresSafeArea()
        .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

struct DetailView: View {
    
    var color: Color
    var icon: String
    
    var body: some View {
        VStack {
            Image(systemName: icon)
                .font(.system(size: 80))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(color.opacity(0.6))
        
    }
}

#Preview {
    ContentView()
}
