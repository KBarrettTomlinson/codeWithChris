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
    @IBOutlet weak var leftScoreView: UILabel!
    var leftScore = 0
    
    @IBOutlet weak var rightCardView: UIImageView!
    @IBOutlet weak var rightScoreView: UILabel!
    var rightScore = 0
    
    let cardNames = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: Any) {
        //randomize left number from 0 to 12
        let leftNumber: Int = Int(arc4random_uniform(13))
        
        //set left card
        leftCardView.image = UIImage(named: cardNames[leftNumber])
        
        //randomize right number from 0 to 12
        let rightNumber: Int = Int(arc4random_uniform(13))
        
        //set right card
        rightCardView.image = UIImage(named: cardNames[rightNumber])

        //compare the card numbers
        if leftNumber > rightNumber{
            //left wins incriment score
            leftScore += 1
            
            //update Label
            leftScoreView.text = String(leftScore)
        }
        else if leftNumber == rightNumber{
            //its a tie
        }
        else {
            //right wins incriment score
            rightScore += 1
            
            //update Label
            rightScoreView.text = String(rightScore)
        }
        
    }

}




