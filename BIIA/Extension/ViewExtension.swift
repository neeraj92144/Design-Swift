//
//  ViewExtension.swift
//  i69
//
//  Created by The Mac Store on 10/04/2022.
//

import UIKit

extension UIView {

    @IBInspectable var shadow: Bool {
        get {
            return layer.shadowOpacity > 0.0
        }
        set {
            if newValue == true {
                self.addShadow()
            }
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat {
            get { return layer.shadowRadius }
            set { layer.shadowRadius = newValue }
        }

        @IBInspectable var shadowOpacity: CGFloat {
            get { return CGFloat(layer.shadowOpacity) }
            set { layer.shadowOpacity = Float(newValue) }
        }

        @IBInspectable var shadowOffset: CGSize {
            get { return layer.shadowOffset }
            set { layer.shadowOffset = newValue }
        }

        @IBInspectable var shadowColor: UIColor? {
            get {
                guard let cgColor = layer.shadowColor else {
                    return nil
                }
                return UIColor(cgColor: cgColor)
            }
            set { layer.shadowColor = newValue?.cgColor }
        }
    
    @IBInspectable var borderColor: UIColor? {
            get {
                guard let cgColor = layer.borderColor else {
                    return nil
                }
                return UIColor(cgColor: cgColor)
            }
            set { layer.borderColor = newValue?.cgColor }
        }

        @IBInspectable var borderWidth: CGFloat {
            get {
                return layer.borderWidth
            }
            set {
                layer.borderWidth = newValue
            }
        }

    @IBInspectable var cornerRadius: CGFloat {
        get {
            return self.layer.cornerRadius
        }
        set {
            self.layer.cornerRadius = newValue

            // Don't touch the masksToBound property if a shadow is needed in addition to the cornerRadius
            if shadow == false {
                self.layer.masksToBounds = true
            }
        }
    }


    func addShadow(shadowColor: CGColor = UIColor.black.cgColor,
               shadowOffset: CGSize = CGSize(width: 1.0, height: 2.0),
               shadowOpacity: Float = 0.4,
               shadowRadius: CGFloat = 3.0) {
        layer.shadowColor = shadowColor
        layer.shadowOffset = shadowOffset
        layer.shadowOpacity = shadowOpacity
        layer.shadowRadius = shadowRadius
    }
}

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        views.forEach{ addSubview($0) }
    }
    func makeConstraints(top: NSLayoutYAxisAnchor?, left: NSLayoutXAxisAnchor?, right: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, topMargin: CGFloat, leftMargin: CGFloat, rightMargin: CGFloat, bottomMargin: CGFloat, width: CGFloat, height: CGFloat) {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: topMargin).isActive = true
        }
        
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: leftMargin).isActive = true
        }
        
        if let right = right {
            self.rightAnchor.constraint(equalTo: right, constant: -rightMargin).isActive = true
        }
        
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom, constant: -bottomMargin).isActive = true
        }
        
        if width != 0 {
            self.widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        if height != 0 {
            self.heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
    func applyGradient(colours: [UIColor]) {
        self.applyGradient(colours: colours, locations: nil)
    }

    func applySocialGradient()
    {
        self.applyGradient(colours: [UIColor(named: "button_grad_start") ?? .black, UIColor(named: "button_grad_end") ?? .black], locations: nil)
    }
    
    func applySocialGradientGolden()
    {
        self.applyGradient(colours: [UIColor(named: "golden_grad_start") ?? .black, UIColor(named: "golden_grad_end") ?? .black], locations: nil)
    }

    func removeGradient()
    {
        while self.layer.sublayers?.count ??  0 > 2
        {
            self.layer.sublayers?.remove(at: 0)
        }
    }
    func applyGradient(colours: [UIColor], locations: [NSNumber]?) {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colours.map { $0.cgColor }
        gradient.locations = locations
        self.layer.insertSublayer(gradient, at: 0)
    }
    @discardableResult
    func addLineDashedStroke(pattern: [NSNumber]?, radius: CGFloat, color: CGColor) -> CALayer {
        let borderLayer = CAShapeLayer()
        
        borderLayer.strokeColor = color
        borderLayer.lineDashPattern = pattern
        borderLayer.frame = bounds
        borderLayer.fillColor = nil
        borderLayer.path = UIBezierPath(roundedRect: bounds, byRoundingCorners: .allCorners, cornerRadii: CGSize(width: radius, height: radius)).cgPath
        
        layer.addSublayer(borderLayer)
        return borderLayer
    }
}

class GradienGoldentView: UIView {
    override open class var layerClass: AnyClass {
       return CAGradientLayer.classForCoder()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setSocialGradianGolden()
        
    }
    func setSocialGradian()
    {
        setGradient(colours: [UIColor(named: "button_grad_start")?.cgColor ?? UIColor.black.cgColor,
                              UIColor(named: "button_grad_end")?.cgColor ?? UIColor.black.cgColor])
    }
    
    func setSocialGradianGolden()
    {
        setGradient(colours: [UIColor(named: "golden_grad_start")?.cgColor ?? UIColor.black.cgColor,
                              UIColor(named: "golden_grad_end")?.cgColor ?? UIColor.black.cgColor])
    }
    func setGradient(colours: [CGColor])
    {
        let gradientLayer = layer as! CAGradientLayer
        gradientLayer.colors = colours
    }
    func removeGradientColor()
    {
        let gradientLayer = layer as! CAGradientLayer
        gradientLayer.colors = nil
    }
}

class OvalView: UIView {

    override func layoutSubviews() {
        super.layoutSubviews()
        layoutOvalMask()
    }

    private func layoutOvalMask() {
        let mask = self.shapeMaskLayer()
        let bounds = self.bounds
        if mask.frame != bounds {
            mask.frame = bounds
            mask.path = CGPath(ellipseIn: bounds, transform: nil)
        }
    }

    private func shapeMaskLayer() -> CAShapeLayer {
        if let layer = self.layer.mask as? CAShapeLayer {
            return layer
        }
        let layer = CAShapeLayer()
        layer.fillColor = self.backgroundColor?.cgColor ?? UIColor.red.cgColor
//        layer.borderWidth = 2
//        layer.borderColor = UIColor(named: "golden")?.cgColor
        self.layer.mask = layer
        return layer
    }

}
