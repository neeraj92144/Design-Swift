//
//  DiscoverTableViewCell.swift
//  BIIA
//
//  Created by MacMini on 28/08/22.
//

import UIKit

class DiscoverTableViewCell: UITableViewCell {

    @IBOutlet weak var DiscoverCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
      
        DiscoverCollectionView.delegate = self
        DiscoverCollectionView.dataSource = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension DiscoverTableViewCell : UICollectionViewDelegate , UICollectionViewDataSource, UICollectionViewDelegateFlowLayout  {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: frame.width / 3 - 10, height: frame.width / 3 - 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return eData[DiscoverCollectionView.tag].imageGallery.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DiscoverCollectionViewCell", for: indexPath) as! DiscoverCollectionViewCell
        
        cell.discoverimage.image = UIImage(named: eData[DiscoverCollectionView.tag].imageGallery[indexPath.row])
        
        return cell
    }

    
}
