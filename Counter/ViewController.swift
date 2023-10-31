//
//  ViewController.swift
//  Counter
//
//  Created by Андрей Мухин on 30.10.2023.
//

import UIKit

class ViewController: UIViewController {
    var count = 0
    var cnt = 0
    
    let getDate = Date()
    let dateFormatter = DateFormatter()
    //dateFormatter.dateFormat = "dd.MM.yyyy HH:mm"

    //print(dateFormatter.string(from: getDate))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func getCountClick()-> String {
        count += 1
        return "Значение счётчика: \(count)"
        
    }
    
    @IBAction func clickButtonCounter(_ sender: Any) {

        viewLabelButtonCounter.text =  getCountClick()
    }
    
    @IBOutlet weak var viewLabelButtonCounter: UILabel!
    
    func getAddCounter()->String{
        cnt += 1
        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm"
        return "\(dateFormatter.string(from: getDate)) значение изменено на +1 :\(cnt)"
    }
    
    func getSubstractionCounter()->String{
        cnt -= 1
        if cnt >= 0 {
        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm"
        return "\(dateFormatter.string(from: getDate)) значение изменено на -1 :\(cnt)"
    }
    else{
        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm"
        return "\(dateFormatter.string(from: getDate)) попытка уменьшить значение счётчика ниже 0 :\(cnt)"
    }
    }
    
    @IBAction func additionButton(_ sender: Any) {
        viewCounter.text = getAddCounter()
    }
    
    @IBAction func subtractionButton(_ sender: Any) {
        viewCounter.text = getSubstractionCounter()
    }
    
    @IBOutlet weak var viewCounter: UILabel!
    
    func RestartCount()-> String{
        cnt = 0
        return "\(dateFormatter.string(from: getDate)) значение сброшено"
    }
    
    @IBAction func RestartButton(_ sender: Any) {
        viewCounter.text = RestartCount()
    }
}
