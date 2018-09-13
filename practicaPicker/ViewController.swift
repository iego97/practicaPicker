//
//  ViewController.swift
//  practicaPicker
//
//  Created by Alumno on 13/09/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    let categorias = ["Animales Salvajes","Granja","transporte", "instrumento", "Colores", "Morado"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return categorias.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return categorias[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch row{
            
        case 0:
              view.backgroundColor = UIColor.red
        case 1:
            imageView.image = UIImage(named: "farm.jpg")
        case 2:
            imageView.image = UIImage(named: "colores.jpg")
    
    
            
            
        default:
            break
        }
    
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.red
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

