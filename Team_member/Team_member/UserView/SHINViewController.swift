//
//  SHINViewController.swift
//  Team_member
//
//  Created by 신상규 on 5/30/24.
//

import UIKit

class SHINViewController: UIViewController {
    let introduce: [String] = ["나이","MBTI","키","좋아하는 음식","좋아하는 가수","취미","IOS하는이유","종교","별건 없지만...","이상"]
    let chack: [String] = ["95년생 30살 돼지띠","ISFP 집돌이","182cm","스시,곱창류?","뎁트라는 가수를 좋아해요","헬스,게임","IOS를 좋아해요","무교입니다","벨로그도 확인해주세요","저의 소개는 끝입니다"]
    var count : Int = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    @IBOutlet weak var lable1: UILabel!
    @IBOutlet weak var lable2: UILabel!
    
    
    @IBAction func BackButton(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
    
    
    
    @IBAction func lablebutton(_ sender: Any) {
        print("자기소개")
        if count >= introduce.count {
            print("Index out of range")
            // 필요시 여기서 추가 처리를 할 수 있습니다.
        } else if introduce[count] == "last" {
            print("마지막 인덱스")
        } else {
            lable1.text = introduce[count]
            lable2.text = chack[count]
            count += 1
        }
        
    }
    @IBAction func VelogButton(_ sender: Any) {
        print("벨로그로 넘어가기")
        let url = URL (string : "https://velog.io/@shin4791/posts")!
        UIApplication.shared.open(url)
    }
    
}
