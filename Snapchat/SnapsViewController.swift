//
//  SnapsViewController.swift
//  Snapchat
//
//  Created by Joseph Commisso on 8/1/17.
//  Copyright © 2017 Joseph Commisso. All rights reserved.
//

import UIKit

class SnapsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func logoutTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
