//
//  StoreSetupTableViewController.swift
//  testApp
//
//  Created by Zbranevich, Andrey on 8/1/16.
//  Copyright © 2016 Zbranevich, Andrey. All rights reserved.
//

import UIKit

class StoreSetupTableViewController: UIViewController {
    
//    var tableView: UITableView {
//        get {
//            return view as! UITableView
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
extension StoreSetupTableViewController : UITableViewDelegate {

    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 250
    }
}

extension StoreSetupTableViewController : UITableViewDataSource {

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return StoreSetup.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("storeCell", forIndexPath: indexPath) as! StoreSetupCell
       
        cell.item = StoreSetupItem(index: indexPath.row)
        
//        let backgroundImage: UIImage?
//        
//        switch indexPath.row {
//        case 0:
//            backgroundImage = UIImage(named: "cellTop")
//        case tableView.numberOfRowsInSection(indexPath.section) - 1:
//            backgroundImage = UIImage(named: "cellBottom")
//        default:
//            backgroundImage = UIImage(named: "cellMiddleBottom")
//        }
//        
//        let imageView = UIImageView(image: backgroundImage)
//        cell.backgroundView = imageView

        
        return cell
    }
}