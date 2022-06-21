//
//  BirdViewController.swift
//  Hutan Guide
//
//  Created by rsbj on 18/05/22.
//

import UIKit

class BirdViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        headerBirdImage.translatesAutoresizingMaskIntoConstraints = false
        titleBirdLabel.translatesAutoresizingMaskIntoConstraints = false
        contentBirdText.translatesAutoresizingMaskIntoConstraints = false
        // Deactivates the default resizing of the elements

        headerBirdImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        headerBirdImage.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        headerBirdImage.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        headerBirdImage.heightAnchor.constraint(equalToConstant: self.view.frame.height/4.5).isActive = true
        // AutoLayouting the X, Y, height and width of the header image
        
        self.view.addConstraint(NSLayoutConstraint(item: titleBirdLabel!, attribute: .bottom, relatedBy: .equal, toItem: headerBirdImage, attribute: .bottom, multiplier: 1.0, constant: -10))
        self.view.addConstraint(NSLayoutConstraint(item: titleBirdLabel!, attribute: .left, relatedBy: .equal, toItem: headerBirdImage, attribute: .left, multiplier: 1.0, constant: 20))
        titleBirdLabel.widthAnchor.constraint(equalToConstant: self.view.frame.width*0.8).isActive =  true
        titleBirdLabel.heightAnchor.constraint(equalToConstant: self.view.frame.height/8).isActive = true
        // AutoLayouting the X, Y, height and width of the title
        
        self.view.addConstraint(NSLayoutConstraint(item: contentBirdText!, attribute: .top, relatedBy: .equal, toItem: headerBirdImage, attribute: .bottom, multiplier: 1.0, constant: 5))
        self.view.addConstraint(NSLayoutConstraint(item: contentBirdText!, attribute: .left, relatedBy: .equal, toItem: headerBirdImage, attribute: .left, multiplier: 1.0, constant: 5))
        contentBirdText.widthAnchor.constraint(equalToConstant: self.view.frame.width-10).isActive =  true
        contentBirdText.heightAnchor.constraint(equalToConstant: self.view.frame.height/1.5).isActive = true
        // AutoLayouting the X, Y, height and width of the text content

    }
    
    @IBOutlet weak var headerBirdImage: UIImageView!
    @IBOutlet weak var titleBirdLabel: UILabel!
    @IBOutlet weak var contentBirdText: UITextView!
    
}

