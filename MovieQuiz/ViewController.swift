//
//  ViewController.swift
//  MovieQuiz
//
//  Created by Lucas Santana Brito on 05/03/19.
//  Copyright © 2019 Lucas Santana Brito. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viSoundBar: UIView!
    @IBOutlet weak var sladerMusic: UISlider!
    @IBOutlet var btOptions: [UIButton]!
    @IBOutlet weak var ivQuiz: UIImageView!
    @IBOutlet weak var viTimer: UIView!
    
    var quizManager: QuizManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        quizManager = QuizManager()
        getNewQuiz()
    }
    
    func getNewQuiz() {
        let round = quizManager.generateRandomQuiz()
        for i in  0..<round.options.count {
            btOptions[i].setTitle(round.options[i].name, for: .normal)
        }
    }
    
    @IBAction func checkAnswer(_ sender: UIButton) {
        quizManager.checkAnswer(answer: sender.title(for: .normal)!)
        getNewQuiz()
    }
    
    @IBAction func showHideSoundBar(_ sender: Any) {
        viSoundBar.isHidden = !viSoundBar.isHidden
    }
    
    @IBAction func changeMusicStatus(_ sender: UIButton) {
    }
    
    @IBAction func changeMusicTime(_ sender: UISlider) {
    }
    
    
}

