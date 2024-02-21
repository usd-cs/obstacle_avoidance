//
//  Obstacle Avoidance App
//  ContentView.swift
//

import SwiftUI

struct ContentView: View {
    @StateObject private var model = FrameHandler()
    @State private var showAlert = false
    
    var body: some View {
       
        // Text alert on screen.
        Text("Obstacle Avoidance")
            .onAppear{
                showAlert = true
            }
        
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Obstacle Avoidance"),
                message: Text("To optimize your experience, we recommend using open-air earbuds or bone conduction headphones. For the best visuals, ensure your phone’s back camera is facing away from your body. Press start to begin."),
                dismissButton:
                        .default(Text("Start"))
            )
        }
        
        //Access the camera and start obstacle avoidance mode
        FrameView(image: model.frame)
            .ignoresSafeArea()
    }
}




// For Preview in Xcode
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
