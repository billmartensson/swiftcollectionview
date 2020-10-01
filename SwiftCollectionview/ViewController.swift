//
//  ViewController.swift
//  SwiftCollectionview
//
//  Created by Bill Martensson on 2020-09-29.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var firstnames = [String]()
    var fruitnames = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        firstnames.append("Arne")
        firstnames.append("Bengt")
        firstnames.append("Caesar")
        firstnames.append("David")
        firstnames.append("Caesar")
        firstnames.append("David")
        firstnames.append("Caesar")
        firstnames.append("David")
        firstnames.append("Caesar")
        firstnames.append("David")
        firstnames.append("Caesar")
        firstnames.append("David")
        firstnames.append("Caesar")
        firstnames.append("David")
        firstnames.append("Caesar")
        firstnames.append("David")
        firstnames.append("Caesar")
        firstnames.append("David")
        firstnames.append("Caesar")
        firstnames.append("David")

        fruitnames.append("Banan")
        fruitnames.append("Päron")
        fruitnames.append("Apelsin")
        
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if(section == 0)
        {
            return 1
        }
        if(section == 1)
        {
            return firstnames.count
        }
        if(section == 2)
        {
            return fruitnames.count
        }
        
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if(indexPath.section == 0)
        {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "inforutan", for: indexPath) as! InfoCollectionViewCell
            
            return cell
        }
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "rutan", for: indexPath) as! RutaCollectionViewCell
        
        if(indexPath.section == 1)
        {
            cell.theLabel.text = firstnames[indexPath.item]
        }
        if(indexPath.section == 2)
        {
            cell.theLabel.text = fruitnames[indexPath.item]
        }

        //cell.theLabel.text = " \(indexPath.section) \(indexPath.item)"
        
        return cell
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if(indexPath.section == 0)
        {
            return CGSize(width: collectionView.frame.width, height: 100)
        }
        
        return CGSize(width: collectionView.frame.width/3, height: collectionView.frame.width/3)
        
    }
    
    
}

