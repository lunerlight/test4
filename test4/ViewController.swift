//
//  ViewController.swift
//  test4
//
//  Created by foxking on 14-7-16.
//  Copyright (c) 2014年 foxking. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var megText: UITextField
    @IBOutlet var image: UIImageView
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        
        var Data:String = megText.text
    }
    
    @IBAction func getData(sender: AnyObject) {
        let manager = AFHTTPRequestOperationManager()
        let url = "http://192.168.1.197:8080/api/dept"
        
        let params = ["action":"getAllDeptTree"]
        
        var type = "text/html"
        var sets = NSSet()
        
        manager.responseSerializer.acceptableContentTypes = sets.setByAddingObject(type)
        
        manager.GET(url, parameters:params ,
            
            success: {
                (operation:AFHTTPRequestOperation!, responseObject: AnyObject!) in
                println("success" + responseObject.description!)
//                let dic:NSDictionary = (NSDictionary)responseObject.description!
                let json:NSString = NSString.stringWithString(responseObject.description!)
                let resData:NSData = NSData.dataWithData(json.dataUsingEncoding(NSUTF8StringEncoding))
                var nserror:NSErrorPointer!
//                println(resData)
//                let dic:NSDictionary = NSJSONSerialization.JSONObjectWithData(resData, options: NSJSONReadingOptions.MutableLeaves, error:nserror) as NSDictionary
                
//                println(dic.count)
            },
            
            failure: {(operation: AFHTTPRequestOperation!, error: NSError!) in
                println("error" + error.localizedDescription)
            
            
            })
        
        
    }
    
    @IBAction func getImage(sender: AnyObject) {
        
        let url:NSURL = NSURL.URLWithString("http://www.raywenderlich.com/wp-content/uploads/2014/01/sunny-background.png")
        var request:NSURLRequest = NSURLRequest(URL:url)
        var afhrp:AFHTTPRequestOperation = AFHTTPRequestOperation.
        
    }
}

