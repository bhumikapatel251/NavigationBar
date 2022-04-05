//
//  ContentView.swift
//  NavigationBar
//
//  Created by Bhumika Patel on 05/04/22.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack(spacing: 15) {
                        
                        ForEach(1...8,id: \.self){i in
                            
                            Image("p\(i)").resizable().frame(height: 250).cornerRadius(15)
                        }
                    }.padding()
                    
                }
                //left side display menulist
                GeometryReader {_ in
                    HStack {
                        Menu()
                            .offset(x: self.show ? 0 : -UIScreen.main.bounds.width)
                            .animation(.interactiveSpring(response: 0.6, dampingFraction: 0.6, blendDuration: 0.6),value: 0.6)
                        
                        Spacer()
                    }
                    
                }.background(Color.black.opacity(self.show ? 0.5 : 0).edgesIgnoringSafeArea(.bottom))
              
            }
            .navigationBarTitle("Home", displayMode: .inline)
            .navigationBarItems(leading:
            
               Button(action: {
                self.show.toggle()
            },
                      label: {
                if self.show{
                    Image(systemName: "arrow.left").font(.body).foregroundColor(.black)
                    
                }else {
                    Image("menu").renderingMode(.original)
                        .resizable()
                        .frame(width: 45, height: 45)
                    
                }
               
            })
            )
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Menu : View {
    var body: some View {
        VStack(spacing: 25) {
            Button(action: {
                
            }) {
                VStack(spacing: 8) {
                    Image("profile")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 55, height: 55)
                    Text("Profile")
                }
                
            }
            Button(action: {
                
            }) {
                VStack(spacing: 8) {
                    Image("chat")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 55, height: 55)
                    Text("Chat")
                }
                
            }
            Button(action: {
                
            }) {
                VStack(spacing: 8) {
                    Image("fav")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 55, height: 55)
                    Text("Favorite")
                }
                
            }
            Button(action: {
                
            }) {
                VStack(spacing: 8) {
                    Image("backup")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 55, height: 55)
                    Text("BackUp")
                }
                
            }
            Button(action: {
                
            }) {
                VStack(spacing: 8) {
                    Image("privacy")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 55, height: 55)
                    Text("Privacy")
                }
                
            }
            Spacer(minLength: 15)
        }.padding(35)
            .background(Color("Color").edgesIgnoringSafeArea(.bottom))
    }
}
