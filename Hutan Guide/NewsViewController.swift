//
//  ViewController.swift
//  Hutan Guide
//
//  Created by rsbj on 16/05/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
     
        infoTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        headerImage.translatesAutoresizingMaskIntoConstraints = false
        newsText.translatesAutoresizingMaskIntoConstraints = false
        newsImage.translatesAutoresizingMaskIntoConstraints = false
        // Deactivates the default resizing of the elements

        headerImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        headerImage.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        headerImage.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        headerImage.heightAnchor.constraint(equalToConstant: self.view.frame.height/5).isActive = true
        // AutoLayouting the X, Y, height and width of the header image
        
        self.view.addConstraint(NSLayoutConstraint(item: infoTitleLabel!, attribute: .bottom, relatedBy: .equal, toItem: headerImage, attribute: .bottom, multiplier: 1.0, constant: -10))
        self.view.addConstraint(NSLayoutConstraint(item: infoTitleLabel!, attribute: .left, relatedBy: .equal, toItem: headerImage, attribute: .left, multiplier: 1.0, constant: 20))
        infoTitleLabel.widthAnchor.constraint(equalToConstant: self.view.frame.width*0.8).isActive =  true
        infoTitleLabel.heightAnchor.constraint(equalToConstant: self.view.frame.height/8).isActive = true
        // AutoLayouting the X, Y, height and width of the title
        
        self.view.addConstraint(NSLayoutConstraint(item: newsText!, attribute: .top, relatedBy: .equal, toItem: newsImage, attribute: .bottom, multiplier: 1.0, constant: 5))
        self.view.addConstraint(NSLayoutConstraint(item: newsText!, attribute: .left, relatedBy: .equal, toItem: headerImage, attribute: .left, multiplier: 1.0, constant: 10))
        self.view.addConstraint(NSLayoutConstraint(item: newsImage!, attribute: .top, relatedBy: .equal, toItem: headerImage, attribute: .bottom, multiplier: 1.0, constant: 5))
        self.view.addConstraint(NSLayoutConstraint(item: newsImage!, attribute: .left, relatedBy: .equal, toItem: headerImage, attribute: .left, multiplier: 1.0, constant: 10))
        newsText.widthAnchor.constraint(equalToConstant: self.view.frame.width-20).isActive =  true
        newsImage.widthAnchor.constraint(equalToConstant: self.view.frame.width-20).isActive =  true
        newsText.heightAnchor.constraint(equalToConstant: self.view.frame.height/2).isActive = true
        newsImage.heightAnchor.constraint(equalToConstant: self.view.frame.height/5.5).isActive = true
        // AutoLayouting the X, Y, height and width of the image and text content

      
    }
    
    @IBOutlet weak var infoTitleLabel: UILabel!
    @IBOutlet weak var headerImage: UIImageView!
    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var newsText: UITextView!
    
}

