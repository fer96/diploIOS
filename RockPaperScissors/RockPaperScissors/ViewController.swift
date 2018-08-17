//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Fernando De La Rosa on 16/08/18.
//  Copyright © 2018 Fernando De La Rosa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var stack: UIStackView!
    
    @IBOutlet weak var app: UILabel!
    @IBOutlet weak var state: UILabel!
    @IBOutlet weak var reset: UIButton!
    @IBOutlet weak var rock: UIButton!
    @IBOutlet weak var paper: UIButton!
    @IBOutlet weak var scissors: UIButton!
    
    
    @IBAction func resetAction(_ sender: UIButton) {
        updateGame(gameState: .start)
    }
    @IBAction func rockAction(_ sender: UIButton) {
        updateGame(gameState: play(sign: .rock))
    }
    @IBAction func paperAction(_ sender: UIButton) {
        updateGame(gameState: play(sign: .paper))
    }
    @IBAction func scissorsAction(_ sender: UIButton) {
        updateGame(gameState: play(sign: .scissors))
    }
    
    func updateGame(gameState: GameState){
        if gameState == .start{
            state.text = "Choice one"
            reset.setTitle("Play again", for: .normal)
            app.text = "🤖"
            rock.isHidden = false
            rock.setTitle("👊🏽", for: .normal)
            paper.isHidden = false
            paper.setTitle("✋🏽", for: .normal)
            scissors.isHidden = false
            scissors.setTitle("✌🏽", for: .normal)
            view.backgroundColor = UIColor(red: 0.572, green: 0.572, blue: 0.572, alpha: 1.0)
        }
        if gameState == .win{
            state.text = "You won"
            reset.setTitle("Play again", for: .normal)
            rock.isHidden = true
            scissors.isHidden = true
            view.backgroundColor = UIColor(red: 0.564, green: 0.917, blue: 0.564, alpha: 1.0)
        }
        if gameState == .draw{
            state.text = "DRAW"
            reset.setTitle("Play again", for: .normal)
            rock.isHidden = true
            scissors.isHidden = true
            view.backgroundColor = UIColor(red: 1.0, green: 0.917, blue: 0.533, alpha: 1.0)
        }
        if gameState == .lose{
            state.text = "You lost"
            reset.setTitle("Play again", for: .normal)
            rock.isHidden = true
            scissors.isHidden = true
            view.backgroundColor = UIColor(red: 1.0, green: 0.486, blue: 0.341, alpha: 1.0)
            
        }
    }
    func play(sign: Sign) -> GameState{
        paper.setTitle(sign.description, for: .normal)
        let signVersus: Sign = randomSign()
        app.text = signVersus.description
        return signVersus.game(sign)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stack.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

