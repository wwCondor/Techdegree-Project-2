//
//  PlaySounds.swift
//  EnhanceQuizStarter
//
//  Created by Wouter Willebrands on 23/12/2018.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation
import UIKit
import AudioToolbox

// this deals with the sounds for the game
class PlaySounds {
    
    static var gameSound: SystemSoundID = 0
    
    static func loadGameStartSound() {
        let path = Bundle.main.path(forResource: "GameSound", ofType: "wav")
        let soundUrl = URL(fileURLWithPath: path!)
        AudioServicesCreateSystemSoundID(soundUrl as CFURL, &gameSound)
    }
    
    static func playGameStartSound() {
        AudioServicesPlaySystemSound(gameSound)
    }
    
}
