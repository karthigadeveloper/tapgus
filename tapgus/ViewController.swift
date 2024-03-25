//
//  ViewController.swift
//  tapgus
//
//  Created by Karthiga on 11/30/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstview: UIView!
    @IBOutlet weak var imgfirst: UIImageView!
    @IBOutlet weak var secondview: UIView!
    @IBOutlet weak var imgsecond: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstview.tag = 1
        secondview.tag = 2
        
        
        firstview.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.tap(_:))))
        firstview.isUserInteractionEnabled = true
        
        secondview.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.tap(_:))))
        secondview.isUserInteractionEnabled = true
    }
    
    @objc func tap(_ gestureRecognizer: UITapGestureRecognizer) {
            let a = gestureRecognizer.view?.tag
        switch a! {
        case 1:
            imgfirst.image = UIImage(named: "img1")
        case 2:
            imgsecond.image = UIImage(named: "img2")
        default:
            print("image")
        }
    }

}

