//
//  DomesticViewController.swift
//  Hutan Guide
//
//  Created by rsbj on 18/05/22.
//

import UIKit

class DomesticViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        headerDomesticImage.translatesAutoresizingMaskIntoConstraints = false
        titleDomesticLabel.translatesAutoresizingMaskIntoConstraints = false
        contentDomesticText.translatesAutoresizingMaskIntoConstraints = false
        // Deactivates the default resizing of the elements

        headerDomesticImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        headerDomesticImage.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        headerDomesticImage.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        headerDomesticImage.heightAnchor.constraint(equalToConstant: self.view.frame.height/4.5).isActive = true
        // AutoLayouting the X, Y, height and width of the header image
        
        self.view.addConstraint(NSLayoutConstraint(item: titleDomesticLabel!, attribute: .bottom, relatedBy: .equal, toItem: headerDomesticImage, attribute: .bottom, multiplier: 1.0, constant: -10))
        self.view.addConstraint(NSLayoutConstraint(item: titleDomesticLabel!, attribute: .left, relatedBy: .equal, toItem: headerDomesticImage, attribute: .left, multiplier: 1.0, constant: 20))
        titleDomesticLabel.widthAnchor.constraint(equalToConstant: self.view.frame.width*0.8).isActive =  true
        titleDomesticLabel.heightAnchor.constraint(equalToConstant: self.view.frame.height/8).isActive = true
        // AutoLayouting the X, Y, height and width of the title
        
        self.view.addConstraint(NSLayoutConstraint(item: contentDomesticText!, attribute: .top, relatedBy: .equal, toItem: headerDomesticImage, attribute: .bottom, multiplier: 1.0, constant: 5))
        self.view.addConstraint(NSLayoutConstraint(item: contentDomesticText!, attribute: .left, relatedBy: .equal, toItem: headerDomesticImage, attribute: .left, multiplier: 1.0, constant: 5))
        contentDomesticText.widthAnchor.constraint(equalToConstant: self.view.frame.width-10).isActive =  true
        contentDomesticText.heightAnchor.constraint(equalToConstant: self.view.frame.height/1.5).isActive = true
        // AutoLayouting the X, Y, height and width of the text content

    }
    
    @IBOutlet weak var headerDomesticImage: UIImageView!
    @IBOutlet weak var titleDomesticLabel: UILabel!
    @IBOutlet weak var contentDomesticText: UITextView!
    
}
