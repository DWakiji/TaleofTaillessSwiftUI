import SwiftUI

struct Chapter1Model {
    var storyImage: String
    var storyText: String
}

struct Chapter1View: View {
    var backgroundColor = Color("BackgroundColor")
    var textColor = Color("TextColor")
    
    var storyBlock: [Chapter1Model] = [
            
            Chapter1Model(storyImage: "Damian2", storyText: "Once upon a time, in a dark, sun-dappled forest, there lived a squirrel named Damian. Damian was not your typical squirrel; he was tremendously self-centered. His lush, bushy tail was on display as he pranced around the treetops for the enjoyment of any nearby forest animal. He thought that the woodland's most magnificent feature was his tail. He was certain that he was the most daring and charming squirrel in the forest, and he used every opportunity to prove it."),
            
            Chapter1Model(storyImage: "Damian2", storyText: "They made their way past their safe haven and towards that patch in the forest. Their goal was very clear: to collect as many berries, nuts, and seeds as possible. Their trip was set in a lovely environment, as the vivid foliage of the forest canopy threw a dappled shade over the woodland floor. Their agile paws and sharp eyes scouring the terrain, they picked ripe berries from bushes, searched the ground for dropped nuts, and unearthed seeds from the rich soil."),
            
            Chapter1Model(storyImage: "Damian3", storyText: "Damian was hopping from branch to limb one bright, beautiful morning, bragging about his tail. Damian couldn't resist the opportunity to flaunt his tail. A group of squirrelletts came up to him giggling and fauning over his good looks, Damian your tail is so big and luxurious. Of course, it is! It's a tail that makes every squirrel envious. Nobody in this forest has a tail like mine! We are going to a opening patch deep in the forest near the edge of the foxes territory one of the girls said. The berries there are the juiciest and most delicious you'll ever taste. I'd love to show you, but it's a bit of a trek, and I'm worried about the foxes. Would you be willing to accompany us and keep an eye out for any danger? I'm sure a squirrel as courageous as you won't have any trouble."),
            
            Chapter1Model(storyImage: "Damian3", storyText: "An unexpected guest interrupted the squirrel party's peaceful gathering as they continued their foraging. A sly fox with acute instincts stepped out of the undergrowth and eyed the squirrel gathering with a menacing look. Damian bravely and quickly stood his ground, allowing the three ladies to quickly flee while he faced the fox with unshakable determination. He bravely attempted to divert the sly fox's attention, but as he ran away to join the others, the fox's keen fangs snapped, and the male squirrel lost his treasured tail in a devastating turn of events."),
            
            Chapter1Model(storyImage: "Exiled1", storyText: "As he returned to the squirrel colony, he expected comfort and support from his fellow squirrels. However, what he encountered was quite the opposite.To his shock and dismay, some of the squirrels within the colony began to ridicule and isolate him. They cruelly called him ugly and imperfect. In their eyes, without his glorious tail, Damian was no longer the handsome squirrel he once was. His appearance had been his defining feature, and with it gone, he was scorned."),
            
            Chapter1Model(storyImage: "Exiled2", storyText: "The leader of the colony, a stern and unkind squirrel named Reggie, made the decision to exclude Damian from their tight-knit community. He believed that the colony should only consist of the most beautiful and perfect squirrels, and he considered Damian's current appearance unacceptable.Heartbroken and humiliated, Damian was cast out from the only family he had ever known. He was left to fend for himself in the vast forest, where he felt isolated and alone.")
        ]
        
        
    
        
    @State var index: Int = 0
    @State var isDoneReadingChapter3 = false
    @State var isGoingBackToChapter2 = false
    
    
    var body: some View {
        
        if isDoneReadingChapter3 == true {
            Chapter2View()
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
                        Text("Chapter 1")
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
    
    
