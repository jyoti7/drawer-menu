//
//  ViewController.swift
//  DW Menu
//
//  Created by Newgen Brl on 12/2/20.
//  Copyright © 2020 Newgen Brl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnDrawer: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func showDrawer(){
        if revealViewController() != nil{
            btnDrawer.target = revealViewController()
            btnDrawer.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController()?.rearViewRevealWidth = 275
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
        }
        
    }
    
}

