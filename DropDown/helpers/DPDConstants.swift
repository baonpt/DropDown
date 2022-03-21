//
//  Constants.swift
//  DropDown
//
//  Created by Kevin Hirsch on 28/07/15.
//  Copyright (c) 2015 Kevin Hirsch. All rights reserved.
//

#if os(iOS)

import UIKit

internal struct DPDConstant {

	internal struct KeyPath {

		static let Frame = "frame"

	}

	internal struct ReusableIdentifier {

		static let DropDownCell = "DropDownCell"

	}
}

public class DropDownSetting {
    public init() {}
    /// Setting UI
    public class Interface {
        
        public var textColor = UIColor.black
        public var selectedTextColor = UIColor.black
        public var textFont = UIFont.systemFont(ofSize: 15)
        public var backgroundColor = UIColor(white: 0.94, alpha: 1)
        public var selectionBackgroundColor = UIColor(white: 0.89, alpha: 1)
        public var separatorColor = UIColor.clear
        public var cornerRadius: CGFloat = 2
        public var rowHeight: CGFloat = 44
        public var heightPadding: CGFloat = 20
        public var menuWidth: CGFloat?
        public var shadow: Shadow = .init()
        public var topOffset: CGPoint = .zero
        
        /// Shadow
        public class Shadow {
            
            public var color: UIColor = .darkGray
            public var offset: CGSize = .zero
            public var opacity: Float = 0.4
            public var radius: CGFloat = 8
        }
    }
    
    /// Animation
    public class Animation {
        
        public var duration = 0.15
        public var entranceOptions: UIView.AnimationOptions = [.allowUserInteraction, .curveEaseOut]
        public var exitOptions: UIView.AnimationOptions = [.allowUserInteraction, .curveEaseIn]
        public var downScaleTransform = CGAffineTransform(scaleX: 0.9, y: 0.9)
    }
    
    // Properties
    public var interface: Interface = .init()
    public var animation: Animation = .init()
    
    static public var cellIdentifier = "DropDownCell"
}
#endif


