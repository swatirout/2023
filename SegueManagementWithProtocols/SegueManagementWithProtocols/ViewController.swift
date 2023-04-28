//
//  ViewController.swift
//  SegueManagementWithProtocols
//
//  Created by Swati Rout on 27/04/23.
//

import UIKit

class ViewController: UIViewController,SegueHandler {

    enum SegueIdentifier :String {
        case addItem = "addItemSegue"
        case deleteItem = "deleteItemSegue"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segueIdentifier(for: segue){
        case .addItem:
            print("add")
        case .deleteItem:
            print("delete")
        }
    
    }

    
}

