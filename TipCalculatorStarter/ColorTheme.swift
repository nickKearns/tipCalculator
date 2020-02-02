//
//  ColorTheme.swift
//  TipCalculatorStarter
//
//  Created by Nicholas Kearns on 1/22/20.
//  Copyright © 2020 Make School. All rights reserved.
//

import UIKit


struct ColorTheme {
    let isDefaultStatusBar: Bool
    let viewControllerBackgroundColor: UIColor
    
    let primaryColor: UIColor
    let primaryTextColor: UIColor
    
    let secondaryColor: UIColor
    
    let accentColor: UIColor
    let outputTextColor: UIColor
    
    
    static let light = ColorTheme(isDefaultStatusBar: true, viewControllerBackgroundColor: .tcOffWhite, primaryColor: .tcWhite, primaryTextColor: .tcCharcoal, secondaryColor: .tcDarkBlue, accentColor: .tcHotPink, outputTextColor: .tcAlmostBlack)
    
    static let dark = ColorTheme(isDefaultStatusBar: false, viewControllerBackgroundColor: .tcAlmostBlack, primaryColor: .tcMediumBlack, primaryTextColor: .tcWhite, secondaryColor: .tcDarkBlue, accentColor: .tcSeafoamGreen, outputTextColor: .tcWhite)
    
    
}
