//
//  ViewController.swift
//  BTNavigationDropdownMenu
//
//  Created by Pham Ba Tho on 6/8/15.
//  Copyright (c) 2015 PHAM BA THO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var selectedCellLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let items = ["Most Popular", "Latest", "Trending", "Nearest", "Top Picks"]
        self.selectedCellLabel.text = items.first
        self.navigationController?.navigationBar.translucent = false
        UINavigationBar.appearance().translucent = false
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 0.0/255.0, green:180/255.0, blue:220/255.0, alpha: 1.0)
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        
        let menuView = BTNavigationDropdownMenu(frame:  CGRectMake(0.0, 0.0, 300, 44), title: items.first!, items: items, containerView: self.view)
        menuView.cellHeight = 50
        menuView.cellBackgroundColor = self.navigationController?.navigationBar.barTintColor
        menuView.cellSelectionColor = UIColor(red: 0.0/255.0, green:160.0/255.0, blue:195.0/255.0, alpha: 1.0)
        menuView.cellTextLabelColor = UIColor.whiteColor()
        menuView.cellTextLabelFont = UIFont(name: "Avenir-Heavy", size: 17)
        menuView.arrowPadding = 15
        menuView.animationDuration = 0.3
        menuView.maskBackgroundColor = UIColor.blackColor()
        menuView.maskBackgroundOpacity = 0.3
        menuView.bounceOffset = 5
        menuView.didSelectItemAtIndexHandler = {(indexPath: Int) -> () in
            println("Did select item at index: \(indexPath)")
            self.selectedCellLabel.text = items[indexPath]
        }
        
        self.navigationItem.titleView = menuView
    }
}

