//
//  BugViewController.swift
//  Hutan Guide
//
//  Created by rsbj on 18/05/22.
//

import UIKit

class BugViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        headerBugImage.translatesAutoresizingMaskIntoConstraints = false
        titleBugLabel.translatesAutoresizingMaskIntoConstraints = false
        contentBugText.translatesAutoresizingMaskIntoConstraints = false
        // Deactivates the default resizing of the elements

        headerBugImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        headerBugImage.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        headerBugImage.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        headerBugImage.heightAnchor.constraint(equalToConstant: self.view.frame.height/4.5).isActive = true
        // AutoLayouting the X, Y, height and width of the header image
        
        self.view.addConstraint(NSLayoutConstraint(item: titleBugLabel!, attribute: .bottom, relatedBy: .equal, toItem: headerBugImage, attribute: .bottom, multiplier: 1.0, constant: -10))
        self.view.addConstraint(NSLayoutConstraint(item: titleBugLabel!, attribute: .left, relatedBy: .equal, toItem: headerBugImage, attribute: .left, multiplier: 1.0, constant: 20))
        titleBugLabel.widthAnchor.constraint(equalToConstant: self.view.frame.width*0.8).isActive =  true
        titleBugLabel.heightAnchor.constraint(equalToConstant: self.view.frame.height/8).isActive = true
        // AutoLayouting the X, Y, height and width of the title
        
        self.view.addConstraint(NSLayoutConstraint(item: contentBugText!, attribute: .top, relatedBy: .equal, toItem: headerBugImage, attribute: .bottom, multiplier: 1.0, constant: 5))
        self.view.addConstraint(NSLayoutConstraint(item: contentBugText!, attribute: .left, relatedBy: .equal, toItem: headerBugImage, attribute: .left, multiplier: 1.0, constant: 5))
        contentBugText.widthAnchor.constraint(equalToConstant: self.view.frame.width-10).isActive =  true
        contentBugText.heightAnchor.constraint(equalToConstant: self.view.frame.height/1.5).isActive = true
        // AutoLayouting the X, Y, height and width of the text content

    }
    
    @IBOutlet weak var headerBugImage: UIImageView!
    @IBOutlet weak var titleBugLabel: UILabel!
    @IBOutlet weak var contentBugText: UITextView!
    
}

