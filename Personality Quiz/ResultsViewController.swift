//
//  Results.swift
//  Personality Quiz
//
//  Created by MXC Swift on 9/30/20.
//  Copyright © 2020 MXC Swift. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet var resultAnswerLabel: UILabel!
    @IBOutlet var resultDefinitionLabel: UILabel!
    
    
    var responses: [Answer]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        calculatePersonalityResult()
    }
    
    func calculatePersonalityResult() {
        var frequencyOfAnswers: [CityType: Int] = [:]
        let responseTypes = responses.map { $0.type }
        
        for response in responseTypes {
            frequencyOfAnswers[response] = (frequencyOfAnswers[response] ?? 0) + 1
        }
        let frequentAnswersSorted = frequencyOfAnswers.sorted(by:
        {(pair1, pair2) -> Bool in
            return pair1.value > pair2.value
        })
    
        let mostCommonAnswer = frequentAnswersSorted.first!.key
        
        resultAnswerLabel.text = "Your favorit City is\(mostCommonAnswer.rawValue)!"
        
        resultDefinitionLabel.text = mostCommonAnswer.definition
        
        
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
