//
//  QuizMaster.swift
//  EnhanceQuizStarter
//
//  Created by Wouter Willebrands on 23/12/2018.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation
import UIKit

class QuizMaster {
    
    struct TriviaQuestions {
        let question: String
        let answerOne: String
        let answerTwo: String
        let answerThree: String
        let answerFour: String
        let correctAnswer: Int
        let trueOrFalseQuestion: Bool
        
    }
    
    let questionOne = TriviaQuestions(
        question: "What is the correct syntax for a constant?",
        answerOne: "const",
        answerTwo: "var",
        answerThree: "let",
        answerFour: "con",
        correctAnswer: 3,
        trueOrFalseQuestion: false)
    
    let questionTwo = TriviaQuestions(
        question: "What is the correct syntax for a variable",
        answerOne: "const",
        answerTwo: "var",
        answerThree: "let",
        answerFour: "con",
        correctAnswer: 2,
        trueOrFalseQuestion: false
    )
    
    let questionThree = TriviaQuestions(
        question: "A sequence of characters surrounded by double quotes is called a",
        answerOne: "String Literal",
        answerTwo: "Global Variable",
        answerThree: "Literal Expression",
        answerFour: "Quote sequence",
        correctAnswer: 1,
        trueOrFalseQuestion: false)
    
    let questionFour = TriviaQuestions(
        question: "What statement can be used to stop the execution of a loop, if, or switch statement?",
        answerOne: "Stop",
        answerTwo: "End",
        answerThree: "Exit",
        answerFour: "Break",
        correctAnswer: 4,
        trueOrFalseQuestion: false)
    
    let questionFive = TriviaQuestions(
        question: "Which of the following is not a numerical type?",
        answerOne: "Int",
        answerTwo: "Float",
        answerThree: "Bool",
        answerFour: "Double",
        correctAnswer: 3,
        trueOrFalseQuestion: false)
    
    let questionSix = TriviaQuestions(
        question: "What is composition?",
        answerOne: "Class design through protocol conformance",
        answerTwo: "Designing a class through inheritance",
        answerThree: "It refers to the way you organise all your objects",
        answerFour: "None of the above",
        correctAnswer: 1,
        trueOrFalseQuestion: false)
    
    let questionSeven = TriviaQuestions(
        question: "What is the name of the 'structure' that can be prevented using a Guard statement",
        answerOne: "The Tower of Doom",
        answerTwo: "The Pyramid of Danger",
        answerThree: "The Pyramid of Doom",
        answerFour: "The Party-hat of Disaster",
        correctAnswer: 3,
        trueOrFalseQuestion: false)
    
    let questionEight = TriviaQuestions(
        question: "Enumerations",
        answerOne: "are very flexible",
        answerTwo: "do not have to provide a value for each case",
        answerThree: "are types in their own right",
        answerFour: "All of the above",
        correctAnswer: 4,
        trueOrFalseQuestion: false)
    
    let questionNine = TriviaQuestions(
        question: "When we try to access a value using a key that doesn't exist in a dictionary, what result do we get?",
        answerOne: "An index out of bounds error",
        answerTwo: "We get the key back",
        answerThree: "A nil value",
        answerFour: "The program crashes",
        correctAnswer: 1,
        trueOrFalseQuestion: false)
    
    let questionTen = TriviaQuestions(
        question: "The process of converting from superclass to a more specific subclass is called:",
        answerOne: "inheritance",
        answerTwo: "protocol programming",
        answerThree: "downcasting",
        answerFour: "upcasting",
        correctAnswer: 3,
        trueOrFalseQuestion: false)
    
    let questionEleven = TriviaQuestions(
        question: "Swift is awesome",
        answerOne: "True",
        answerTwo: "False",
        answerThree: "-",
        answerFour: "-",
        correctAnswer: 1,
        trueOrFalseQuestion: true)
    
    let questionTwelve = TriviaQuestions(
        question: "An alternate name for an existing type is called Type Aliases",
        answerOne: "True",
        answerTwo: "False",
        answerThree: "-",
        answerFour: "-",
        correctAnswer: 1,
        trueOrFalseQuestion: true)
    
    let questionThirteen = TriviaQuestions(
        question: "'Any Object' and 'Any' represent non specific types'",
        answerOne: "False",
        answerTwo: "True",
        answerThree: "-",
        answerFour: "-",
        correctAnswer: 2,
        trueOrFalseQuestion: true)
    
    let questionFourteen = TriviaQuestions(
        question: "XML stands for",
        answerOne: "Excessive Markup Language",
        answerTwo: "Extra Markup Language",
        answerThree: "Extensible Markup Language",
        answerFour: "Extensible Make-up Language",
        correctAnswer: 3,
        trueOrFalseQuestion: false)
    
    let questionFifteen = TriviaQuestions(
        question: "If it doesn't exist within that scope the compiler will not auto-complete",
        answerOne: "False",
        answerTwo: "True",
        answerThree: "-",
        answerFour: "-",
        correctAnswer: 2,
        trueOrFalseQuestion: true)
    
