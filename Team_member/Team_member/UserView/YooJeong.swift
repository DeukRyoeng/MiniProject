//
//  YooJeong.swift
//  Team_member
//
//  Created by DEUKRYEONG LEE on 5/30/24.
//

import UIKit

class yuJengVC: ViewController {
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var urlBtn: UIButton!
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var mbti: UILabel!
    @IBOutlet weak var hobby: UILabel!
    @IBOutlet weak var url: UILabel!
    
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
                    name.text = label[0]
                case 2:
                    age.text = label[1]
                case 3:
                    mbti.text = label[2]
                case 4:
                    hobby.text = label[3]
                case 5:
                    url.text = label[4]
                default:
                    break
                }
        
        count = count + 1

    }
    
    @IBAction func didTapUrl(_ sender: UIButton) {
        let url = URL (string : "https://ujoy.tistory.com")!
        UIApplication.shared.open(url)
    }

    
}
