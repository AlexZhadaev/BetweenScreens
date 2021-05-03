//
//  ViewController.swift
//  BetweenScreens
//
//  Created by Жадаев Алексей on 03.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "firstToSecondViewSegueIdentifier", sender: nil)
    }
    
    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue) {
        guard segue.identifier == "unwindSegueIdentifier" else { return }
        guard let sourceViewController = segue.source as? SecondViewController else { return }
        resultLabel.text = sourceViewController.textLabel.text
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationViewController = segue.destination as? SecondViewController else { return }
        destinationViewController.login = loginTextField.text
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