    let questionSixteen = TriviaQuestions(
        question: "When objects have an expected blueprint that defines expected behaviour, we talk about...",
        answerOne: "inheritance",
        answerTwo: "downcasting",
        answerThree: "protocol",
        answerFour: "conformance",
        correctAnswer: 3,
        trueOrFalseQuestion: false)
    
    let questionSeventeen = TriviaQuestions(
        question: "When in doubt a good place to start looking for an answer is",
        answerOne: "Treehouse Slack community",
        answerTwo: "Browse the internet",
        answerThree: "Ask your grandma",
        answerFour: "Some but definetly not all of the above",
        correctAnswer: 4,
        trueOrFalseQuestion: false)
    
    let questionEightteen = TriviaQuestions(
        question: "'||' is the OR Operator",
        answerOne: "True",
        answerTwo: "False",
        answerThree: "-",
        answerFour: "-",
        correctAnswer: 1,
        trueOrFalseQuestion: true)
    
    let questionNineteen = TriviaQuestions(
        question: "Subcripts are shortcuts for changing member elements of a collection, list or sequence",
        answerOne: "True",
        answerTwo: "False",
        answerThree: "-",
        answerFour: "-",
        correctAnswer: 2,
        trueOrFalseQuestion: true)
    
    let questionTwenty = TriviaQuestions(
        question: "Raw Values have to be assigned for each case of an enum",
        answerOne: "True",
        answerTwo: "False",
        answerThree: "-",
        answerFour: "-",
        correctAnswer: 2,
        trueOrFalseQuestion: true)
    
    var questionIsTrueOrFalseOnly: Bool = true
    
    // this determines the amount of questions per round
    let questionsPerRound = 10
    
    // this counts the amount of questions asked
    var questionsAsked = 0
    
    // this is the amount of correctly answered questions
    var correctQuestions = 0
    
    // this if the amount of answers that were wrong
    var wrongAnswersGiven = 0
    
    // this is all the combined questions
    var questionsCombined = [TriviaQuestions]()
    
    // this variable is used to reorganise the questions
    var questionsReorganised = [TriviaQuestions]()
    
    // this is the initializer for questionsCombined
    init() {
        self.questionsCombined = [questionOne, questionTwo, questionThree, questionFour, questionFive, questionSix, questionSeven, questionEight, questionNine, questionTen, questionEleven, questionTwelve, questionThirteen, questionFourteen, questionFifteen, questionSixteen, questionSeventeen, questionEightteen, questionNineteen, questionTwenty]
    }
    
    // this function reorganises the questionsCombined
    func arrayReorganised() {
        questionsReorganised = questionsCombined.shuffled()
    }
    
    // this selects one TriviaQuestion from the TriviaQuestions
    func provideQuestion() -> TriviaQuestions {
        arrayReorganised()
        let questionReturned = questionsReorganised[questionsAsked]
        return questionReturned
    }
    
    func checkTrueOrFalseQuestion() {
        self.questionIsTrueOrFalseOnly = false
    }
    
    func checkIfTrueOrFalseQuestion() -> Bool {
        checkTrueOrFalseQuestion()
        arrayReorganised()
        
        if questionsReorganised[questionsAsked].trueOrFalseQuestion == true {
            return true
        } else {
            return false
        }
    }
    
    /*
 
     func checkIfTrueOrFalseQuestion() -> Bool {
     arrayReorganised()
     
     if questionsReorganised[questionsAsked].trueOrFalseQuestion == false {
     return true
     } else {
     return false
     }
     }
     
     */
    
    // this checks the answer and increases score if answer is correct
    // or increases counter for wrong answer given
    func checkAnswer(buttonPressed: Int) -> String {
        if (buttonPressed == 1 && questionsReorganised[questionsAsked].correctAnswer == 1) {
            correctQuestions += 1
            questionsAsked += 1
            PlayApplaus.loadApplausSound()
            PlayApplaus.playApplausSound()
            return "Yay!"
        } else if (buttonPressed == 2 &&
            questionsReorganised[questionsAsked].correctAnswer == 2) {
            correctQuestions += 1
            questionsAsked += 1
            PlayApplaus.loadApplausSound()
            PlayApplaus.playApplausSound()
            return "Yay!"
        } else if (buttonPressed == 3 &&
            questionsReorganised[questionsAsked].correctAnswer == 3) {
            correctQuestions += 1
            questionsAsked += 1
            PlayApplaus.loadApplausSound()
            PlayApplaus.playApplausSound()
            return "Yay!"
        } else if (buttonPressed == 4 &&
            questionsReorganised[questionsAsked].correctAnswer == 4) {
            correctQuestions += 1
            questionsAsked += 1
            PlayApplaus.loadApplausSound()
            PlayApplaus.playApplausSound()
            return "Yay!"
        } else {
            questionsAsked += 1
            wrongAnswersGiven += 1
            PlayBuzzer.loadBuzzerSound()
            PlayBuzzer.playBuzzerSound()
            return "Woops!"
        }
    }
}
