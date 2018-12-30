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
        var amountOfAnswers: Int
       
    }
    
    let questionOne = TriviaQuestions(
        question: "What is the correct syntax for a constant?",
        answerOne: "const",
        answerTwo: "var",
        answerThree: "let",
        answerFour: "con",
        correctAnswer: 3,
        amountOfAnswers: 4)
    
    let questionTwo = TriviaQuestions(
        question: "What is the correct syntax for a variable",
        answerOne: "const",
        answerTwo: "var",
        answerThree: "let",
        answerFour: "con",
        correctAnswer: 2,
        amountOfAnswers: 4)
    
    let questionThree = TriviaQuestions(
        question: "A sequence of characters surrounded by double quotes is called a",
        answerOne: "String Literal",
        answerTwo: "Global Variable",
        answerThree: "Literal Expression",
        answerFour: "This should be hidden",
        correctAnswer: 1,
        amountOfAnswers: 3)
    
    let questionFour = TriviaQuestions(
        question: "What statement can be used to stop the execution of a loop, if, or switch statement?",
        answerOne: "Stop",
        answerTwo: "End",
        answerThree: "Exit",
        answerFour: "Break",
        correctAnswer: 4,
        amountOfAnswers: 4)
    
    let questionFive = TriviaQuestions(
        question: "Which of the following is not a numerical type?",
        answerOne: "Int",
        answerTwo: "Float",
        answerThree: "Bool",
        answerFour: "Double",
        correctAnswer: 3,
        amountOfAnswers: 4)
    
    let questionSix = TriviaQuestions(
        question: "What is composition?",
        answerOne: "Designing a class through protocol conformance",
        answerTwo: "Designing a class through inheritance",
        answerThree: "It refers to the way you organise all your objects",
        answerFour: "None of the above",
        correctAnswer: 1,
        amountOfAnswers: 4)
    
    let questionSeven = TriviaQuestions(
        question: "What is the name of the 'structure' that can be prevented using a Gaurd statement",
        answerOne: "The tower of Doom",
        answerTwo: "The Pyramid of Danger",
        answerThree: "The Pyramifd of Doom",
        answerFour: "The Party-hat of Disaster",
        correctAnswer: 2,
        amountOfAnswers: 4)
    
    let questionEight = TriviaQuestions(
        question: "Enumerations",
        answerOne: "are very flexible",
        answerTwo: "do not have to ptovide a value for each case",
        answerThree: "are types in their own right",
        answerFour: "All of the above",
        correctAnswer: 4,
        amountOfAnswers: 4)
    
    let questionNine = TriviaQuestions(
        question: "A method is another word for a function",
        answerOne: "False",
        answerTwo: "True",
        answerThree: "This answer should be hidden",
        answerFour: "This answer should be hidden",
        correctAnswer: 2,
        amountOfAnswers: 2)
    
    let questionTen = TriviaQuestions(
        question: "Which of the following statements is not true: Swift...",
        answerOne: "...is fast language and supports dynamic libraries",
        answerTwo: "...has a high readability, is a safe platform and is open-source",
        answerThree: "...is a high maintenance langauge and its playground encourages interactive coding",
        answerFour: "... is fast, supports dynamic libraries and has a high readability",
        correctAnswer: 3,
        amountOfAnswers: 4)
    
    
    // this determines the amount of questions per round
    let questionsPerRound = 10
    
    // this counts the amount of questions asked
    var questionsAsked = 0
    
    // this is the amount of correctly answered questions
    var correctQuestions = 0
    
    // the amount of answer options for each question
    // this should go inside the func that alters the amount of Answers
    var numberOfAnswerOptions = 4
    
    // this if the amount of answers that were wrong
    var wrongAnswersGiven = 0
    
    var indexOfSelectedQuestion = 0
    
    // this is all the combined questions
    var questionsCombined = [TriviaQuestions]()
    
    // this variable is used to reorganise the questions
    var questionsReorganised = [TriviaQuestions]()
    
    // this function reorganises the questionsCombined
    func arrayReorganised() {
        questionsReorganised = questionsCombined.shuffled()
        print(questionsCombined)
    }
    
    // this is the initializer for questionsCombined
    init() {
        self.questionsCombined = [questionOne, questionTwo, questionThree, questionFour, questionFive, questionSix, questionSeven, questionEight, questionNine, questionTen]
    }
    
    // not sure how to alter syntax to make hiding extra buttons in ViewController possible
    /*
    let triviaQuestions = [TriviaQuestions]()
    
    func retrieveNumberOfAnswers() -> Int {
        let numberOfQuestions = triviaQuestions.amountOfAnswers[]
        return numberOfQuestions
    }
 
    
    
    func currentQuestion() -> TriviaQuestions {
        let numberOfAnswers = numberOfAnswerOptions
        if numberOfAnswers == 3  {
            return numberOfAnswerOptions = 3
        } else if numberOfAnswers == 2 {
            return numberOfAnswerOptions = 2
        } else {
            return numberOfAnswerOptions = 4
        }
    }
    */
    
    // this selects a question from the TriviaQuestions
    func provideQuestion() -> TriviaQuestions {
        let questionReturned = questionsReorganised[questionsAsked]
        return questionReturned
    }
 
    
    // this checks the answer and increases score if answer is correct
    // or increases counter for wrong answer given
    func checkAnswer(buttonPressed: Int) -> String {
        if (buttonPressed == 1 && questionsReorganised[questionsAsked].correctAnswer == 1) {
            correctQuestions += 1
            questionsAsked += 1
            return "Yay!"
        } else if (buttonPressed == 2 &&
            questionsReorganised[questionsAsked].correctAnswer == 2) {
            correctQuestions += 1
            questionsAsked += 1
            return "Yay!"
        } else if (buttonPressed == 3 &&
            questionsReorganised[questionsAsked].correctAnswer == 3) {
            correctQuestions += 1
            questionsAsked += 1
            return "Yay!"
        } else if (buttonPressed == 4 &&
            questionsReorganised[questionsAsked].correctAnswer == 4) {
            correctQuestions += 1
            questionsAsked += 1
            return "Yay!"
        } else {
            questionsAsked += 1
            wrongAnswersGiven += 1
            return "Woops!"
        }
    }
}
