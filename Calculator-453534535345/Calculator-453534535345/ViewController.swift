//
//  ViewController.swift
//  Calculator-453534535345
//
//  Created by Павел Анплеенко on 10/05/16.
//  Copyright © 2016 Pavel Anpleenko. All rights reserved.
//


// 1. Добавить Label (+)
// 2. Добавить iuview (+)
// 3. Добавить цифры (+)
// 4. Написать код чтобы выводилился текст на экране по нажатию на цифры (+)
// 5. Отрезать трое точие когда цифр много

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var displayResultLabel: UILabel!
  @IBAction func numberButton(sender: UIButton) {
    
    let number = sender.currentTitle! //получает значение при нажатии на кнопку
    
    displayResultLabel.text = displayResultLabel.text! + number // Мы хотим чтобы displayResultLabel отобразил свой текст + вывел значение полученные из цифр
    
  }
  
}

