//
//  ViewController.swift
//  Team_member
//
//  Created by DEUKRYEONG LEE on 5/30/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var jinkyu: UIButton!
    @IBOutlet weak var yoojeong: UIButton!
    @IBOutlet weak var sangkyu: UIButton!
    @IBOutlet weak var deukryeong: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureButton(button: deukryeong)
        configureButton(button: yoojeong)
        configureButton(button: sangkyu)
        configureButton(button: jinkyu)
    }
    //MARK: - 이미지 서클, 쉐도우 효과
    func configureButton(button: UIButton!) {
        guard let btn = button else { return }

        btn.layer.cornerRadius = button.frame.height / 2
        btn.layer.borderWidth = 1
        btn.layer.borderColor = UIColor.clear.cgColor
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.clipsToBounds = true
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
        goToView(storyBoardName: "SHIN")
    }
    
    @IBAction func yooJeong(_ sender: UIButton) {
    }
    @IBAction func jinKyu(_ sender: UIButton) {
        goToView(storyBoardName: "JKVC")
        
    }
    
    
}

