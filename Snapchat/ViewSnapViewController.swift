//
//  ViewSnapViewController.swift
//  Snapchat
//
//  Created by Joseph Commisso on 8/1/17.
//  Copyright © 2017 Joseph Commisso. All rights reserved.
//

import UIKit
import Firebase
import SDWebImage

class ViewSnapViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var snap = Snap()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = snap.snapDescription
        
        imageView.sd_setImage(with: URL(string: snap.imageURL))
        
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        Database.database().reference().child("users").child(Auth.auth().currentUser!.uid).child("snaps").child(snap.key).removeValue()
        Storage.storage().reference().child("images").child("\(snap.uuid).jpg").delete { (error) in
            print("Picture deleted")
        }
    }
    
}
