//
//  ContentView.swift
//  LoopPlay
//
//  Created by Sayor Debbarma on 02/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

#Preview {
    ContentView()
}

struct Home: View {
    @State var index = 0
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    VStack(spacing: 24) {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image("pic")
                                .resizable()
                                .frame(width: 55, height: 55)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        })
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            VStack(spacing: 6) {
                                Image(systemName: "suit.heart.fill")
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.white)
                                Text("2k")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                            }
                        })
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            VStack(spacing: 6) {
                                Image(systemName: "message.fill")
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.white)
                                Text("200")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                            }
                        })
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            VStack(spacing: 6) {
                                Image(systemName: "arrowshape.turn.up.right.fill")
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.white)
                                Text("55")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                            }
                        })
                        
                        
                    }
                    .padding(.bottom, 55)
                    .padding(.trailing)
                }
                HStack {
                    Button(action: {
                        self.index = 0
                        
                    }, label: {
                        Image("home")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(self.index == 0 ? .white : Color.white.opacity(0.35))
                            .padding(.horizontal)
                        
                    })
                    Button(action: {
                        self.index = 1
                        
                    }, label: {
                        Image("search")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(self.index == 1 ? .white : Color.white.opacity(0.35))
                            .padding(.horizontal)
                        
                    })
                    Button(action: {
                        //self.index = 0
                        
                    }, label: {
                        Image("upload")
                            .resizable()
                            .frame(width: 50, height: 35)
                            //.foregroundColor(self.index == 0 ? .white : Color.white.opacity(0.35))
                            .padding(.horizontal)
                        
                    })
                    Button(action: {
                        self.index = 2
                        
                    }, label: {
                        Image("comment")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(self.index == 2 ? .white : Color.white.opacity(0.35))
                            .padding(.horizontal)
                        
                    })
                    Button(action: {
                        self.index = 3
                        
                    }, label: {
                        Image("profile")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(self.index == 3 ? .white : Color.white.opacity(0.35))
                            .cornerRadius(50)
                            .padding(.horizontal)
                        
                    })
                }
                .padding(.horizontal)
            }
        }
        .background(Color.black)
//        .edgesIgnoringSafeArea(.all)
    }
}
