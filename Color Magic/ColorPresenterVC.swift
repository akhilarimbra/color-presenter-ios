//
//  ColorPresenterVC.swift
//  Color Magic
//
//  Created by Akhil Raj Arimbra on 7/22/18.
//  Copyright © 2018 Akhil Raj Arimbra. All rights reserved.
//

import UIKit

class ColorPresenterVC: UIViewController, ColorTransferDelegate {
    @IBOutlet weak var colorNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func userDidChoose(color: UIColor, withName colorName: String) {
        print("User choose color")
        view.backgroundColor = color
        colorNameLabel.text = colorName
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentColorPickerVC" {
            guard let colorPickerVC = segue.destination as? ColorPickerVC else {
                return
            }
            colorPickerVC.delegate = self
        }
    }
}
