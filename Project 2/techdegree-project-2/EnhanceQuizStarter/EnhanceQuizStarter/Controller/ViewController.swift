//
//  ViewController.swift
//  EnhanceQuizStarter
//
//  Created by Pasan Premaratne on 3/12/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import UIKit
import GameKit
import AudioToolbox

class ViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var questionField: UILabel!
    @IBOutlet weak var answerButtonOne: UIButton!
    @IBOutlet weak var answerButtonTwo: UIButton!
    @IBOutlet weak var answerButtonThree: UIButton!
    @IBOutlet weak var answerButtonFour: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // SoundActivation.loadGameStartSound() Find out how to link this to source map
        // SoundActivation.playGameStartSound()
        displayQuestion()
    }
    
    // MARK: - Helpers
    
    // indexOfSelectedQuestion refer to?
    
    func displayQuestion() {
        indexOfSelectedQuestion = GKRandomSource.sharedRandom().nextInt(upperBound: TriviaQuestions.count)
        let questionDictionary = TriviaQuestions[indexOfSelectedQuestion]
        questionField.text = questionDictionary["Question"]
        playAgainButton.isHidden = true
    }
    
    func displayScore() {
        // Hides the answer buttons when score is displayed
        answerButtonOne.isHidden = true
        answerButtonTwo.isHidden = true
        answerButtonThree.isHidden = true
        answerButtonFour.isHidden = true
        
        // Display play again button
        playAgainButton.isHidden = false
        
        questionField.text = "Way to go!\nYou got \(correctQuestions) out of \(questionsPerRound) correct!"
    }
    
    
    
    
    
    
    
    // MARK: - Actions
    
    @IBAction func retrieveAnswer(_ sender: UIButton) {
        // this needs work, getting some errors after changing reference
        switch sender {
        case answerButtonOne: questionField.text = QuizMaster.checkTheAnswer(buttonPressed: 1)
        case answerButtonTwo: questionField.text = QuizMaster.checkTheAnswer(buttonPressed: 2)
        case answerButtonThree: questionField.text = QuizMaster.checkTheAnswer(buttonPressed: 3)
        case answerButtonFour: questionField.text = QuizMaster.checkTheAnswer(buttonPressed: 4)
        default: break
        }
        loadNextRound(delay: 2)
    }
    
    
    @IBAction func playAgain(_ sender: UIButton) {
        // Show the answer buttons
        answerButtonOne.isHidden = false
        answerButtonTwo.isHidden = false
        answerButtonThree.isHidden = false
        answerButtonFour.isHidden = false
        
        nextRound()
    }
    
    
}

