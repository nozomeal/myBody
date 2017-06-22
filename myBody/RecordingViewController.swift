//
//  RecordingViewController.swift
//  myBody
//
//  Created by 坂本のぞみ on 2017/06/22.
//  Copyright © 2017年 g15938sn. All rights reserved.
//

import UIKit

class RecordingViewController: UIViewController {
    
    //表示ラベル
    @IBOutlet weak var inputLabel: UILabel!
    //入力する数値
    var number:Double=0
    //小数点が打たれているかどうかの判定
    var dots:Bool=false
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //それぞれのボタン
    @IBAction func one(_ sender: Any) {
        calc(n: 1)
        
    }
    
    @IBAction func two(_ sender: Any) {
        calc(n: 2)
    }
    
    @IBAction func three(_ sender: Any) {
        calc(n:3)

    }
    
    @IBAction func four(_ sender: Any) {
        calc(n:4)
    }
    
    @IBAction func five(_ sender: Any) {
        calc(n:5)

    }
    
    @IBAction func six(_ sender: Any) {
       calc(n: 6)

    }
 
    @IBAction func seven(_ sender: Any) {
        calc(n: 7)
    }
    
    @IBAction func eight(_ sender: Any) {
        calc(n:8)

    }
    
    @IBAction func nine(_ sender: Any) {
        calc(n:9)

    }
 
    @IBAction func clear(_ sender: Any) {
        number=0
        inputLabel.text=String(number)
    }
    
    @IBAction func zero(_ sender: Any) {
        calc(n: 0)
    }
    
    @IBAction func dot(_ sender: Any) {
        /*memo
         int->Double
         var intNum: Int = 37
         var doubleNum: Double = Double(intNum)
         */
        dots=true
        //inputLabel.text=String(number+".")
    
    }
    
    @IBAction func OK(_ sender: Any) {
        
    }
    //計算メソッド
    func calc(n:Double)->Double{
        if !dots{
            if number==0{
                number=n
            }else{
                number=number*10+n
            }
        }else{
            number=number+0.1*n
            }
        return number
        inputLabel.text=String(number)
    }
    
}

    

