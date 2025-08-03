//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Kshitiz on 03/08/25.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet var resultAnswerLabel: UILabel!
    @IBOutlet var resultDefinitionLabel: UILabel!
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
        // Do any additional setup after loading the view.
        navigationItem.hidesBackButton = true
    }
    
    func calculatePersonalityResult(){
        var frequencyOfAnswers: [AnimalType: Int] = [:]
        let responseTypes = responses.map{ $0.type }
               
       for response in responseTypes {
           frequencyOfAnswers[response] = (frequencyOfAnswers[response] ?? 0) + 1
       }
               
       let frequentAnswersSorted = frequencyOfAnswers.sorted(by:
       {(pair1, pair2) -> Bool in
           return pair1.value > pair2.value
       })
               
       let mostCommonAnswer = frequentAnswersSorted.first!.key
       
       resultAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
       resultDefinitionLabel.text = mostCommonAnswer.definition
               
    }
    
    
    init?(coder: NSCoder, responses: [Answer]) {
        self.responses = responses
        super.init(coder: coder)
    }
    
    var responses: [Answer]
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
