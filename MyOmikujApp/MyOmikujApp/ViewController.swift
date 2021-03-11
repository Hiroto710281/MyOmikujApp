//
//  ViewController.swift
//  MyOmikujApp
//
//  Created by 北村裕斗 on 2020/05/08.
//  Copyright © 2020 北村裕斗. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mylabel: UILabel!
    @IBAction func getOmikuji(_ sender: Any) {
        
        let results = ["大吉", "中吉", "わっしょい","大凶","こうき","なめこイン"]
        let random = arc4random_uniform((UInt32(results.count)))
        
        self.mylabel.text = results[Int(random)]
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        mylabel.layer.borderColor = UIColor.orange.cgColor
//        mylabel.layer.borderWidth = 5
//        mylabel.layer.cornerRadius = 50
        mylabel.layer.masksToBounds = true
        mylabel.layer.cornerRadius = mylabel.bounds.width / 2
        
        
    }


}

