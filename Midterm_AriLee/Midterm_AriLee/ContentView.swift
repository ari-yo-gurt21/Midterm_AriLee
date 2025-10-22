//
//  ContentView.swift
//  Midterm_AriLee
//
//  Created by Ari Lee on 10/21/25.
//

import SwiftUI

    struct ContentView: View {
      
        private let subjects: [Subject] = Bundle.main.decode([Subject].self, from: "Data.json")

        var body: some View {
            NavigationStack {
                List(subjects) { subject in
                    NavigationLink(destination: DetailView(subject: subject)) {
                        HStack(spacing: 12) {
                            Image(subject.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .shadow(radius: 3)

                            Text(subject.name)
                                .font(.headline)
                                .foregroundColor(.blue)
                        }
                        .padding(.vertical, 6)
                    }
                }
                .navigationTitle("Ari's Top 6 Warriors Players List")
            }
        }
    }

    #Preview {
        ContentView()
    }
