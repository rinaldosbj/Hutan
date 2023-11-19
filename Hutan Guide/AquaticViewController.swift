//
//  AquaticViewController.swift
//  Hutan Guide
//
//  Created by rsbj on 18/05/22.
//

import UIKit

class AquaticViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        headerAquaticImage.translatesAutoresizingMaskIntoConstraints = false
        titleAquaticLabel.translatesAutoresizingMaskIntoConstraints = false
        contentAquaticText.translatesAutoresizingMaskIntoConstraints = false
        // Deactivates the default resizing of the elements

        headerAquaticImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        headerAquaticImage.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        headerAquaticImage.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        headerAquaticImage.heightAnchor.constraint(equalToConstant: self.view.frame.height/4.5).isActive = true
        // AutoLayouting the X, Y, height and width of the header image
        
        self.view.addConstraint(NSLayoutConstraint(item: titleAquaticLabel!, attribute: .bottom, relatedBy: .equal, toItem: headerAquaticImage, attribute: .bottom, multiplier: 1.0, constant: -10))
        self.view.addConstraint(NSLayoutConstraint(item: titleAquaticLabel!, attribute: .left, relatedBy: .equal, toItem: headerAquaticImage, attribute: .left, multiplier: 1.0, constant: 20))
        titleAquaticLabel.widthAnchor.constraint(equalToConstant: self.view.frame.width*0.8).isActive =  true
        titleAquaticLabel.heightAnchor.constraint(equalToConstant: self.view.frame.height/8).isActive = true
        // AutoLayouting the X, Y, height and width of the title
        
        self.view.addConstraint(NSLayoutConstraint(item: contentAquaticText!, attribute: .top, relatedBy: .equal, toItem: headerAquaticImage, attribute: .bottom, multiplier: 1.0, constant: 5))
        self.view.addConstraint(NSLayoutConstraint(item: contentAquaticText!, attribute: .left, relatedBy: .equal, toItem: headerAquaticImage, attribute: .left, multiplier: 1.0, constant: 5))
        contentAquaticText.widthAnchor.constraint(equalToConstant: self.view.frame.width-10).isActive =  true
        contentAquaticText.heightAnchor.constraint(equalToConstant: self.view.frame.height/1.5).isActive = true
        // AutoLayouting the X, Y, height and width of the text content

    }
    
    @IBOutlet weak var headerAquaticImage: UIImageView!
    @IBOutlet weak var titleAquaticLabel: UILabel!
    @IBOutlet weak var contentAquaticText: UITextView!
    
}
