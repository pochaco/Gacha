//
//  ResultViewController.swift
//  Gacha
//
//  Created by Yamamoto Miu on 2020/09/11.
//  Copyright © 2020 Yamamoto Miu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    //乱数を入れるInt型の変数の箱を用意
    var number : Int!
    
    @IBOutlet var backgroundImageView : UIImageView!
    @IBOutlet var monsterImageView : UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        number = Int.random(in:0...10)
        if number == 10 {
            backgroundImageView.image = UIImage(named:"bg_gold@2x.png")
        }
        else if number > 7 {
            backgroundImageView.image = UIImage(named:"bg_red@2x.png")
            monsterImageView.image = UIImage(named:"monster006.png")
        }
        else {
            backgroundImageView.image = UIImage(named:"bg_blue@2x.png")
            monsterImageView.image = UIImage(named:"monster003.png")
        }
        
        switch number {
        case 0:
            monsterImageView.image = UIImage(named:"monster001.png")
        case 1:
            monsterImageView.image = UIImage(named:"monster002.png")
        case 2:
            monsterImageView.image = UIImage(named:"monster003.png")
        case 3:
            monsterImageView.image = UIImage(named:"monster004.png")
        case 4:
            monsterImageView.image = UIImage(named:"monster005.png")
        case 5:
            monsterImageView.image = UIImage(named:"monster006.png")
        case 6:
            monsterImageView.image = UIImage(named:"monster007.png")
        case 7:
            monsterImageView.image = UIImage(named:"monster008.png")
        case 9:
            monsterImageView.image = UIImage(named:"monster009.png")
        default:
            monsterImageView.image = UIImage(named:"monster010.png")
        }

        
    }
    
    @IBAction func back(){
        //遷移元画面にもどる
        self.dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
