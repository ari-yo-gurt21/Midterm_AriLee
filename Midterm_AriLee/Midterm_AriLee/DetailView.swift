//
//  DetailView.swift
//  Midterm_AriLee
//
//  Created by Ari Lee on 10/21/25.
//


import SwiftUI

struct DetailView: View {
    // The selected player passed from the list
    let subject: Subject

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                // Player image
                Image(subject.imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(16)
                    .shadow(radius: 4)

                Divider().padding(.vertical, 4)

                
                Text(subject.name)
                    .font(.title)
                    .fontWeight(.bold)

                // Player description
                Text(subject.description)
                    .font(.body)
                    .fixedSize(horizontal: false, vertical: true)

                Spacer(minLength: 0)
            }
            .padding()
        }
        .navigationTitle(subject.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    DetailView(subject: Subject(
        id: "preview",
        name: "Curry",
        description: "Preview description for layout.",
        imageName: "Curry.png"
    ))
}
