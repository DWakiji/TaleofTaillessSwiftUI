import SwiftUI

struct Chapter3Model {
    var storyImage: String
    var storyText: String
}

struct Chapter3View: View {
    var backgroundColor = Color("BackgroundColor")
    var textColor = Color("TextColor")
    var storyBlock: [Chapter3Model] = [
        Chapter3Model(storyImage: "Damian", storyText: "For the first 10 days, Damian wakes up, cries and pouts about losing his tail and his friends."),
        
        Chapter3Model(storyImage: "JohnSalley", storyText: "On Day 11, Damian woke up to find a fox staring at him. But this fox wasn't mean, he was smiling and introduced himself as John Salley, the Vegan Fox. "),
        
        Chapter3Model(storyImage: "Mia", storyText: "Damian wants to talk to his best friend, Mia, to see if they can come up with a way for the squirrel clan to accept him again. He leaves her some acorns and then comes out from hiding. Damian and Mia plan to gather lots of acorns to present to the squirrel clan."),
        
        Chapter3Model(storyImage: "acornstree", storyText: "When Damian and Mia had trouble finding acorns, John Salley and the rest of his friends -- Delaney the Deer, Ellie the Eagle, Michael the Monkey, Bob the Badger and Ralph the Raccoon -- took them to a spot in the forest where the trees were filled with acorns."),
        
        Chapter3Model(storyImage: "manyacorns", storyText: "By the end of Damian's 40 days and 40 nights in the forest, he and Mia had collected many acorns and they were ready to present them to the squirrels.")
        
    ]
    @State var index: Int = 0
    @State var isDoneReadingChapter3 = false
    @State var isGoingBackToChapter2 = false
    
    var body: some View {
        
        if isDoneReadingChapter3 == true {
            Chapter4View()
        }
        
        else if isGoingBackToChapter2 == true {
            Chapter2View()
        }
        
        else {
            VStack{
                Rectangle()
                    .foregroundColor(backgroundColor)
                    .frame(width: 350, height: 40)
                    .overlay {
                        Text("Chapter 3")
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
                    .padding(.bottom)
                    .padding(.top)
                    .overlay {
                        Text(storyBlock[index].storyText)
                            .foregroundStyle(textColor)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
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
    Chapter3View()
}
