//
//  Alert.swift
//  SportsIndia11
//
//  Created by mac on 04/07/19.
//  Copyright © 2019 Appinop. All rights reserved.
//

import UIKit

import Toast_Swift

let defaults = UserDefaults.standard

let colorApp = UIColor(named: "Gradiant1")
let colorApp2 = UIColor(named: "Gradiant2")

//MARK:- Alert
extension UIViewController {
    
    func alert(message: String, title: String ) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(OKAction)
        self.present(alertController, animated: true, completion: nil)
    }
}

//MARK:- Auto

extension UIViewController {
    
    func alertAuto(msg:String){
//        let alert = UIAlertController(title: "", message: msg, preferredStyle: .alert)
//        self.present(alert, animated: true, completion: nil)
//
//        // change to desired number of seconds (in this case 5 seconds)
//        let when = DispatchTime.now() + 1
//        DispatchQueue.main.asyncAfter(deadline: when){
//            // your code with delay
//            alert.dismiss(animated: true, completion: nil)
//        }
        var message = msg
        // create a new style
        var style = ToastStyle()

        // this is just one of many style options
        style.backgroundColor = .darkGray
        
        style.messageAlignment = .center
        
        if let font = UIFont(name: "Kalra-Medium", size: 10.0) {
            style.messageFont = font
        }
        ToastManager.shared.style = style
        
        if let window = UIApplication.shared.keyWindow {
            window.makeToast(message)
        } else {
            self.view.makeToast(message)
        }
    }
    
}


extension UIViewController {
    
    func alertWithOKCallback(message: String, title: String = "", completion: @escaping () -> ()) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let OKAction = UIAlertAction.init(title: "OK", style: .default) { (action) in
            completion()
        }
        alertController.addAction(OKAction)
        self.present(alertController, animated: true, completion: nil)
    }
}


extension UserDefaults {
    
    //MARK: Save Security Token
    func setSecureId(value: String) {
        set(value, forKey: UserDefaultsKeys.secure_id.rawValue)
        synchronize()
    }
    
    //MARK: Save Game Type
    func setGameType(value: String) {
        set(value, forKey: UserDefaultsKeys.gametype.rawValue)
        synchronize()
    }
    
    
    
    func getSecureid() -> String {
        return string(forKey: UserDefaultsKeys.secure_id.rawValue) ?? ""
    }
    
    func getgameType() -> String {
        return string(forKey: UserDefaultsKeys.gametype.rawValue) ?? ""
    }
    
    
}


enum UserDefaultsKeys : String {
    case secure_id
    case gametype
}



class CustomSlider: UISlider {
  @IBInspectable var trackHeight: CGFloat = 2

     override func trackRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(origin: bounds.origin, size: CGSize(width: bounds.width, height: trackHeight))
     }
    
    private var thumbTouchSize = CGSize(width: 40, height: 40)

        override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
            let increasedBounds = bounds.insetBy(dx: -thumbTouchSize.width, dy: -thumbTouchSize.height)
            let containsPoint = increasedBounds.contains(point)
            return containsPoint
        }

        override func beginTracking(_ touch: UITouch, with event: UIEvent?) -> Bool {
            let percentage = CGFloat((value - minimumValue) / (maximumValue - minimumValue))
            let thumbSizeHeight = thumbRect(forBounds: bounds, trackRect:trackRect(forBounds: bounds), value:0).size.height
            let thumbPosition = thumbSizeHeight + (percentage * (bounds.size.width - (2 * thumbSizeHeight)))
            let touchLocation = touch.location(in: self)
            return touchLocation.x <= (thumbPosition + thumbTouchSize.width) && touchLocation.x >= (thumbPosition - thumbTouchSize.width)
        }
}

extension Bundle {
    static func appName() -> String {
        guard let dictionary = Bundle.main.infoDictionary else {
            return ""
        }
        if let version : String = dictionary["CFBundleName"] as? String {
            return version
        } else {
            return ""
        }
    }
}


@IBDesignable class ImageTintedView: UIImageView {
    
    override func prepareForInterfaceBuilder() {
        self.configure()
    }

    override func awakeFromNib() {
        super.awakeFromNib()

        self.configure()
    }

    @IBInspectable override var tintColor: UIColor! {
        didSet {
            self.configure()
        }
    }

    private func configure() {
        self.image = self.image?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate)
    }
}

@IBDesignable class ButtonImageTintColor: UIButton {
    
    @IBInspectable var imageTintColor: UIColor! {
        didSet {
            self.configure()
        }
    }
    
    @IBInspectable var buttonImage : UIImage! {
        didSet {
            self.configure()
        }
    }
    
    private func configure() {
        if buttonImage != nil {
            let image = buttonImage.withRenderingMode(.alwaysTemplate)
            setImage(image, for: .normal)
            self.tintColor = imageTintColor
        }
    }
    
}

//
//@IBDesignable class GradientView: UIView {
//    @IBInspectable var topColor: UIColor = UIColor.white
//    @IBInspectable var bottomColor: UIColor = UIColor.black
//
//    override class var layerClass: AnyClass {
//        return CAGradientLayer.self
//    }
//
//    override func layoutSubviews() {
//        (layer as! CAGradientLayer).colors = [topColor.cgColor, bottomColor.cgColor]
//    }
//
//}
//
//@IBDesignable class GradientButton: UIButton {
//
//    @IBInspectable var topColor: UIColor = UIColor()
//    @IBInspectable var bottomColor: UIColor = UIColor()
//    @IBInspectable var textColor : UIColor = UIColor()
//    @IBInspectable var textContent : String = String()
//    // LET'S PLAY
//    override class var layerClass: AnyClass {
//        return CAGradientLayer.self
//    }
//
//    override func layoutSubviews() {
//        //(layer as! CAGradientLayer).colors = [topColor.cgColor, bottomColor.cgColor]
//        setupView()
//    }
//
//    override init(frame: CGRect) {
//              super.init(frame: frame)
//              setupView()
//         }
//         required init?(coder aDecoder: NSCoder) {
//              super.init(coder: aDecoder)
//            setupView()
//         }
//
//    func setupView() {
////        self.setTitleColor(textColor, for: .normal)
////        self.setTitle(textContent, for: .normal)
//        self.layoutIfNeeded()
//    }
//}
//
