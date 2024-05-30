//
//  ViewController.swift
//  Team_member
//
//  Created by DEUKRYEONG LEE on 5/30/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }
    //MARK: - 화면전환 함수 스토리보드아이디 생성 후 호출해주면 끝 !!!!!
    func goToView(storyBoardName: String) {
        guard let goVC = self.storyboard?.instantiateViewController(identifier: storyBoardName) else { return }
        //꽉찬화면으로 보여주기
        goVC.modalPresentationStyle = .fullScreen
        self.present(goVC, animated: true, completion: nil)
    }
    
    @IBAction func deukRyeong(_ sender: UIButton) {
        goToView(storyBoardName: "DKVC")
    }
    
    @IBAction func sangKyu(_ sender: UIButton) {
    }
    
    @IBAction func yooJeong(_ sender: UIButton) {
        
    }
    @IBAction func jinKyu(_ sender: UIButton) {
        
    }
    
    
}

