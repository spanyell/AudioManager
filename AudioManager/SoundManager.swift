//
//  SoundManager.swift
//  AudioManager
//
//  Created by Dan Beers on 4/22/25.
//
/*
 Available Functions:
 - playMusicPlayer
 - stopMusicPlayer
 - playEffectPlayer1
 - stopEffectPlayer1
 Committ changes
 */

import AVKit
import Foundation

class SoundManager: ObservableObject
{
    @Published var musicPlayer: AVAudioPlayer?
    @Published var effectPlayer1: AVAudioPlayer?
    @Published var effectPlayer2: AVAudioPlayer?
    @Published var ambiencePlayer1: AVAudioPlayer?
    @Published var ambiencePlayer2: AVAudioPlayer?
    
    func playMusicPlayer(data: Data)
    {
        do
        {
            musicPlayer = try AVAudioPlayer(data: data, fileTypeHint: "mp3")
            musicPlayer?.play()
        }
        catch
        {
            print(error.localizedDescription)
        }
    }
    
    func stopMusicPlayer()
    {
        if musicPlayer != nil
        {
            musicPlayer!.stop()
        }
    }
    
    func playEffectPlayer1(data: Data)
    {
        do
        {
            effectPlayer1 = try AVAudioPlayer(data: data, fileTypeHint: "mp3")
            effectPlayer1?.play()
        }
        catch
        {
            print(error.localizedDescription)
        }
    }
    
    func stopEffectPlayer1()
    {
        if effectPlayer1 != nil
        {
            effectPlayer1!.stop()
        }
    }
    
}
