//
//  ViewController.swift
//  swift-000-basic
//
//  Created by Luiz Carlos da Silva Araujo on 16/08/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
  
  @IBOutlet weak var textField: UITextField!
  @IBOutlet weak var label: UILabel!
  
  var newUserName: String = ""
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  
  @IBAction func changeGreeting(_ sender: Any) {
    
    newUserName = self.textField.text ?? ""
    self.label.text = newUserName
    
  }
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    
    if textField == self.textField {
      textField.resignFirstResponder()
    }
    
    return true
  }

}

