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
import SwiftUI

protocol SoundControl {
    func playMusicPlayer(data: Data)
    func stopMusicPlayer()
    func playEffectPlayer1(data: Data)
    func stopEffectPlayer1()
}

@Observable
class SoundManager: SoundControl
{
    var musicPlayer: AVAudioPlayer?
    var effectPlayer1: AVAudioPlayer?
    var effectPlayer2: AVAudioPlayer?
    var ambiencePlayer1: AVAudioPlayer?
    var ambiencePlayer2: AVAudioPlayer?
    
    func playMusicPlayer(data: Data)
    {
        do
        {
            musicPlayer = retrieveAVAudioPlayer(data: data)
            musicPlayer?.play()
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
            effectPlayer1 = retrieveAVAudioPlayer(data: data)
            effectPlayer1?.play()
        }
    }
    
    func stopEffectPlayer1()
    {
        if effectPlayer1 != nil
        {
            effectPlayer1!.stop()
        }
    }
    
    func retrieveAVAudioPlayer(data: Data) -> AVAudioPlayer? {
        do
        {
            return try AVAudioPlayer(data: data, fileTypeHint: "mp3")
            
        }
        catch
        {
            print(error.localizedDescription)
            return nil
        }
    }
}
