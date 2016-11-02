//
//  ViewController.swift
//  CollectionViewSample
//
//  Created by Payal Gupta on 10/21/16.
//  Copyright © 2016 Infoedge Pvt. Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    let numberOfCells = 9
    let kCellHeight : CGFloat = 100
    let kLineSpacing : CGFloat = 10
    let kInset : CGFloat = 10
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
}

extension ViewController : UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return numberOfCells
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sampleCell", for: indexPath)
        return cell
    }
}

extension ViewController : UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        return CGSize(width: (UIScreen.main.bounds.width - 2*kInset - kLineSpacing)/2, height: kCellHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat
    {
        return kLineSpacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets
    {
        return UIEdgeInsets(top: kInset, left: kInset, bottom: kInset, right: kInset)
    }
}
