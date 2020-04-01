//
//  ViewController.swift
//  Localization
//
//  Created by AHMED on 1/13/1399 AP.
//  Copyright © 1399 AHMED. All rights reserved.
//

import UIKit
import MOLH

class ViewController: UIViewController {

  @IBOutlet weak var btn: UIButton!
  @IBOutlet weak var countryLbl: UILabel!
  @IBOutlet weak var languageBtn: UIButton!
  
  var country: [String: String] = [
    "ar": "مصر",
    "en": "egypt"
  ]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    btn.setTitle("hello".localized, for: .normal)
    
    countryLbl.text = "lang".localized == "en" ? country["en"] : country["ar"]
    languageBtn.setTitle("EN / AR".localized, for: .normal)
  }

  @IBAction func languageBtnWasPressed(_ sender: Any) {
    MOLH.setLanguageTo(MOLHLanguage.currentAppleLanguage() == "en" ? "ar" : "en")
    MOLH.reset()
  }
  
}

