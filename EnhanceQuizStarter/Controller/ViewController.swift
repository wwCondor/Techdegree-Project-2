//
//  ViewController.swift
//  EnhanceQuizStarter
//
//  Created by Pasan Premaratne on 3/12/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import UIKit

@IBDesignable extension UIButton {
    
    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}

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
        
        PlaySounds.loadGameStartSound()
        PlaySounds.playGameStartSound()
        displayQuestionsAndAnswers()
    }
    
    
    
    
    let quizMaster = QuizMaster()
    
    // this function displays the questions and answers
    // and hides the unsused buttons
    func displayQuestionsAndAnswers() {
        let questionDataFromQuiz = quizMaster.provideQuestion()
        questionField.text = questionDataFromQuiz.question
        answerButtonOne.setTitle(questionDataFromQuiz.answerOne, for: .normal)
        answerButtonTwo.setTitle(questionDataFromQuiz.answerTwo, for: .normal)
        answerButtonThree.setTitle(questionDataFromQuiz.answerThree, for: .normal)
        answerButtonFour.setTitle(questionDataFromQuiz.answerFour, for: .normal)
        // When question and answers are shown 'play again' button is hidden
        playAgainButton.isHidden = true
        // When question is displayed answerButtons are visible
        answerButtonOne.isHidden = false
        answerButtonTwo.isHidden = false
        answerButtonThree.isHidden = false
        answerButtonFour.isHidden = false
    }
    
    // cannot make this access the amountOfAnswers value inside the TriviaQuestions struct
    /*
    // this function hides the buttons that are not needed
    func hideExtraAnswerButtons() {
        let numberOfAnswers = quizMaster.retrieveNumberOfAnswers()
        if numberOfAnswers == 3 {
            answerButtonOne.isHidden = false
            answerButtonTwo.isHidden = false
            answerButtonThree.isHidden = false
            answerButtonFour.isHidden = true
        } else if numberOfAnswers == 2 {
            answerButtonOne.isHidden = false
            answerButtonTwo.isHidden = false
            answerButtonThree.isHidden = true
            answerButtonFour.isHidden = true
        } else {
            answerButtonOne.isHidden = false
            answerButtonTwo.isHidden = false
            answerButtonThree.isHidden = false
            answerButtonFour.isHidden = false
        }
    }
    */
    
    // this function checks whether game is over or if it is time for the next question
    func nextRound() {
        if quizMaster.questionsAsked == quizMaster.questionsPerRound {
            // Game is over
            displayScore()
        } else {
            // If questionAsked NOT equal questionsPerRound: continue game
            displayQuestionsAndAnswers()
        }
    }
    
    func displayScore() {
        // When score is displayed answerButtons are hidden
        answerButtonOne.isHidden = true
        answerButtonTwo.isHidden = true
        answerButtonThree.isHidden = true
        answerButtonFour.isHidden = true
        
        // Display play again button
        playAgainButton.isHidden = false
        
        questionField.text = "Way to go!\nYou got \(quizMaster.correctQuestions) out of \(quizMaster.questionsPerRound) correct \nand \(quizMaster.wrongAnswersGiven) wrong"
    }
    
    func loadNextRound(delay seconds: Int) {
        // Converts a delay in seconds to nanoseconds as signed 64 bit integer
        let delay = Int64(NSEC_PER_SEC * UInt64(seconds))
        // Calculates a time value to execute the method given current time and delay
        let dispatchTime = DispatchTime.now() + Double(delay) / Double(NSEC_PER_SEC)
        
        // Executes the nextRound method at the dispatch time on the main queue
        DispatchQueue.main.asyncAfter(deadline: dispatchTime) {
            self.nextRound()
        }
    }
    
    // MARK: - Actions
    
    @IBAction func checkTheAnswer(_ sender: UIButton) {
        // Increment the questions asked counter
        switch sender {
        case answerButtonOne: questionField.text = quizMaster.checkAnswer(buttonPressed: 1)
        case answerButtonTwo: questionField.text = quizMaster.checkAnswer(buttonPressed: 2)
        case answerButtonThree: questionField.text = quizMaster.checkAnswer(buttonPressed: 3)
        case answerButtonFour: questionField.text = quizMaster.checkAnswer(buttonPressed: 4)
        default: break
        }
        loadNextRound(delay: 2)
    }
    
    
    @IBAction func playAgain(_ sender: UIButton) {
        // Show the answer buttons
        quizMaster.questionsAsked = 0
        quizMaster.correctQuestions = 0
        quizMaster.wrongAnswersGiven = 0
        nextRound()
    }
    
    
}

