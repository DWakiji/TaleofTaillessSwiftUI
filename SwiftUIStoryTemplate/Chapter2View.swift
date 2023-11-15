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
        ScrollView {
            VStack {
                // Top image
                Image("your_top_image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 200)
                
                // Text content inside a box with a ScrollView
                VStack {
                    Text("Chapter 2")
                        .font(.largeTitle)
                        .padding()
                    
                    ZStack {
                        Color.white // Background color of the box
                            .cornerRadius(10) // Rounded corners for the box
                            .shadow(radius: 5) // Add shadow for depth
                        
                        ScrollView {
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dui faucibus in ornare quam viverra orci sagittis eu. Rhoncus mattis rhoncus urna neque viverra. Tellus in metus vulputate eu scelerisque felis. Massa tincidunt nunc pulvinar sapien et. Ac turpis egestas sed tempus urna et pharetra pharetra. In nulla posuere sollicitudin aliquam ultrices. Habitasse platea dictumst vestibulum rhoncus. Nibh venenatis cras sed felis eget velit aliquet sagittis id. Id cursus metus aliquam eleifend mi in nulla posuere sollicitudin. Pellentesque diam volutpat commodo sed egestas egestas. Ornare suspendisse sed nisi lacus sed viverra tellus. Pellentesque elit ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at. Urna nunc id cursus metus aliquam. Dolor sit amet consectetur adipiscing elit pellentesque. Et ultrices neque ornare aenean. Sed vulputate odio ut enim blandit volutpat maecenas.")
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
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                        .font(.body)
                        .padding()
                } else if selectedOption == .option2 {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                        .font(.body)
                        .padding()
                }
                
                // Bottom image
                Image("your_bottom_image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 200)
            }
        }
        .navigationBarTitle("Chapter 2", displayMode: .inline)
    }
}

struct Chapter2View_Previews: PreviewProvider {
    static var previews: some View {
        Chapter2View()
    }
}

