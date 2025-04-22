//
//  ContentView.swift
//  AudioManager
//
//  Created by Dan Beers on 4/22/25.
//

import SwiftUI

struct ContentView: View {
    var soundManager = SoundManager()
    var body: some View {
        VStack {
            Text("Cellos")
                .onTapGesture {
                    soundManager.playMusicPlayer(data: Constants.CelloLick!.data)
                }
                .padding()
            Text("A5 on the piano")
                .onTapGesture {
                    soundManager.playEffectPlayer1(data: Constants.A5Tone!.data)
                }
                .padding()

            Text("Stop the Music!!")
                .onTapGesture {
                    soundManager.stopMusicPlayer()
                }
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
