//
//  CollectionViewController.swift
//  BeerRater
//
//  Created by DSIAdmin on 11/9/22.
//

import UIKit

class CollectionViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    var beerCollection = [Beer]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        beerCollection = BeerService.getBeers()
        
    }
    
    // prepare segue method for the tableView cells
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "goToDetail" {
            
            if let indexPath = self.tableView.indexPathForSelectedRow{

                let beerDetailVC = segue.destination as! BeerDetailsViewController

                beerDetailVC.currentBeer = beerCollection[indexPath.row]
                
                tableView.deselectRow(at: indexPath, animated: false)

            }

        }
    }
    

    

}

extension CollectionViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return beerCollection.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "beerCell") as! BeerTableViewCell
        
        cell.name.text = beerCollection[indexPath.row].name
        cell.location.text = beerCollection[indexPath.row].location
        cell.rating.text = beerCollection[indexPath.row].rating
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
