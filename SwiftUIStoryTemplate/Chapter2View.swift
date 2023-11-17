//
//  Chapter2View.swift
//  SwiftUIStoryTemplate
//
//  Created by Angelo Brown on 11/14/23.
//

import SwiftUI

struct Chapter2Model {
    var storyImage: String
    var storyText: String
}

struct Chapter2View: View {
    var backgroundColor = Color("BackgroundColor")
    var textColor = Color("TextColor")
    
    var storyBlock: [Chapter2Model] = [
            
            Chapter2Model(storyImage: "return", storyText: "Damian returns to his Squirrel village and the familiar surroundings of his palace, but instead of the warm welcome he expected, he is met with mocking and scorn from the squirrel residents. They cannot fathom Damian without his prized tail, and the shock of his transformation has stirred discontent among the populace. A growing demand to dethrone and exile Damian spreads like wildfire, as they believe a squirrel without a tail is unfit to be part of their community."),
            
            Chapter2Model(storyImage: "Exiled1", storyText: "The squirrel colony, once a place of camaraderie and warmth, has transformed into a hostile and unforgiving environment for Damian. He mourns not only the physical loss but also the loss of the acceptance and support he once enjoyed. As he grapples with the prospect of exile, he must confront the harsh reality that the very squirrels he considered his friends and neighbors now seek his removal, leaving him feeling isolated and rejected in his own community."),
            
            Chapter2Model(storyImage: "Exiled2", storyText: "Damian's journey takes an unexpected turn as he faces the harsh judgment of his own kind. The squirrel residents' demand for his exile forces him to contemplate his identity and what it truly means to be a squirrel. In Chapter 3, he embarks on a 40-day, 40-night venture into the vast Forest, seeking revenge against the foxes who had caused him such pain. Little does he know that the forest will hold a profound lesson about love and forgiveness, as he encounters a vegan pacifist fox who will change the course of his life forever."),
            
        ]
        
        
    
        
    @State var index: Int = 0
    @State var isDoneReadingChapter3 = false
    @State var isGoingBackToChapter2 = false
    
    
    var body: some View {
        
        if isDoneReadingChapter3 == true {
            Chapter3View()
        }
        
        else if isGoingBackToChapter2 == true {
            Chapter3View()
        }
        
        else {
            VStack{
                Rectangle()
                    .foregroundColor(backgroundColor)
                    .frame(width: 350, height: 40)
                    .overlay {
                        Text("Chapter 2")
                            .foregroundStyle(textColor)
                            .font(.largeTitle)
                            .bold()
                    }
                
                Rectangle()
                    .foregroundColor(backgroundColor)
                    .overlay {
                        Image(storyBlock[index].storyImage)
                            .resizable()
                            .scaledToFit()
                    }
                
                
                Rectangle()
                    .foregroundColor(backgroundColor)
//                    .padding(.bottom)
//                    .padding(.top)
                    .overlay {
                        ScrollView {
                            Text(storyBlock[index].storyText)
                                .foregroundStyle(textColor)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .padding()
                        }
                    }
                
                HStack {
                    Button(action: {
                        index -= 1
                        if index < 0 {
                            isGoingBackToChapter2 = true
                        }
                        
                    }, label: {
                        Rectangle()
                            
                            .frame(width: 150, height:50)
                            .cornerRadius(15.0)
                            .overlay {
                                Text("Go Back")
                                    .foregroundStyle(textColor)
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                
                            }
                        
                        Button(action: {
                            index += 1
                            
                            if index > storyBlock.count - 1 {
                                isDoneReadingChapter3 = true
                            }
                        }, label: {
                            Rectangle()
                                
                                .frame(width: 150, height:50)
                                .cornerRadius(15.0)
                                .overlay {
                                    Text("Next")
                                        .foregroundStyle(textColor)
                                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    
                                }
                            
                            
                        })
                        .padding(.leading, 40)
                    })
                    
                }

            }
            .background(backgroundColor) // Set the background color for the entire VStack
        }
    }
}




#Preview {
    Chapter1View()
    }
    
    
