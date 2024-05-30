//
//  YooJeong.swift
//  Team_member
//
//  Created by DEUKRYEONG LEE on 5/30/24.
//

import UIKit

class yuJengVC: ViewController {
    
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var urlBtn: UIButton!
    
    @IBOutlet weak var nameLebel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var mbtiLabel: UILabel!
    @IBOutlet weak var hobbyLabel: UILabel!
    @IBOutlet weak var urlLabel: UILabel!

    
    var label = ["강유정", "  26", "ENFP", "노래듣기","링크 클릭🔽"]
    var count = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func didTapBack(_ sender: Any) {
    self.presentingViewController?.dismiss(animated: true)
    }
    
  
    @IBAction func didTapNext(_ sender: Any) {
                switch count {
                case 1:
                    nameLebel.text = label[0]
                case 2:
                    ageLabel.text = label[1]
                case 3:
                    mbtiLabel.text = label[2]
                case 4:
                    hobbyLabel.text = label[3]
                case 5:
                    urlLabel.text = label[4]
                default:
                    break
                }
        count = count + 1

    }
    
 

    @IBAction func didTapUrl(_ sender: Any) {
    if let url = URL (string : "https://ujoy.tistory.com"){
            UIApplication.shared.open(url)
        }
    }

}
