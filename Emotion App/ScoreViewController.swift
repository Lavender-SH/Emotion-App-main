//
//  scoreViewController.swift
//  Emotion App
//
//  Created by 이승현 on 2023/07/25.
//

import UIKit

class ScoreViewController: UIViewController {
    
    @IBOutlet var scoreLabel: UILabel!
    let userDefault = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        let emotionList = Emotion.allCases.map { userDefault.integer(forKey: "\($0)") }
        
        if scoreLabel.count == emotionList.count {
            for (label, emotionScore) in zip(scoreLabel, emotionList) {
                label.text = "\(emotionScore)점"
            }
        }
    }


}
