//
//  ViewController.swift
//  Actividad3_Damian
//
//  Created by Alumno on 08/02/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Image: UIImageView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var redNumber: UILabel!
    @IBOutlet weak var greenNumber: UILabel!
    @IBOutlet weak var blueNumber: UILabel!
    @IBOutlet weak var alphaNumber: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redLabel.text = "Rojo"
        greenLabel.text = "Verde"
        blueLabel.text = "Azul"
        alphaLabel.text = "Label"
        redNumber.text = "0"
        greenNumber.text = "0"
        blueNumber.text = "0"
        alphaNumber.text = "0"
    }
    @IBAction func SliderValue(_ sender: Any) {
        updateImgColor()
        updateColorLabels()
    }
    
    func updateImgColor(){
        let red = CGFloat(redSlider.value)
        let blue = CGFloat(blueSlider.value)
        let green = CGFloat(greenSlider.value)
        let alpha = CGFloat(alphaSlider.value)
        Image.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
    func updateColorLabels(){
        redNumber.text = "R: \(Int(redSlider.value * 255))"
        greenNumber.text = "G: \(Int(greenSlider.value * 255))"
        blueNumber.text = "B: \(Int(blueSlider.value * 255))"
        alphaNumber.text = "A: \(String(format: "%.2f", alphaSlider.value))"
    }
}

