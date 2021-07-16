//
//  ViewController.swift
//  Palette
//
//  Created by Leo Ho on 2021/7/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var paletteView: UIView!
    @IBOutlet var redTF: UITextField!
    @IBOutlet var greenTF: UITextField!
    @IBOutlet var blueTF: UITextField!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // 點擊空白處關閉鍵盤
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    // MARK: - 透過 Slider 來改變 paletteView 的背景色
    
    @IBAction func redSliderChanged(_ sender: UISlider) {
        redTF.text = "\(Int(sender.value))"
        sender.minimumTrackTintColor = UIColor(red: CGFloat(redSlider.value/255), green: 0, blue: 0, alpha: 1) // 邊拉邊改變 Slider 顏色，由左至右
        sender.thumbTintColor = UIColor(red: CGFloat(redSlider.value/255), green: 0, blue: 0, alpha: 1) // 邊拉邊改變 Slider 圓圈的顏色
        paletteView.backgroundColor = UIColor(red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255),alpha: 1)
    }
    
    @IBAction func greenSliderChanged(_ sender: UISlider) {
        greenTF.text = "\(Int(sender.value))"
        sender.minimumTrackTintColor = UIColor(red: 0, green: CGFloat(greenSlider.value/255), blue: 0, alpha: 1) // 邊拉邊改變 Slider 顏色，由左至右
        sender.thumbTintColor = UIColor(red: 0, green: CGFloat(greenSlider.value/255), blue: 0, alpha: 1) // 邊拉邊改變 Slider 圓圈的顏色
        paletteView.backgroundColor = UIColor(red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255),alpha: 1)
    }

    @IBAction func blueSliderChanged(_ sender: UISlider) {
        blueTF.text = "\(Int(sender.value))"
        sender.minimumTrackTintColor = UIColor(red: 0, green: 0, blue: CGFloat(blueSlider.value/255), alpha: 1) // 邊拉邊改變 Slider 顏色，由左至右
        sender.thumbTintColor = UIColor(red: 0, green: 0, blue: CGFloat(blueSlider.value/255), alpha: 1) // 邊拉邊改變 Slider 圓圈的顏色
        paletteView.backgroundColor = UIColor(red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255),alpha: 1)
    }
    
    // MARK: - 透過 TextField 給值來改變 paletteView 的背景色及 Slider 位置
    
    @IBAction func redTextFieldChanged(_ sender: UITextField) {
        redSlider.value = textFieldValueToSliderValue(num: sender.text!)
        paletteView.backgroundColor = UIColor(red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255),alpha: 1)
    }
    
    @IBAction func greenTextFieldChanged(_ sender: UITextField) {
        greenSlider.value = textFieldValueToSliderValue(num: sender.text!)
        paletteView.backgroundColor = UIColor(red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255),alpha: 1)
    }
    
    @IBAction func blueTextFieldChanged(_ sender: UITextField) {
        blueSlider.value = textFieldValueToSliderValue(num: sender.text!)
        paletteView.backgroundColor = UIColor(red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255),alpha: 1)
    }
    
    // MARK: - 將 TextField 的值轉為 Slider 可接受的型態
    
    var result: Float = 0
    
    func textFieldValueToSliderValue(num: String) -> Float {
        result = Float(num)!
        return result
    }
}

