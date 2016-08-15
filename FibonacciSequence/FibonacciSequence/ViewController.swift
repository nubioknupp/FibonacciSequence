//
//  ViewController.swift
//  FibonacciSequence
//
//  Created by Nubio Knupp on 14/08/16.
//  Copyright © 2016 Nubio Knupp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tamanhoTextBox : UITextField!;
    @IBOutlet var resultadoTextView: UITextView!;
    
    @IBAction func Calcular(){
        var numero = (0, 1);
        let tamanho : Int = Int(tamanhoTextBox.text!)! - 2;
        var fibonacci:[Int] = [numero.0, numero.1];
        
        for _ in 1...tamanho {
            numero = (numero.1, numero.0 + numero.1);
            fibonacci.append(numero.1);
        }
    
        resultadoTextView.text = String(fibonacci);
    }
    


}

