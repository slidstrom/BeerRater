//
//  BeerDetailsViewController.swift
//  BeerRater
//
//  Created by DSIAdmin on 11/9/22.
//

import UIKit

class BeerDetailsViewController: UIViewController {

    
    var currentBeer:Beer?
    
    @IBOutlet weak var beerName: UILabel!
    
    @IBOutlet weak var beerLocation: UILabel!
    
    var beerRating = ""
    
    @IBOutlet weak var star1: UIButton!
    @IBOutlet weak var star2: UIButton!
    @IBOutlet weak var star3: UIButton!
    @IBOutlet weak var star4: UIButton!
    @IBOutlet weak var star5: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if currentBeer != nil
        {
            self.beerRating = currentBeer!.rating!
            self.beerName.text = currentBeer!.name!
            self.beerLocation.text = currentBeer!.location!
            
            setRating()
            
        }
        
        
    }
    
    private func setRating()
    {
        if beerRating == "0"
        {
            star1.setImage(UIImage(systemName: "star"), for: .normal)
            star2.setImage(UIImage(systemName: "star"), for: .normal)
            star3.setImage(UIImage(systemName: "star"), for: .normal)
            star4.setImage(UIImage(systemName: "star"), for: .normal)
            star5.setImage(UIImage(systemName: "star"), for: .normal)
        }
        else if beerRating == "1"
        {
            star1.setImage(UIImage(systemName: "star.fill"), for: .normal)
            star2.setImage(UIImage(systemName: "star"), for: .normal)
            star3.setImage(UIImage(systemName: "star"), for: .normal)
            star4.setImage(UIImage(systemName: "star"), for: .normal)
            star5.setImage(UIImage(systemName: "star"), for: .normal)
        }
        else if beerRating == "2"
        {
            star1.setImage(UIImage(systemName: "star.fill"), for: .normal)
            star2.setImage(UIImage(systemName: "star.fill"), for: .normal)
            star3.setImage(UIImage(systemName: "star"), for: .normal)
            star4.setImage(UIImage(systemName: "star"), for: .normal)
            star5.setImage(UIImage(systemName: "star"), for: .normal)
        }
        else if beerRating == "3"
        {
            star1.setImage(UIImage(systemName: "star.fill"), for: .normal)
            star2.setImage(UIImage(systemName: "star.fill"), for: .normal)
            star3.setImage(UIImage(systemName: "star.fill"), for: .normal)
            star4.setImage(UIImage(systemName: "star"), for: .normal)
            star5.setImage(UIImage(systemName: "star"), for: .normal)
        }
        else if beerRating == "4"
        {
            star1.setImage(UIImage(systemName: "star.fill"), for: .normal)
            star2.setImage(UIImage(systemName: "star.fill"), for: .normal)
            star3.setImage(UIImage(systemName: "star.fill"), for: .normal)
            star4.setImage(UIImage(systemName: "star.fill"), for: .normal)
            star5.setImage(UIImage(systemName: "star"), for: .normal)
        }
        else if beerRating == "5"
        {
            star1.setImage(UIImage(systemName: "star.fill"), for: .normal)
            star2.setImage(UIImage(systemName: "star.fill"), for: .normal)
            star3.setImage(UIImage(systemName: "star.fill"), for: .normal)
            star4.setImage(UIImage(systemName: "star.fill"), for: .normal)
            star5.setImage(UIImage(systemName: "star.fill"), for: .normal)
        }
        else
        {
            // nothing
        }
    }
    
    @IBAction func star1Tapped(_ sender: Any) {
        if beerRating == "1"
        {
            star1.setImage(UIImage(systemName: "star"), for: .normal)
            star2.setImage(UIImage(systemName: "star"), for: .normal)
            star3.setImage(UIImage(systemName: "star"), for: .normal)
            star4.setImage(UIImage(systemName: "star"), for: .normal)
            star5.setImage(UIImage(systemName: "star"), for: .normal)
            beerRating = "0"
        }
        else
        {
        star1.setImage(UIImage(systemName: "star.fill"), for: .normal)
        star2.setImage(UIImage(systemName: "star"), for: .normal)
        star3.setImage(UIImage(systemName: "star"), for: .normal)
        star4.setImage(UIImage(systemName: "star"), for: .normal)
        star5.setImage(UIImage(systemName: "star"), for: .normal)
        beerRating = "1"
        }
    }
    @IBAction func star2Tapped(_ sender: Any) {
        star1.setImage(UIImage(systemName: "star.fill"), for: .normal)
        star2.setImage(UIImage(systemName: "star.fill"), for: .normal)
        star3.setImage(UIImage(systemName: "star"), for: .normal)
        star4.setImage(UIImage(systemName: "star"), for: .normal)
        star5.setImage(UIImage(systemName: "star"), for: .normal)
        beerRating = "2"
    }
    @IBAction func star3Tapped(_ sender: Any) {
        star1.setImage(UIImage(systemName: "star.fill"), for: .normal)
        star2.setImage(UIImage(systemName: "star.fill"), for: .normal)
        star3.setImage(UIImage(systemName: "star.fill"), for: .normal)
        star4.setImage(UIImage(systemName: "star"), for: .normal)
        star5.setImage(UIImage(systemName: "star"), for: .normal)
        beerRating = "3"
    }
    @IBAction func star4Tapped(_ sender: Any) {
        star1.setImage(UIImage(systemName: "star.fill"), for: .normal)
        star2.setImage(UIImage(systemName: "star.fill"), for: .normal)
        star3.setImage(UIImage(systemName: "star.fill"), for: .normal)
        star4.setImage(UIImage(systemName: "star.fill"), for: .normal)
        star5.setImage(UIImage(systemName: "star"), for: .normal)
        beerRating = "4"
    }
    @IBAction func star5Tapped(_ sender: Any) {
        star1.setImage(UIImage(systemName: "star.fill"), for: .normal)
        star2.setImage(UIImage(systemName: "star.fill"), for: .normal)
        star3.setImage(UIImage(systemName: "star.fill"), for: .normal)
        star4.setImage(UIImage(systemName: "star.fill"), for: .normal)
        star5.setImage(UIImage(systemName: "star.fill"), for: .normal)
        beerRating = "5"
    }
    

    @IBAction func saveTapped(_ sender: Any) {
        if currentBeer != nil
        {
            BeerService.updateBeerRating(beer: self.currentBeer!, rating: beerRating)
            navigationController?.popToRootViewController(animated: true)
        }
    }
    
    @IBAction func deleteTapped(_ sender: Any) {
        if currentBeer != nil
        {
            
            let alert = UIAlertController(title: "Notice", message: "Are you sure you want to delete this beer?", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Yes", style: .destructive, handler: { action in
                BeerService.deleteBeer(beer: self.currentBeer!)
                self.navigationController?.popToRootViewController(animated: true)
            }))
            
            alert.addAction(UIAlertAction(title: "No", style: .default, handler: { action in
                alert.dismiss(animated: true, completion: nil)
            }))
            
            self.present(alert, animated: true, completion: nil)
        
        }
    }
    
}
