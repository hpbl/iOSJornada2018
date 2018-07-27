//
//  ColorVCDelegate.swift
//  ColorNavigation
//
//  Created by Hilton Pintor Bezerra Leite on 26/07/18.
//  Copyright © 2018 Hilton Pintor Bezerra Leite. All rights reserved.
//

import Foundation
import UIKit

protocol ColorVCDelegate {
    func chosen(color: UIColor, text: String)
}
