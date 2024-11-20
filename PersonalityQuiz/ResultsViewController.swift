//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by user@59 on 25/10/24.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var responses: [Answer]
    
    init?(coder: NSCoder, responses: [Answer]) {
        self.responses = responses
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()

        // Do any additional setup after loading the view.
    }
    
    func calculatePersonalityResult() {
        let frequencyOfAnswers = responses.reduce(into: [AnimalType: Int]()) {
            (counts, answer) in
            if let existingCount = counts[answer.type]{
                counts[answer.type] = existingCount + 1
            } else {
                
                counts[answer.type] = 1
            }
                
        }
    }
    
//    let frequetAnswersSorted = frequecyOfAnswers.sorted(by: { (pair1, pair2) in return pair1.value > pair2.value})
//    
//    let mostCommonAnswer = frequentAnswersSorted.first!.key
//
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
