//
//  ViewController.swift
//  shellhacksintroworkshop
//
//  Created by Carlos Chavez on 9/8/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var playerCard: UIImageView!
    @IBOutlet weak var computerCard: UIImageView!
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var computerScoreLabel: UILabel!
    @IBOutlet weak var outcomeLabel: UILabel!
    
    
    var playerScore: Int = 0
    var computerScore: Int = 0
    var outcome: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func drawCard(_ sender: Any) {
        let playerNum: Int = Int.random(in: 2...14)
        let computerNum: Int = Int.random(in: 2...14)
     
        playerCard.image = UIImage(named: String(playerNum))
        computerCard.image = UIImage(named: String(computerNum))
        
        // compare the two number and increase the score of the player with the largest one
        compare(playerNum: playerNum, computerNum: computerNum)
        
    }
    
    func compare(playerNum: Int, computerNum: Int) {
        if playerNum > computerNum {
            outcome = "You win!"
            outcomeLabel.textColor = UIColor.green
            playerScore += 1
        } else if computerNum > playerNum {
            outcome = "You lose."
            outcomeLabel.textColor = UIColor.red
            computerScore += 1
        } else {
            outcomeLabel.textColor = UIColor.black
            outcome = "Draw."
        }
        
        playerScoreLabel.text = String(playerScore)
        computerScoreLabel.text = String(computerScore)
        outcomeLabel.text = outcome
        
    }
}

