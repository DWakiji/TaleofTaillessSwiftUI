//
//  Chapter2View.swift
//  SwiftUIStoryTemplate
//
//  Created by Angelo Brown on 11/14/23.
//

import SwiftUI

struct Chapter2View: View {
    var body: some View {
    Color()
        ScrollView {
            VStack {
                Image("your_top_image") // Replace "your_top_image" with the name of your top image asset
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 200) // Adjust the height as needed
                
                Text("Chapter 2")
                    .font(.largeTitle)
                    .padding()

                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dui faucibus in ornare quam viverra orci sagittis eu. Rhoncus mattis rhoncus urna neque viverra. Tellus in metus vulputate eu scelerisque felis. Massa tincidunt nunc pulvinar sapien et. Ac turpis egestas sed tempus urna et pharetra pharetra. In nulla posuere sollicitudin aliquam ultrices. Habitasse platea dictumst vestibulum rhoncus. Nibh venenatis cras sed felis eget velit aliquet sagittis id. Id cursus metus aliquam eleifend mi in nulla posuere sollicitudin. Pellentesque diam volutpat commodo sed egestas egestas. Ornare suspendisse sed nisi lacus sed viverra tellus. Pellentesque elit ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at. Urna nunc id cursus metus aliquam. Dolor sit amet consectetur adipiscing elit pellentesque. Et ultrices neque ornare aenean. Sed vulputate odio ut enim blandit volutpat maecenas.")
                     

                    .font(.body)
                    .padding()

                Image("your_bottom_image") // Replace "your_bottom_image" with the name of your bottom image asset
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 200) // Adjust the height as needed
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
