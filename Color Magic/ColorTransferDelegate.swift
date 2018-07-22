//
//  ColorTransferDelegate.swift
//  Color Magic
//
//  Created by Akhil Raj Arimbra on 7/22/18.
//  Copyright © 2018 Akhil Raj Arimbra. All rights reserved.
//

import Foundation
import UIKit

protocol ColorTransferDelegate {
    func userDidChoose(color: UIColor, withName colorName: String)
}
