//
//  Chapter2View.swift
//  SwiftUIStoryTemplate
//
//  Created by Angelo Brown on 11/14/23.
//

import SwiftUI

struct Chapter2View: View {
    // Define options
    enum Option: String, CaseIterable {
        case option1 = "Option 1"
        case option2 = "Option 2"
    }
    
    @State private var selectedOption = Option.option1
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    // Text content inside a box with a ScrollView
                    VStack {
                        Text("Chapter 2") // Title
                            .font(.largeTitle)
                            .padding()
                        
                        // Styled box with scrollable text content
                        ZStack {
                            Color.white // Background color of the box
                                .cornerRadius(10) // Rounded corners for the box
                                .shadow(radius: 5) // Add shadow for depth
                            
                            ScrollView {
                                Text("Once upon a time in a faraway kingdom, there lived a wise and kind king named King Damian. King Damian was loved and respected by his subjects for his wisdom and fairness in ruling the kingdom.")
                                    .font(.body)
                                    .padding()
                            }
                        }
                        .padding(10) // Padding within the box
                    }
                    
                    // Option selector buttons
                    Picker("Choose an option", selection: $selectedOption) {
                        ForEach(Option.allCases, id: \.self) { option in
                            Text(option.rawValue)
                                .tag(option)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                    
                    // Display content based on the selected option
                    if selectedOption == .option1 {
                        // Content for Option 1 goes here
                        VisualStoryOption1()
                    } else if selectedOption == .option2 {
                        // Content for Option 2 goes here
                        VisualStoryOption2()
                    }
                    
                    // Top image
                    Image("your_top_image")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 200)
                    
                    // Button to navigate to Chapter 3
                    NavigationLink(destination: Chapter3View()) {
                        Text("Go to Chapter 3") // Button to go to Chapter 3
                            .font(.headline)
                            .padding()
                    }
                    
                    // Bottom image
                    Image("your_bottom_image")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 200)
                }
                .navigationBarTitle("Chapter 2", displayMode: .inline) // Navigation title
            }
            .navigationBarTitle("Chapter 2", displayMode: .inline) // Navigation title (duplicate, can be removed)
        }
    }
}

struct VisualStoryOption1: View {
    var body: some View {
        // Visual elements for Option 1
        Text("One day, a challenge arose in the kingdom as a mysterious creature stole the precious gem from the royal treasury. King Damian decided to embark on a quest to recover the gem and restore peace to the kingdom.")
            .font(.body)
            .padding()
    }
}

struct VisualStoryOption2: View {
    var body: some View {
        // Visual elements for Option 2
        Text("On that fateful day, King Damian faced a difficult decision. The kingdom was in turmoil, and some villagers questioned his leadership. He had to choose between listening to their demands for change or remaining true to his principles.")
            .font(.body)
            .padding()
    }
}

struct Chapter2View_Previews: PreviewProvider {
    static var previews: some View {
        Chapter2View()
    }
}
