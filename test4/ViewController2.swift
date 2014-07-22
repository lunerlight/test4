//
//  ViewController2.swift
//  test4
//
//  Created by foxking on 14-7-16.
//  Copyright (c) 2014年 foxking. All rights reserved.
//

import UIKit

class ViewController2:UIViewController{

    @IBAction func BackForward(sender: AnyObject) {
        
        self.dismissViewControllerAnimated(true, completion: {})
        
    }
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
        
    }

}
