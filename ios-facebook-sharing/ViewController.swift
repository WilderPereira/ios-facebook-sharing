//
//  ViewController.swift
//  ios-facebook-sharing
//
//  Created by Wilder Pereira on 18/07/16.
//  Copyright © 2016 Wilder Pereira. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import FBSDKShareKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let content : FBSDKShareLinkContent = FBSDKShareLinkContent()
        content.contentURL = NSURL(string: "http://www.newnownext.com/wp-content/uploads/2014/10/Screen-Shot-2014-10-26-at-10.48.53-PM.png")
        content.contentTitle = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"
        content.contentDescription = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"
        content.imageURL = NSURL(string: "http://www.newnownext.com/wp-content/uploads/2014/10/Screen-Shot-2014-10-26-at-10.48.53-PM.png")
        
        let button : FBSDKShareButton = FBSDKShareButton()
        button.shareContent = content
        button.frame = CGRectMake(240, (self.view.frame.size.height - 60), 200, 30)
        
        self.view.addSubview(button)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

