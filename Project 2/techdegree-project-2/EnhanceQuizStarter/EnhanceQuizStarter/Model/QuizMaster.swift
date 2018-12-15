//
//  Model.swift
//  QuizMaster
//
//  Created by Wouter Willebrands on 13/12/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import UIKit

class QuizMaster {
    
    let questionsPerRound = 1   // these are the stored properties
    var questionsAsked = 0      // for the QuizMaster class
    var correctAmountOfQuestions = 0
    var questionsCombined = [TriviaQuestions]()
    var shuffledArray = [TriviaQuestions]()
    
    var timeToResetValues: Bool = true
    
    // this (below) contains all the questions and information on
    // the number of questions
    // the different answers
    // the correct answer
    
    struct TriviaQuestions {
        let question: String
        let answerOne: String
        let answerTwo: String
        let answerThree: String
        let answerFour: String
        let correctAnswer: String
        var numberOfPossibleAnswers: Int
        
    }
    // these are the three possible question-answer variations
    // still need to figure out how to relate
    // possible answers to buttonfilter...?
    
    let questionOne = TriviaQuestions(
        question: "Question comes here",
        answerOne: "Answer comes here",
        answerTwo: "Answer comes here",
        answerThree: "Answer comes here",
        answerFour: "Answer comes here",
        correctAnswer: "This is the correct answer",
        numberOfPossibleAnswers: 4)
    
    let questionTwo = TriviaQuestions(
        question: "Question comes here",
        answerOne: "Answer comes here",
        answerTwo: "Answer comes here",
        answerThree: "Answer comes here",
        answerFour: "This answer needs to be hidden",
        correctAnswer: "This is the correct answer",
        numberOfPossibleAnswers: 3)
    
    let questionThree = TriviaQuestions(
        question: "Question comes here",
        answerOne: "Answer comes here",
        answerTwo: "Answer comes here",
        answerThree: "This answer needs to be hidden",
        answerFour: "This answer needs to be hidden",
        correctAnswer: "This is the correct answer",
        numberOfPossibleAnswers: 2)
    
    
    init() {
        // still needs all the questions added after generating
        // this
        self.questionsCombined = [questionOne, questionTwo, questionThree]
        
    }
    
    func provideQuestion() {
        shuffledArray = questionsCombined.shuffled()
    }
    
    func fetchQuestion() -> TriviaQuestions {
        let returnedValue = shuffledArray[questionsAsked]
        return returnedValue
    }
    
    func hideExtraButtons() {
        // this needs to adjust the buttons in
        // numberOfPossibleAnswers: Int
        // to correspond the correct amount of buttons
        
    }
    
    
    func checkTheAnswer(buttonInput: Int) -> String {
        // this can't access the button pressed from ViewController...?
        
        
        if (buttonPressesed == 1 && shuffledArray[questionsAsked].answerOne == "One") {
            correctAmountOfQuestions += 1
            questionsAsked += 1
            return "Yay!"
            
            
        } else if (buttonPressed == 2 && shuffledArray[questionsAsked].answerTwo == "Two") {
            correctAmountOfQuestions += 1
            questionsAsked += 1
            return "Yay!"
            
            
        } else if (buttonPressed == 3 && shuffledArray[questionsAsked].answerThree == "Three") {
            correctAmountOfQuestions += 1
            questionsAsked += 1
            return "Yay!"
            
            
        } else if (buttonPressed == 4 && shuffledArray[questionsAsked].answerFour == "Four") {
            correctAmountOfQuestions += 1
            questionsAsked += 1
            return "Yay!"
        } else {
            questionsAsked += 1
            return "Woops!"
            
        }
        
        
    }
    
    func nextRound() {
        if questionsAsked == questionsPerRound {
            // Game is over
            displayScore()
        } else {
            // Continue game
            displayQuestion()
        }
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
    
    
    
    func resetValues() {
        self.questionsAsked = 0
        self.correctAmountOfQuestions = 0
        self.timeToResetValues = false
    }
    
    func nextQuestionOrEndQuiz() -> Bool {
        //          at the end of the round this one is true
        if questionsAsked == questionsPerRound && timeToResetValues == false {
            timeToResetValues = true
            return true
            //          When user hits 'try again' this one becomes true
        }  else if questionsAsked == questionsPerRound && timeToResetValues == true {
            resetValues()
            shuffledArray()
            return false
            //            At inital beginning of game this one is true
        } else if questionsAsked != questionsPerRound && timeToResetValues == true {
            resetValues()
            shuffledArray()
            return false
            //  Throughout round this statement
        } else {
            
            return false
        }
    }
    
    
}

// this probably needs to go in here somewhere as well
// move this from ViewController.swift to this file

/*
 func nextRound() {
 if questionsAsked == questionsPerRound {
 // Game is over
 displayScore()
 } else {
 // Continue game
 displayQuestion()
 }
 }
 */

