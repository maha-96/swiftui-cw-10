//
//  ContentView.swift
//  ex 10 test
//
//  Created by bibi on 04/01/2021.
//

import SwiftUI
enum mood {
    case happy, sad , angry , fine
}




struct ContentView: View {
    
    @State var currwntmood = ""
    var body: some View {

        NavigationView{
            VStack{
       Text("i feel \(currwntmood)")
                
            
                    
                    HStack{
                        Button(action: {
                          currwntmood =  getstatus(status: .happy)
                            
                        }, label: {
                            Text("😄")
                        })
                        
                        Button(action: {
                            currwntmood = getstatus(status: .sad)
                        }, label: {
                            Text("☹️")
                            
                        })
                        
                        
                        Button(action: {
                            currwntmood =  getstatus(status: .angry)

                        }, label: {
                            Text("😠")
                            
                        })
                        
                        Button(action: {
                            currwntmood =  getstatus(status: .fine)
                        }, label: {
                            Text("😇")
                            
                        })
                        
                        
                    }
                
            }
            .navigationBarTitle("Mood Check")
        }

    }
    func getstatus (status : mood)-> String{
        switch status {
        case .happy:
            return "happy"
        case .sad:
            return "sad"
        case .angry:
            return "angry"
        case .fine:
                return "fine"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
