//
//  SecondViewController.swift
//  BetweenScreens
//
//  Created by Жадаев Алексей on 03.05.2021.
//

import UIKit

class SecondViewController: UIViewController {

    var login: String?
    
    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let login = login else { return }
        textLabel.text = "Hello, \(login)!"
    }
    
    @IBAction func goBackButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindSegueIdentifier", sender: nil)
    }
    
}
