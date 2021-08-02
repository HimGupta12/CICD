//
//  ViewController.swift
//  CICD Test
//
//  Created by Himani Gupta 5 on 02/08/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLBL: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let env = getEnvValue() {
            nameLBL.text = env
        } else {
            nameLBL.text = "SOMETHING WENT WRONG"
        }
        // Do any additional setup after loading the view.
    }

    func getEnvValue() -> String? {
        return Bundle.main.object(forInfoDictionaryKey: "EnvVar") as? String
    }
}

