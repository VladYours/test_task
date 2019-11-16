//
//  ViewController.swift
//  test_task
//
//  Created by Admin on 11/16/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    


    @IBOutlet weak var value: UITextField!
    //calc and show
    @IBOutlet weak var answer: UILabel!

    
    @IBAction func calcFact(_ sender: Any) {
        
        let operation : Factorize = Factorize()
        
        if ( value.text!.isEmpty) {
            answer.text = "Enter Int value"
        } else {
            let x = Int(value.text!)!
            let res = operation.factor(x: x)
            print(res)
            answer.text = res
        }
        
    }
 
    
    
    func intstr(_ a: Int) -> String {
        return String(a)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }


}


class Factorize {
    
    //method for factorial of any Int value
    
   public func factor(x : Int) -> String {
        var t : Int = x
        var i : Int = 2
        var res : [String] = []
        var out = ""
        while ( i <= t) {
            if (t % i == 0){
                res.append(String(i))
                t = Int(t/i)
            } else {
                i += 1
            }
        }
        out = res.joined(separator: ", ")
        return out
    }
    
}

