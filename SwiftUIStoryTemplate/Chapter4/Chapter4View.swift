import SwiftUI

struct Chapter4Model {
    var storyImage: String
    var storyText: String
}

struct Chapter4View: View {
    var backgroundColor = Color("BackgroundColor")
    var textColor = Color("TextColor")
    
    var storyBlock: [Chapter4Model] = [
            
            Chapter4Model(storyImage: "return2", storyText: "Damian returns from his transformative journey in the forest, carrying with him newfound wisdom about beauty and forgiveness. He has come to understand that the true beauty of a squirrel lies in the content of its character, not the presence of its tail. This revelation has reshaped his perspective on life and self-worth, leading him to believe that his worth as a squirrel extends beyond physical attributes."),
            
            Chapter4Model(storyImage: "return3", storyText: "As he reenters the Squirrel village, Damian shares his newfound wisdom with the squirrel residents who had once mocked and scorned him. He emphasizes that true beauty is found within, in acts of kindness, compassion, and forgiveness. Many squirrels begin to reconsider their judgment of him and realize the value of his words."),
            
            Chapter4Model(storyImage: "return4", storyText: "Damian's transformation doesn't stop at challenging their perception of beauty. He also imparts a valuable lesson about the nature of foxes. Through his encounter with the vegan pacifist fox in the forest, Damian has learned that not all foxes are inherently evil. This newfound perspective challenges the squirrel residents to rethink their prejudices and stereotypes."),
            
            Chapter4Model(storyImage: "return5", storyText: "An unexpected guest interrupted the squirrel party's peaceful gathering as they continued their foraging. A sly fox with acute instincts stepped out of the undergrowth and eyed the squirrel gathering with a menacing look. Damian bravely and quickly stood his ground, allowing the three ladies to quickly flee while he faced the fox with unshakable determination. He bravely attempted to divert the sly fox's attention, but as he ran away to join the others, the fox's keen fangs snapped, and the male squirrel lost his treasured tail in a devastating turn of events."),
            
            Chapter4Model(storyImage: "return5", storyText: "As time passes, the Squirrel village begins to embrace Damian's teachings, fostering a more inclusive and understanding community. His journey, marked by self-discovery and enlightenment, has not only changed his life but has also brought about a positive transformation in the hearts and minds of those around him."),
            
            Chapter4Model(storyImage: "thend", storyText: "The End")
        ]
        
        
    
        
    @State var index: Int = 0
    @State var isDoneReadingChapter3 = false
    @State var isGoingBackToChapter2 = false
    
    
    var body: some View {
        
        if isDoneReadingChapter3 == true {
            Chapter4View()
        }
        
        else if isGoingBackToChapter2 == true {
            Chapter4View()
        }
        
        else {
            VStack{
                Rectangle()
                    .foregroundColor(backgroundColor)
                    .frame(width: 350, height: 40)
                    .overlay {
                        Text("Chapter 4")
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
    
    
