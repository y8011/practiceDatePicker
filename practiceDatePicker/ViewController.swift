//
//  ViewController.swift
//  practiceDatePicker
//
//  Created by yuka on 2018/05/30.
//  Copyright © 2018年 yuka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myDP: UIDatePicker!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    // sender=このアクション（ValueChangedを起こした張本人のDatePicker
    @IBAction func dateSelected(_ sender: UIDatePicker) {
        
        // プログラムでの初期設定方法
        let df = DateFormatter()
        
        // yとかMとかdは決まっている
        df.dateFormat = "yyyy/MM/dd"
        df.locale = Locale(identifier: "ja_JP")
        let text = df.string(from: myDP.date)
        
        print(text)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

