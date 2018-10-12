//
//  ViewController.swift
//  Image receiver
//
//  Created by Sergius on 03/10/2018.
//  Copyright © 2018 Sergius. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var noPhotoStackView: UIStackView!
    @IBOutlet weak var photo: UIImageView!
    
    var imageData: Data! {
        willSet {
            photo.image = UIImage(data: newValue)
            noPhotoStackView.isHidden = true
        }
    }
    
    @IBAction func goToWebSender(_ sender: UIButton) {
        let url = URL(string: "https://letsdonothing.github.io/web-photo-sender")
        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
    }
}
