//
//  CustomSegmentClass.swift
//  SportsIndia11
//
//  Created by Ajay Kumar on 17/10/20.
//  Copyright © 2020 Ajay Kumar. All rights reserved.
//

import UIKit


class OYSegmentControl: UISegmentedControl {
  
  override func layoutSubviews(){
    super.layoutSubviews()
    
    let segmentStringSelected: [NSAttributedString.Key : Any] = [
        NSAttributedString.Key.font : UIFont.systemFont(ofSize: 15),
      NSAttributedString.Key.foregroundColor : UIColor.white
    ]
    
    let segmentStringHighlited: [NSAttributedString.Key : Any] = [
      NSAttributedString.Key.font : UIFont.systemFont(ofSize: 15),
      NSAttributedString.Key.foregroundColor : UIColor.black
    ]
    
    setTitleTextAttributes(segmentStringHighlited, for: .normal)
    setTitleTextAttributes(segmentStringSelected, for: .selected)
    setTitleTextAttributes(segmentStringHighlited, for: .highlighted)
    
    
    
    layer.masksToBounds = true
    
//    for selectView in subviews{
//        selectView.layer.borderColor = UIColor.red.cgColor
//            selectView.layer.borderWidth = CGFloat(2)
//            selectView.layer.cornerRadius = CGFloat(15)
//            selectView.layer.masksToBounds = true
//       }
    
    
//    if #available(iOS 13.0, *) {
//      selectedSegmentTintColor = #colorLiteral(red: 0, green: 0.861200273, blue: 0.67304039, alpha: 1)
//    } else {
//      tintColor = #colorLiteral(red: 0, green: 0.861200273, blue: 0.67304039, alpha: 1)
//    }
    
    layer.borderWidth = 1
    layer.borderColor = colorApp?.cgColor
    
    backgroundColor = .init(white: 1, alpha: 1)
    
    //corner radius
    let cornerRadius = bounds.height / 2
    let maskedCorners: CACornerMask = [.layerMinXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMinYCorner, .layerMaxXMaxYCorner]
    //background
    clipsToBounds = true
    layer.cornerRadius = cornerRadius
    if #available(iOS 11.0, *) {
        layer.maskedCorners = maskedCorners
    } else {
        // Fallback on earlier versions
    }

    let foregroundIndex = numberOfSegments
    if subviews.indices.contains(foregroundIndex),
      let foregroundImageView = subviews[foregroundIndex] as? UIImageView {
      foregroundImageView.image = UIImage()
      foregroundImageView.clipsToBounds = true
      foregroundImageView.layer.masksToBounds = true
       foregroundImageView.backgroundColor = colorApp
      
      foregroundImageView.layer.cornerRadius = bounds.height / 2 + 5
        if #available(iOS 11.0, *) {
            foregroundImageView.layer.maskedCorners = maskedCorners
        } else {
            // Fallback on earlier versions
        }
    }
  }
  
  override func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
    return false
  }
  
}
