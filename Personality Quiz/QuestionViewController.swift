//
//  Question:ViewController.swift
//  Personality Quiz
//
//  Created by MXC Swift on 9/30/20.
//  Copyright © 2020 MXC Swift. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    
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
