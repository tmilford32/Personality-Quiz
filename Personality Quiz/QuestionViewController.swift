//
//  Question:ViewController.swift
//  Personality Quiz
//
//  Created by MXC Swift on 9/30/20.
//  Copyright © 2020 MXC Swift. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
   
    @IBOutlet var questionLabel: UILabel!
    
    
    @IBOutlet var singleStackView: UIStackView!
    @IBOutlet var singleButton1: UIButton!
    
    @IBOutlet var singleButton2: UIButton!
    
    @IBOutlet var singleButton3: UIButton!
    
    @IBOutlet var singleButton4: UIButton!
    
    
    @IBOutlet var multipleStackView: UIStackView!
    @IBOutlet var multiLabel1: UILabel!
    @IBOutlet var multiLabel2: UILabel!
    @IBOutlet var multiLabel3: UILabel!
    @IBOutlet var multiLabel4: UILabel!
    
    
    
    @IBOutlet var rangedStackView: UIStackView!
    @IBOutlet var rangedLabel1: UILabel!
    @IBOutlet var rangedLabel2: UILabel!
    
    @IBOutlet var questionProgressView: UIProgressView!
    
    
    
    var questions: [Question] = [
        Question(text: "Which food do you like the most?",
                 type: .single,
                 answers: [
                    Answer(text: "Steak", type: .Chicago),
                    Answer(text: "Fish", type: .Tokyo),
                    Answer(text: "Bay Shrimp", type: .SanFrancisco),
                    Answer(text: "Stuffed Camel", type: .Dubai)
        ]),
        Question(text: "Which activites do you enjoy?",
                      type: .multiple,
                      answers: [
                         Answer(text: "Stepping", type: .Chicago),
                         Answer(text: "Fishing", type: .Tokyo),
                         Answer(text: "Swimming", type: .SanFrancisco),
                         Answer(text: "Dune buggies", type: .Dubai)
             ]),
        Question(text: "How much do you enjoy bike riding?",
                      type: .ranged,
                      answers: [
                         Answer(text: "I prefer my car", type: .Chicago),
                         Answer(text: "I love it", type: .Tokyo),
                         Answer(text: "I hate it!", type: .SanFrancisco),
                         Answer(text: "I prefer not", type: .Dubai)
             ]),
        
    ]
    
    var questionIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        updateUI()
    }
    func updateUI() {
        
        singleStackView.isHidden = true
        multipleStackView.isHidden = true
        rangedStackView.isHidden   = true
        
        navigationItem.title = "Question #\(questionIndex+1)"
        
        let currentQuestion = questions[questionIndex]
        let currentAnswers = currentQuestion.answers
        let totalProgress = Float(questionIndex) / Float(questions.count)
        
        questionLabel.text = currentQuestion.text
        questionProgressView.setProgress(totalProgress, animated: true)
      
        switch currentQuestion.type {
        case .single:
            updateSingleStack(using: currentAnswers)
            
        case .multiple:
            updateMultipleStack(using: currentAnswers)
            
        case  .ranged:
           
            updateRangedStack(using: currentAnswers)
        
        
        }
    
    }
    func updateSingleStack (using answers: [Answer]) {
        singleStackView.isHidden = false
        singleButton1.setTitle(answers[0].text, for: .normal)
        singleButton2.setTitle(answers[1].text, for: .normal)
        singleButton3.setTitle(answers[2].text, for: .normal)
        singleButton4.setTitle(answers[3].text, for: .normal)
    }
    
    func updateMultipleStack(using answers: [Answer]){
         multipleStackView.isHidden = false
    }
    
    func updateRangedStack(using answers: [Answer]){
         rangedStackView.isHidden = false
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
