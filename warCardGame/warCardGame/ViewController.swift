//
//  ViewController.swift/Users/kbarretttomlinson/Documents/prime-academy/swift/codeWithChris/warCardGame/warCardGame.xcodeproj
//  warCardGame
//
//  Created by Keith Barrett Tomlinson on 6/22/17.
//  Copyright © 2017 Keith Barrett Tomlinson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftCardView: UIImageView!
    @IBOutlet weak var rightCardView: UIImageView!
    @IBOutlet weak var leftScoreView: UILabel!
    @IBOutlet weak var rightScoreView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: Any) {
        print("deal tapped")
        leftCardView.image = UIImage(named: "card10")
        rightCardView.image = UIImage(named: "jack")
    }

}




