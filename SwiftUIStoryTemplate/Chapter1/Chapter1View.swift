import SwiftUI

//Add Chapter picture(square)*
//Add chapter one as a tittle *
//Navagation bar
//Tab bar with pages and when you click on it the pages show
//Back Button
//Done button
//Next Button


//add photo
struct Chapter1View: View {
    var body: some View {
        VStack{
            
            //Tittle
            Text("Chapter One")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            //Photo
            Image("Damian")
                .resizable()
                .frame(width: 300, height: 200)
                .scaledToFill()
        }
    }
}

//add tab bar
struct TabBarStuff {
    TabView

#Preview {
    Chapter1View()
    }
    
    
