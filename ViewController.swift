//
//  ViewController.swift
//  calculator
//
//  Created by foldi bence on 2020. 10. 29..
//

import UIKit

class ViewController: UIViewController {

    var elso = ""
    var masodik = ""
    var function = ""
    var result = 0.0
    var userInput = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBOutlet weak var calcdisplay: UILabel!
    
    
    @IBAction func clearbttn(_ sender: Any) {
        elso = ""
        masodik = ""
        function = ""
        userInput = ""
        result = 0.0
        calcdisplay.text = "0"
    }
    @IBAction func osztasbttn(_ sender: Any) {
        function = "/"
        elso = userInput
        userInput =  ""
    }
    @IBAction func szorzasbttn(_ sender: Any) {
        function = "*"
        elso = userInput
        userInput =  ""
    }
    @IBAction func kivonasbttn(_ sender: Any) {
        function = "-"
        elso = userInput
        userInput =  ""
    }
    @IBAction func osszeadasbttn(_ sender: Any) {
        function = "+"
        elso = userInput
        userInput =  ""
    }
    @IBAction func equalbttn(_ sender: Any) {
        masodik = userInput
        var firstinput = 0.0
        var secondinput = 0.0
        firstinput = Double(elso)!
        secondinput = Double(masodik)!
        
        if(function=="+")
        {
            result = firstinput + secondinput
            calcdisplay.text = String(result)
        }
        else if(function == "-")
        {
            result = firstinput - secondinput
            calcdisplay.text = String(result)
        }
        else if(function == "*")
        {
            result = firstinput * secondinput
            calcdisplay.text = String(result)
        }
        else
        {
            result = firstinput / secondinput
            calcdisplay.text = String(result)
        }
    }
    @IBAction func decimalbttn(_ sender: Any) {
        userInput += "."
        calcdisplay.text! += "."
    }
    @IBAction func zerobttn(_ sender: Any) {
        calcdisplay.text = "0"
        userInput += "0"
        calcdisplay.text! = userInput
    }
    @IBAction func onebttn(_ sender: Any) {
        calcdisplay.text = ""
        userInput += "1"
        calcdisplay.text! += userInput
    }
    @IBAction func twobttn(_ sender: Any) {
        calcdisplay.text = ""
        userInput += "2"
        calcdisplay.text! += userInput
    }
    @IBAction func threebttn(_ sender: Any) {
        calcdisplay.text = ""
        userInput += "3"
        calcdisplay.text! += userInput
    }
    @IBAction func fourbttn(_ sender: Any) {
        calcdisplay.text = ""
        userInput += "4"
        calcdisplay.text! += userInput
    }
    @IBAction func fivebttn(_ sender: Any) {
        calcdisplay.text = ""
        userInput += "5"
        calcdisplay.text! += userInput
    }
    @IBAction func sixbttn(_ sender: Any) {
        calcdisplay.text = ""
        userInput += "6"
        calcdisplay.text! += userInput
    }
    @IBAction func sevenbttn(_ sender: Any) {
        calcdisplay.text = ""
        userInput += "7"
        calcdisplay.text! += userInput
    }
    @IBAction func eightbttn(_ sender: Any) {
        calcdisplay.text = ""
        userInput += "8"
        calcdisplay.text! += userInput
    }
    @IBAction func ninebttn(_ sender: Any) {
        calcdisplay.text = ""
        userInput += "9"
        calcdisplay.text! += userInput
    }
    
    
}

