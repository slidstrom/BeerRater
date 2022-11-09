//
//  RateBeerViewController.swift
//  BeerRater
//
//  Created by DSIAdmin on 11/9/22.
//

import UIKit

class RateBeerViewController: UIViewController {
    
    
    @IBOutlet weak var beerName: UITextField!
    @IBOutlet weak var beerLocation: UITextField!
    
    @IBOutlet weak var star1: UIButton!
    @IBOutlet weak var star2: UIButton!
    @IBOutlet weak var star3: UIButton!
    @IBOutlet weak var star4: UIButton!
    @IBOutlet weak var star5: UIButton!
    
    var rating = "0"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func star1Tapped(_ sender: Any) {
        if rating == "1"
        {
            star1.setImage(UIImage(systemName: "star"), for: .normal)
            star2.setImage(UIImage(systemName: "star"), for: .normal)
            star3.setImage(UIImage(systemName: "star"), for: .normal)
            star4.setImage(UIImage(systemName: "star"), for: .normal)
            star5.setImage(UIImage(systemName: "star"), for: .normal)
            rating = "0"
        }
        else
        {
        star1.setImage(UIImage(systemName: "star.fill"), for: .normal)
        star2.setImage(UIImage(systemName: "star"), for: .normal)
        star3.setImage(UIImage(systemName: "star"), for: .normal)
        star4.setImage(UIImage(systemName: "star"), for: .normal)
        star5.setImage(UIImage(systemName: "star"), for: .normal)
        rating = "1"
        }
    }
    @IBAction func star2Tapped(_ sender: Any) {
        star1.setImage(UIImage(systemName: "star.fill"), for: .normal)
        star2.setImage(UIImage(systemName: "star.fill"), for: .normal)
        star3.setImage(UIImage(systemName: "star"), for: .normal)
        star4.setImage(UIImage(systemName: "star"), for: .normal)
        star5.setImage(UIImage(systemName: "star"), for: .normal)
        rating = "2"
    }
    @IBAction func star3Tapped(_ sender: Any) {
        star1.setImage(UIImage(systemName: "star.fill"), for: .normal)
        star2.setImage(UIImage(systemName: "star.fill"), for: .normal)
        star3.setImage(UIImage(systemName: "star.fill"), for: .normal)
        star4.setImage(UIImage(systemName: "star"), for: .normal)
        star5.setImage(UIImage(systemName: "star"), for: .normal)
        rating = "3"
    }
    @IBAction func star4Tapped(_ sender: Any) {
        star1.setImage(UIImage(systemName: "star.fill"), for: .normal)
        star2.setImage(UIImage(systemName: "star.fill"), for: .normal)
        star3.setImage(UIImage(systemName: "star.fill"), for: .normal)
        star4.setImage(UIImage(systemName: "star.fill"), for: .normal)
        star5.setImage(UIImage(systemName: "star"), for: .normal)
        rating = "4"
    }
    @IBAction func star5Tapped(_ sender: Any) {
        star1.setImage(UIImage(systemName: "star.fill"), for: .normal)
        star2.setImage(UIImage(systemName: "star.fill"), for: .normal)
        star3.setImage(UIImage(systemName: "star.fill"), for: .normal)
        star4.setImage(UIImage(systemName: "star.fill"), for: .normal)
        star5.setImage(UIImage(systemName: "star.fill"), for: .normal)
        rating = "5"
    }
    
    
    
    @IBAction func saveTapped(_ sender: Any) {
        // Save the beer to our collection in core data
        if beerName.text != "" && beerLocation.text != ""
        {
            BeerService.createBeer(name: beerName.text!, location: beerLocation.text!, rating: self.rating)
        }
        navigationController?.popViewController(animated: true)
    }
    
}
