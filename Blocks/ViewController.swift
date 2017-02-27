//
//  ViewController.swift
//  Blocks
//
//  Created by Michael Buss Andersen on 23/02/2017.
//  Copyright © 2017 NoobLabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func newAlertAction(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let editorViewController = storyboard.instantiateViewController(withIdentifier: "editorViewControllerID")
        
        let newAlert = UIAlertController(title: "New program 🤖", message: "Give it a name", preferredStyle: .alert)
        
        newAlert.addTextField { (textField:UITextField) in
            textField.placeholder = "Enter name here"
            textField.text = "New program"
        }
        
        newAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action:UIAlertAction) in
            
            if let textField = newAlert.textFields?.first {
                if textField.text == "" {
                    //if no text is entered
                    editorViewController.title = "New Program" //No text given, therefore generic title
                    self.navigationController?.pushViewController(editorViewController, animated: true)
                }else{
                    //if text is entered
                    editorViewController.title = textField.text //Text from textfield becomes title
                    self.navigationController?.pushViewController(editorViewController, animated: true)
                }
            }
            
            
        }))
        
        newAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        self.present(newAlert, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func pushStoryBoardWithTitle(viewControllerID: UIViewController, title: String) {
        print("nothing here yet")
    }

}

