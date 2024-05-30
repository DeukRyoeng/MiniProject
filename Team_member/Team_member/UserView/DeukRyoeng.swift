//
//  DeukRyoeng.swift
//  Team_member
//
//  Created by DEUKRYEONG LEE on 5/30/24.
//

import UIKit
import SafariServices

class DeukRyoengVC: ViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
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
}
