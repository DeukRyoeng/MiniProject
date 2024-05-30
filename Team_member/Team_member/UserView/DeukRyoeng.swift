//
//  DeukRyoeng.swift
//  Team_member
//
//  Created by DEUKRYEONG LEE on 5/30/24.
//

import UIKit
import SafariServices

class DeukRyoengVC: ViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
