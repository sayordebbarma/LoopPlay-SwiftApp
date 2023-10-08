//
//  ContentView.swift
//  LoopPlay
//
//  Created by Sayor Debbarma on 02/10/23.
//

import SwiftUI
import AVKit

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
    @State var top = 0
    @State var data = [
        Video(id: 0, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path (forResource: "video1", ofType: "mp4")!)), replay: false),
        Video(id: 1, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path (forResource: "video2", ofType: "mp4")!)), replay: false),
        Video(id: 2, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path (forResource: "video3", ofType: "mp4")!)), replay: false),
        Video(id: 3, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path (forResource: "video4", ofType: "mp4")!)), replay: false),
        Video(id: 4, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path (forResource: "video5", ofType: "mp4")!)), replay: false),
        Video(id: 5, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path (forResource: "video6", ofType: "mp4")!)), replay: false)
    ]
    
    var body: some View {
        ZStack {
            PlayerScrollView(data: self.$data)
                    VStack {
                        HStack(spacing: 15){
                            Button {
                                self.top = 0
                                
                            } label: {
                                Text("Following")
                                    .foregroundColor((self.top == 0) ? .white : Color.white.opacity(0.45))
                                    .fontWeight((self.top == 0) ? .bold : .none)
                                    .padding(.vertical)
                            }
                            
                            Button {
                                self.top = 1
                                
                            } label: {
                                Text("For you")
                                    .foregroundColor((self.top == 1) ? .white : Color.white.opacity(0.45))
                                    .fontWeight((self.top == 1) ? .bold : .none)
                                    .padding(.vertical)
                            }
                        }
                        
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
                            Button {
                                self.index = 0
                                
                            }label: {
                                Image("home")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor((self.index == 0) ? .white : Color.white.opacity(0.35))
                                    .padding(.horizontal)
                            }
                            
                            Button{
                                self.index = 1
                                
                            } label: {
                                Image("search")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor((self.index == 1) ? .white : Color.white.opacity(0.35))
                                    .padding(.horizontal)
                                
                            }
                            
                            Button {
                                //self.index = 0
                                
                            } label: {
                                Image("upload")
                                    .resizable()
                                    .frame(width: 50, height: 35)
                                //.foregroundColor(self.index == 0 ? .white : Color.white.opacity(0.35))
                                    .padding(.horizontal)
                                
                            }
                            
                            Button {
                                self.index = 2
                                
                            } label: {
                                Image("comment")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor((self.index == 2) ? .white : Color.white.opacity(0.35))
                                    .padding(.horizontal)
                                
                            }
                            
                            Button {
                                self.index = 3
                                
                            } label: {
                                Image("profile")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor((self.index == 3) ? .white : Color.white.opacity(0.35))
                                //.cornerRadius(50)
                                    .padding(.horizontal)
                            }
                            
                        }
                        .padding(.horizontal)
                    }
//                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
//                    .padding(.bottom, (UIApplication.shared.windows.first?.safeAreaInsets.bottom)! + 5)
        }
        .background(Color.black)
        .edgesIgnoringSafeArea(.all) //comment
    }
}

class Host: UIHostingController<ContentView> {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

//videoPlayer View
struct videoView: View {
    @Binding var data: [Video]
    
    var body: some View {
    
        VStack(spacing: 0) {
            ForEach(self.data) { i in
                Player(player: i.player)
                // fullscreen view for paging...
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .offset(y: -5)
            }
        }
        .onAppear {
            self.data[0].player.play()
        }
    }
}

struct Player: UIViewControllerRepresentable {
    var player: AVPlayer
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let view = AVPlayerViewController()
        view.player = player
        view.showsPlaybackControls = false
        view.videoGravity = .resizeAspectFill
        return view
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        
    }
}

// video data representation
struct Video : Identifiable {
    var id: Int
    var player: AVPlayer
    var replay: Bool
}

struct PlayerScrollView: UIViewRepresentable {
    @Binding var data : [Video]
    
    func makeUIView(context: Context) -> UIScrollView {
        let view = UIScrollView()
        let childView = UIHostingController(rootView: videoView(data: self.$data))
        
        //for full covering the screening, we use height * count
        childView.view.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat(data.count))
        
        view.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat(data.count))
        
        view.addSubview(childView.view)
        view.showsVerticalScrollIndicator = false
        view.showsHorizontalScrollIndicator = false
        view.contentInsetAdjustmentBehavior = .never
        view.isPagingEnabled = true
        
        return view
    }
    
    func updateUIView(_ uiView: UIScrollView, context: Context) {
        //dynamically update height
        uiView.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat(data.count))
        
        for i in 0..<uiView.subviews.count {
            uiView.subviews[i].frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat(data.count))
        }
    }
    
    class Cordinator : NSObject, UIScrollViewDelegate {
        var parent : PlayerScrollView
        
        init(parent1 : PlayerScrollView) {
            parent = parent1
        }
        
        func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
            let index = Int(scrollView.contentOffset.y / UIScreen.main.bounds.height)
        }
    }
}
