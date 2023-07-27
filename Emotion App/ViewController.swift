//
//  ViewController.swift
//  Emotion App
//
//  Created by 이승현 on 2023/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstView: UIView!
    
    @IBOutlet var countLabel: UILabel!
        var count = 0
    var happy: Int = 0
    var smile: Int = 0
    var soso: Int = 0
    var bad: Int = 0
    var sad: Int = 0
    
    let userDefault = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        updateLabel()
        }
    
//    func updateLabel() {
//        countLabel.text = "\(count)"
//    }
        
    
    @IBAction func countButtonTapped(_ sender: UIButton) {
//        count += 1
        print("tag is", sender.tag)
//        if sender.tag == 0 {
//            happy += 1
//        } else if sender.tag == 1 {
//            smile += 1
//        }
//
//        switch sender.tag {
//        case 0:
//            happy += 1
//        case 1:
//            smile += 1
//        default:
//            print("")
//        }
        
//        switch Emotion {
//        case .happy:
//
//        case .smile:
//
//        }
        
        switch sender.tag {
        case Emotion.happy.rawValue:
            happy += 1
        case Emotion.smile.rawValue:
            smile += 1
        case Emotion.soso.rawValue:
            soso += 1
        case Emotion.bad.rawValue:
            bad += 1
        case Emotion.sad.rawValue:
            sad += 1
    
        default:
            break
        }
        
        print("happy is" , happy)
        print("smile is", smile)
        print("soso is", soso)
        print("bad is", bad)
        print("sad is", sad)
        
//        enum Emotion: Int {
//            case sad
//            case happy = 100
//            case smile
//            case mmm = 2000
//            case nnn
//        }
        
        enum Emotion: Int {
            case happy
            case smile
            case soso
            case bad
            case sad
        }
        
        let a = UserDefaults.standard.integer(forKey: "kokojong") // 0
        print(a)
        UserDefaults.standard.set(88, forKey: "kokojong") // 적기(덮어쓰기)
        UserDefaults.standard.integer(forKey: "kokojong") // 가져오기(읽기)
        
        // 숙제
        // 1. 5개 버튼 다 연결해서 count 올라간거 print하기
        // 2. 단, enum 써보기
        // 3. UserDefaults에 저장하기
        // 4. UserDefaults에서 가져오기(scoreVC에서)
    }
    
    func setUserDefault(_ totalScore:Int, _ key:String) {
        userDefault.set(totalScore, forKey: key)
    }
    
    func getUserDefaults() {
        happy = userDefault.integer(forKey: "happy")
        smile = userDefault.integer(forKey: "smile")
        soso = userDefault.integer(forKey: "soso")
        bad = userDefault.integer(forKey: "bad")
        sad = userDefault.integer(forKey: "sad")
    }
    

}

