//
//  ViewController.swift
//  BeerRater
//
//  Created by DSIAdmin on 11/9/22.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func collectionTapped(_ sender: Any) {
        print(BeerService.getBeers())
    }
}

