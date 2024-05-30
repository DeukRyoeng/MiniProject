//
//  DeukRyoeng.swift
//  Team_member
//
//  Created by DEUKRYEONG LEE on 5/30/24.
//

import UIKit
import SafariServices

class DeukRyoengVC: ViewController {
    
    var intr: [String] = ["MBTI", "신체", "취미","거주지", "IG", "last"," "]
    let ans: [String] = ["ENTP", "175 / 80", "복싱, 웨이트, 음주","인천 미추홀", "@dx._.xk7"]
    var count = 0
    
    @IBOutlet weak var q: UILabel!
    @IBOutlet weak var a: UILabel!
    @IBOutlet weak var next_Btn: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        //NextBtn이미지 지정
        let imgConfig = UIImage.SymbolConfiguration(pointSize: 60,weight: .light)
        let img = UIImage(systemName: "arrow.right.circle.fill",withConfiguration: imgConfig)
        next_Btn.setImage(img, for: .normal)
        next_Btn.tintColor = .white
        
        let imgView: UIImageView = {
            let aView = UIImageView()
            imageView.layer.cornerRadius = imageView.frame.height / 2
            imageView.layer.borderWidth = 1
            imageView.layer.borderColor = UIColor.clear.cgColor
            return imageView
        }()
        //이미지 쉐도우
        let imgShadown: UIView = {
            let aView = UIView()
            aView.layer.shadowOffset = CGSize(width: 5, height: 5)
            aView.layer.shadowOpacity = 0.7
            aView.layer.shadowRadius = 5
            
            return imageView
        }()
        imageView.clipsToBounds = true
       
    }
    @IBAction func backBtn(_ sender: UIButton) {
        print("called - DeukRyoengVC: click Back Btn!! ")
        self.presentingViewController?.dismiss(animated: true)
    }
    
    @IBAction func velog_Btn(_ sender: UIButton) {
        print("called - DeukRyoengVC: click Velog Btn!! ")
        
        let blogUrl = NSURL(string: "https://velog.io/@dx_xk7/posts")
        let blogSafariView: SFSafariViewController = SFSafariViewController(url: blogUrl as! URL)
        self.present(blogSafariView, animated: true, completion: nil)
        
    }
    @IBAction func nextBtn(_ sender: UIButton) {
        if count >= intr.count {
            print("Index out of range")
        } else if intr[count] == "last" {
            print("마지막 인덱스")
            q.text = "마지막인뒝?"
            a.text = "더 없눈뒝??"
        } else {
            q.text = intr[count]
            a.text = ans[count]
            count += 1
        }
    }
}
