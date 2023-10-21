//
//  main.swift
//  norah
//
//  Created by Norah Alfari on 04/04/1445 AH.
//

import Foundation
/*
print("Hello, World!")

while true {
    print("what is your name?")
    let usernameInput = readLine()
    
    if usernameInput == "q"{
        break}
}
*/




public var userAnswer: String
let answerT = "T"
let aswerF = "F"
var counter = 0
// Counter Function
func addToCounter() {
    counter = counter + 1
   
    
 }

print("Cybersecurity Quiz")
print("Quiz contain of 5 True or False questions please answer by typing T for True OR F for False ")
print("Please enter your name:")
var name = readLine()

//question 1
while true{
    print("Q1.privacy is another name for confidentiality of information?")
    let userAnswer = readLine()
    
    if userAnswer == answerT{
       addToCounter()
    }
    
    if userAnswer == "T" || userAnswer == "F"{
        break
    }
    do{
        try isValidAnswer(userAnswer: userAnswer ?? "")
        
    } catch (let error as answer ){
        if error == .AnswerMustBeTorF {
            print ("Answer Must Be T or F")
        }
    }
}

//question 2
while true{
    print("Q2.scalability is a component of the CIA triad?")
    let userAnswer = readLine()
    
    if userAnswer == aswerF{
        addToCounter()
    }
    
    if userAnswer == "T" || userAnswer == "F"{
        break
    }
    do{
        try isValidAnswer(userAnswer: userAnswer ?? "")
        
    } catch (let error as answer ){
        if error == .AnswerMustBeTorF {
            print ("Answer Must Be T or F")
        }
    }
}

//question 3
while true{
    print("Q3.encryption is used to check the integrity of data?")
    let userAnswer = readLine()
    
    if userAnswer == answerT{
        addToCounter()
    }
    
    if userAnswer == "T" || userAnswer == "F"{
        break
    }
    do{
        try isValidAnswer(userAnswer: userAnswer ?? "")
        
    } catch (let error as answer ){
        if error == .AnswerMustBeTorF {
            print ("Answer Must Be T or F")
        }
    }
}

//question 4
while true{
    print("Q4.hat attacker taking advantage of any vulnerability for illegal personal gain?")
    let userAnswer = readLine()
    
    if userAnswer == aswerF{
        addToCounter()
    }
    
    if userAnswer == "T" || userAnswer == "F"{
        break
    }
    do{
        try isValidAnswer(userAnswer: userAnswer ?? "")
        
    } catch (let error as answer ){
        if error == .AnswerMustBeTorF {
            print ("Answer Must Be T or F")
        }
    }
}

//question 5
while true{
    print("Q5.Cyberwarfare is an attack carried out by a group of script kiddies.?")
    let userAnswer = readLine()
    
    if userAnswer == aswerF{
        addToCounter()
    }
    
    if userAnswer == "T" || userAnswer == "F"{
        break
    }
    do{
        try isValidAnswer(userAnswer: userAnswer ?? "")
        
    } catch (let error as answer ){
        if error == .AnswerMustBeTorF {
            print ("Answer Must Be T or F")
        }
    }
}
    
    //error handling
    enum answer: Error{
        case AnswerMustBeTorF
    }
    
    func isValidAnswer (userAnswer: String) throws {
        if userAnswer != "T" || userAnswer != "F"{
            throw answer.AnswerMustBeTorF
        }
        
    }
    
    
 


print("Quiz Result")
print ("Student Name:",name ?? "" ,"Score" , counter , "/5")
