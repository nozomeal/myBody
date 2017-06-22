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
        number=calc(n: 1)
        inputLabel.text=String(number)
        
    }
    
    @IBAction func two(_ sender: Any) {
        number=calc(n: 2)
        inputLabel.text=String(number)
    }
    
    @IBAction func three(_ sender: Any) {
        number=calc(n:3)
        inputLabel.text=String(number)

    }
    
    @IBAction func four(_ sender: Any) {
        number=calc(n:4)
        inputLabel.text=String(number)
    }
    
    @IBAction func five(_ sender: Any) {
        number=calc(n:5)
        inputLabel.text=String(number)

    }
    
    @IBAction func six(_ sender: Any) {
       number=calc(n: 6)
        inputLabel.text=String(number)

    }
 
    @IBAction func seven(_ sender: Any) {
        number=calc(n: 7)
        inputLabel.text=String(number)
    }
    
    @IBAction func eight(_ sender: Any) {
        number=calc(n:8)
        inputLabel.text=String(number)

    }
    
    @IBAction func nine(_ sender: Any) {
        number=calc(n:9)
        inputLabel.text=String(number)

    }
 
    @IBAction func clear(_ sender: Any) {
        number=0
        inputLabel.text=String(number)
    }
    
    @IBAction func zero(_ sender: Any) {
        number=calc(n: 0)
        dots=false
        inputLabel.text=String(number)
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
            number=number+1/10*n
            }
        return number
        
    }
    
}

    

