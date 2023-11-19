//
//  GuideViewController.swift
//  Hutan Guide
//
//  Created by rsbj on 18/05/22.
//

import UIKit

class GuideViewController : UIViewController {
    
    // HEADER
    @IBOutlet weak var titleGuideLabel: UILabel!
    @IBOutlet weak var subtitleGuideLabel: UILabel!
    @IBOutlet weak var headerGuideImage: UIImageView!
    // BUTTONS
    @IBOutlet weak var domesticButton: UIButton!
    @IBOutlet weak var reptileButton: UIButton!
    @IBOutlet weak var birdButton: UIButton!
    @IBOutlet weak var aquaticButton: UIButton!
    @IBOutlet weak var bugButton: UIButton!
    @IBOutlet weak var exoticButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        headerGuideImage.translatesAutoresizingMaskIntoConstraints = false
        titleGuideLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleGuideLabel.translatesAutoresizingMaskIntoConstraints = false
        // Deactivates the default resizing of the elements
        
        headerGuideImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        headerGuideImage.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        headerGuideImage.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        headerGuideImage.heightAnchor.constraint(equalToConstant: self.view.frame.height/3).isActive = true
        // AutoLayouting the X, Y, height and width of the header image
        
        subtitleGuideLabel.widthAnchor.constraint(equalToConstant: self.view.frame.width*0.8).isActive =  true
        titleGuideLabel.widthAnchor.constraint(equalToConstant: self.view.frame.width*0.8).isActive =  true
        subtitleGuideLabel.heightAnchor.constraint(equalToConstant: self.view.frame.height/10).isActive = true
        titleGuideLabel.heightAnchor.constraint(equalToConstant: self.view.frame.height/7).isActive = true
        self.view.addConstraint(NSLayoutConstraint(item: subtitleGuideLabel!, attribute: .bottom, relatedBy: .equal, toItem: headerGuideImage, attribute: .bottom, multiplier: 1.0, constant: -20))
        self.view.addConstraint(NSLayoutConstraint(item: subtitleGuideLabel!, attribute: .left, relatedBy: .equal, toItem: headerGuideImage, attribute: .left, multiplier: 1.0, constant: 20))
        self.view.addConstraint(NSLayoutConstraint(item: titleGuideLabel!, attribute: .bottom, relatedBy: .equal, toItem: subtitleGuideLabel, attribute: .top, multiplier: 1.0, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: titleGuideLabel!, attribute: .left, relatedBy: .equal, toItem: headerGuideImage, attribute: .left, multiplier: 1.0, constant: 20))
        // AutoLayouting the X, Y, height and width of the tittle and subtitle
        
        
        
        domesticButton.translatesAutoresizingMaskIntoConstraints = false
        reptileButton.translatesAutoresizingMaskIntoConstraints = false
        birdButton.translatesAutoresizingMaskIntoConstraints = false
        aquaticButton.translatesAutoresizingMaskIntoConstraints = false
        bugButton.translatesAutoresizingMaskIntoConstraints = false
        exoticButton.translatesAutoresizingMaskIntoConstraints = false
        // Deactivates the default resizing of the elements
        
        self.view.addConstraint(NSLayoutConstraint(item: domesticButton!, attribute: .left, relatedBy: .equal, toItem: headerGuideImage, attribute: .left, multiplier: 1.0, constant: 20))
        self.view.addConstraint(NSLayoutConstraint(item: birdButton!, attribute: .left, relatedBy: .equal, toItem: headerGuideImage, attribute: .left, multiplier: 1.0, constant: 20))
        self.view.addConstraint(NSLayoutConstraint(item: bugButton!, attribute: .left, relatedBy: .equal, toItem: headerGuideImage, attribute: .left, multiplier: 1.0, constant: 20))
        // AutoLayouting the X of the left buttons
        
        self.view.addConstraint(NSLayoutConstraint(item: domesticButton!, attribute: .top, relatedBy: .equal, toItem: headerGuideImage, attribute: .bottom, multiplier: 1.0, constant: 10))
        self.view.addConstraint(NSLayoutConstraint(item: birdButton!, attribute: .top, relatedBy: .equal, toItem: domesticButton, attribute: .bottom, multiplier: 1.0, constant: 10))
        self.view.addConstraint(NSLayoutConstraint(item: bugButton!, attribute: .top, relatedBy: .equal, toItem: birdButton, attribute: .bottom, multiplier: 1.0, constant: 10))
        // AutoLayouting the Y of the left buttons
        
        self.view.addConstraint(NSLayoutConstraint(item: reptileButton!, attribute: .right, relatedBy: .equal, toItem: headerGuideImage, attribute: .right, multiplier: 1.0, constant: -20))
        self.view.addConstraint(NSLayoutConstraint(item: aquaticButton!, attribute: .right, relatedBy: .equal, toItem: headerGuideImage, attribute: .right, multiplier: 1.0, constant: -20))
        self.view.addConstraint(NSLayoutConstraint(item: exoticButton!, attribute: .right, relatedBy: .equal, toItem: headerGuideImage, attribute: .right, multiplier: 1.0, constant: -20))
        // AutoLayouting the X of the right buttons
        
        self.view.addConstraint(NSLayoutConstraint(item: reptileButton!, attribute: .top, relatedBy: .equal, toItem: headerGuideImage, attribute: .bottom, multiplier: 1.0, constant: 10))
        self.view.addConstraint(NSLayoutConstraint(item: aquaticButton!, attribute: .top, relatedBy: .equal, toItem: reptileButton, attribute: .bottom, multiplier: 1.0, constant: 10))
        self.view.addConstraint(NSLayoutConstraint(item: exoticButton!, attribute: .top, relatedBy: .equal, toItem: aquaticButton, attribute: .bottom, multiplier: 1.0, constant: 10))
        // AutoLayouting the Y of the right buttons
        
        domesticButton.widthAnchor.constraint(equalToConstant: self.view.frame.height*0.18).isActive =  true
        reptileButton.widthAnchor.constraint(equalToConstant: self.view.frame.height*0.18).isActive =  true
        birdButton.widthAnchor.constraint(equalToConstant: self.view.frame.height*0.18).isActive =  true
        aquaticButton.widthAnchor.constraint(equalToConstant: self.view.frame.height*0.18).isActive =  true
        bugButton.widthAnchor.constraint(equalToConstant: self.view.frame.height*0.18).isActive =  true
        exoticButton.widthAnchor.constraint(equalToConstant: self.view.frame.height*0.18).isActive =  true
        // AutoLayouting the width of the buttons
        
        domesticButton.heightAnchor.constraint(equalToConstant: self.view.frame.height*0.18).isActive =  true
        reptileButton.heightAnchor.constraint(equalToConstant: self.view.frame.height*0.18).isActive =  true
        birdButton.heightAnchor.constraint(equalToConstant: self.view.frame.height*0.18).isActive =  true
        aquaticButton.heightAnchor.constraint(equalToConstant: self.view.frame.height*0.18).isActive =  true
        bugButton.heightAnchor.constraint(equalToConstant: self.view.frame.height*0.18).isActive =  true
        exoticButton.heightAnchor.constraint(equalToConstant: self.view.frame.height*0.18).isActive =  true
        // AutoLayouting the height of the buttons
    }
    
}
