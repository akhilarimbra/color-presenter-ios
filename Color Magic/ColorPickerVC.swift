//
//  ColorPickerVC.swift
//  Color Magic
//
//  Created by Akhil Raj Arimbra on 7/22/18.
//  Copyright © 2018 Akhil Raj Arimbra. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {
    var delegate: ColorTransferDelegate? = nil
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func colorButtonWasPressed(sender: UIButton) {
        delegate?.userDidChoose(color: sender.backgroundColor!, withName: sender.titleLabel!.text!)
        self.navigationController?.popViewController(animated: true)
    }
}
