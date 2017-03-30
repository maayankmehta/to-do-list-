//
//  SecondViewController.swift
//  ToDoList
//
//  Created by Mayank Mehta on 30/03/17.
//  Copyright © 2017 Mayank Mehta. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var inputToDoText: UITextField!
    @IBAction func saveButton(_ sender: Any) {
        let itemObjects = UserDefaults.standard.object(forKey: "items")
        var items:[String]
        
        if let checkObjects = itemObjects as? [String]{
            items = checkObjects
            items.append(inputToDoText.text!)
        }
        else{
            items = [inputToDoText.text!]
        }
        inputToDoText.text = " "
        UserDefaults.standard.set(items, forKey: "items")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

