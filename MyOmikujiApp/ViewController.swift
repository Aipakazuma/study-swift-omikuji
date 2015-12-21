//
//  ViewController.swift
//  MyOmikujiApp
//
//  Created by 玉城一磨 on 2015/12/21.
//  Copyright © 2015年 玉城一磨. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func getOmikuji(sender: AnyObject) {
        let results = [
            "大吉",
            "吉",
            "中吉",
            "小吉",
            "凶",
            "大凶"
        ];

        // 乱数を生成 0 - 4
        // arc4random_uniform(n + 1)
        let random = arc4random_uniform(UInt32(results.count))
        
        // 大吉の時に赤文字
        if random == 0 {
            self.myLabel.textColor = UIColor.redColor()
        } else {
            self.myLabel.textColor = UIColor.blackColor()
        }
        // results[乱数]をmyLabelに表示
        self.myLabel.text = results[Int(random)]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

