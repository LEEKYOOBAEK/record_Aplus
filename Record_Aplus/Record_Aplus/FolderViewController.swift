//
//  ViewController.swift
//  Record_Aplus
//
//  Created by MBP01 on 15/02/2019.
//  Copyright © 2019 MBP01. All rights reserved.
//

import UIKit

class FolderViewController: UIViewController {

    @IBOutlet weak var folderCollectionView: UICollectionView!

    
    var folderCell = ["a","b","c"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}


extension FolderViewController : UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return folderCell.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? FolderCollectionViewCell
        cell?.folderNamelbl.text = folderCell[indexPath.row]
        
        return cell!
        
        
    }
    
    
    
    
}
