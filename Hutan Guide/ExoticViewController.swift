//
//  ExoticViewController.swift
//  Hutan Guide
//
//  Created by rsbj on 18/05/22.
//

import UIKit

class ExoticViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        headerExoticImage.translatesAutoresizingMaskIntoConstraints = false
        titleExoticLabel.translatesAutoresizingMaskIntoConstraints = false
        contentExoticText.translatesAutoresizingMaskIntoConstraints = false
        // Deactivates the default resizing of the elements

        headerExoticImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        headerExoticImage.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        headerExoticImage.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        headerExoticImage.heightAnchor.constraint(equalToConstant: self.view.frame.height/4.5).isActive = true
        // AutoLayouting the X, Y, height and width of the header image
        
        self.view.addConstraint(NSLayoutConstraint(item: titleExoticLabel!, attribute: .bottom, relatedBy: .equal, toItem: headerExoticImage, attribute: .bottom, multiplier: 1.0, constant: -10))
        self.view.addConstraint(NSLayoutConstraint(item: titleExoticLabel!, attribute: .left, relatedBy: .equal, toItem: headerExoticImage, attribute: .left, multiplier: 1.0, constant: 20))
        titleExoticLabel.widthAnchor.constraint(equalToConstant: self.view.frame.width*0.8).isActive =  true
        titleExoticLabel.heightAnchor.constraint(equalToConstant: self.view.frame.height/8).isActive = true
        // AutoLayouting the X, Y, height and width of the title
        
        self.view.addConstraint(NSLayoutConstraint(item: contentExoticText!, attribute: .top, relatedBy: .equal, toItem: headerExoticImage, attribute: .bottom, multiplier: 1.0, constant: 5))
        self.view.addConstraint(NSLayoutConstraint(item: contentExoticText!, attribute: .left, relatedBy: .equal, toItem: headerExoticImage, attribute: .left, multiplier: 1.0, constant: 5))
        contentExoticText.widthAnchor.constraint(equalToConstant: self.view.frame.width-10).isActive =  true
        contentExoticText.heightAnchor.constraint(equalToConstant: self.view.frame.height/1.5).isActive = true
        // AutoLayouting the X, Y, height and width of the text content

    }
    
    @IBOutlet weak var headerExoticImage: UIImageView!
    @IBOutlet weak var titleExoticLabel: UILabel!
    @IBOutlet weak var contentExoticText: UITextView!
    
}

