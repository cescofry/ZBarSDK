//
//  ViewController.swift
//  ZBarSwift
//
//  Created by Francesco Frison on 09/08/2014.
//  Copyright (c) 2014 Ziofritz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var readerView : ZBarReaderView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.readerView = ZBarReaderView(imageScanner: ZBarImageScanner())
        self.view.addSubview(self.readerView!)
        self.readerView!.start()
        
        self.readerView!.frame = self.view.bounds
        
        if UIDevice.currentDevice().model == "iPhone Simulator" {
            println("Test Device Only")
        }
        
    }

}

