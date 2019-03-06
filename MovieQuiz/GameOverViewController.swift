//
//  GameOverViewController.swift
//  MovieQuiz
//
//  Created by Lucas Santana Brito on 05/03/19.
//  Copyright © 2019 Lucas Santana Brito. All rights reserved.
//

import UIKit

class GameOverViewController: UIViewController {

    @IBOutlet weak var lbScore: UILabel!
    var score: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbScore.text = "\(score)"
    }
    
    @IBAction func playAgain(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
