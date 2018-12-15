//
//  SoundActivation.swift
//  EnhanceQuizStarter
//
//  Created by Wouter Willebrands on 14/12/2018.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import UIKit
import AudioToolbox
import Foundation

class SoundsForGame {
    
    var gameSound: SystemSoundID = 0
    
    func loadGameStartSound() {
        let path = Bundle.main.path(forResource: "GameSound", ofType: "wav")
        let soundUrl = URL(fileURLWithPath: path!)
        AudioServicesCreateSystemSoundID(soundUrl as CFURL, &gameSound)
    }
    
    func playGameStartSound() {
        AudioServicesPlaySystemSound(gameSound)
    }
}


// this seems not to work after moving it from the ViewController
// into this one
