//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by Motonari Sakuma on 2022/02/14.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokodeLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var doushitaLabel: UILabel!
    
    let itsuArray: [String] = ["一年前", "一週間","昨日","今日"]
    let dokodeArray: [String] = ["山の上で", "アメリカで","学校で","クラスで"]
    let daregaArray: [String] = ["僕が", "大統領が","先生が","友達が"]
    let doushitaArray: [String] = ["叫んだ", "演説した","怒った","踊った"]
    
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func change(){
        //それぞれの食べるに配列の要素を追加する
        itsuLabel.text = itsuArray[index]
        dokodeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        doushitaLabel.text = doushitaArray[index]
        
        //indexの値を+1する
        index = index + 1
        //indexの値が3より大きくなったら0に戻す
        if index > 3 {
            index = 0
        }
    }
    @IBAction func reset(){
        //それぞれのlabelに配列の要素を追加する
        itsuLabel.text = "_______"
        dokodeLabel.text = "_______"
        daregaLabel.text = "_______"
        doushitaLabel.text = "_______"
        //indexを初期化
        index = 0
        
    }
    @IBAction func random(){
        
        let itsuIndex = Int.random(in: 0...3)
        let dokodeIndex = Int.random(in: 0...3)
        let daregaIndex = Int.random(in: 0...3)
        let doushitaIndex = Int.random(in: 0...3)
        
        print("いつ: \(itsuIndex)")
        print("どこで: \(dokodeIndex)")
        print("だれが: \(daregaIndex)")
        print("どうした: \(doushitaIndex)")
        
        itsuLabel.text = itsuArray[itsuIndex]
        dokodeLabel.text = dokodeArray[dokodeIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        doushitaLabel.text = doushitaArray[doushitaIndex]
        
        
    }

}

