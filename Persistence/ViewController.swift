//
//  ViewController.swift
//  Persistence
//
//  Created by Bridger Strickland on 4/4/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return reds.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath);cell.contentView.backgroundColor = UIColor(displayP3Red: reds[indexPath.row], green: greens[indexPath.row], blue: blues[indexPath.row], alpha: 1)
                return cell
    }
    
    var reds: [CGFloat] = [0.9]
    var greens: [CGFloat] = [0.4]
    var blues: [CGFloat] = [0.1]
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        // Do any additional setup after loading the view.
    }


}

