//
//  ReptileViewController.swift
//  Hutan Guide
//
//  Created by rsbj on 18/05/22.
//

import UIKit

class ReptileViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        headerReptileImage.translatesAutoresizingMaskIntoConstraints = false
        titleReptileLabel.translatesAutoresizingMaskIntoConstraints = false
        contentReptileText.translatesAutoresizingMaskIntoConstraints = false
        // Deactivates the default resizing of the elements

        headerReptileImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        headerReptileImage.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        headerReptileImage.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        headerReptileImage.heightAnchor.constraint(equalToConstant: self.view.frame.height/4.5).isActive = true
        // AutoLayouting the X, Y, height and width of the header image
        
        self.view.addConstraint(NSLayoutConstraint(item: titleReptileLabel!, attribute: .bottom, relatedBy: .equal, toItem: headerReptileImage, attribute: .bottom, multiplier: 1.0, constant: -10))
        self.view.addConstraint(NSLayoutConstraint(item: titleReptileLabel!, attribute: .left, relatedBy: .equal, toItem: headerReptileImage, attribute: .left, multiplier: 1.0, constant: 20))
        titleReptileLabel.widthAnchor.constraint(equalToConstant: self.view.frame.width*0.8).isActive =  true
        titleReptileLabel.heightAnchor.constraint(equalToConstant: self.view.frame.height/8).isActive = true
        // AutoLayouting the X, Y, height and width of the title
        
        self.view.addConstraint(NSLayoutConstraint(item: contentReptileText!, attribute: .top, relatedBy: .equal, toItem: headerReptileImage, attribute: .bottom, multiplier: 1.0, constant: 5))
        self.view.addConstraint(NSLayoutConstraint(item: contentReptileText!, attribute: .left, relatedBy: .equal, toItem: headerReptileImage, attribute: .left, multiplier: 1.0, constant: 5))
        contentReptileText.widthAnchor.constraint(equalToConstant: self.view.frame.width-10).isActive =  true
        contentReptileText.heightAnchor.constraint(equalToConstant: self.view.frame.height/1.5).isActive = true
        // AutoLayouting the X, Y, height and width of the text content

    }
    
    @IBOutlet weak var headerReptileImage: UIImageView!
    @IBOutlet weak var titleReptileLabel: UILabel!
    @IBOutlet weak var contentReptileText: UITextView!
    
}
