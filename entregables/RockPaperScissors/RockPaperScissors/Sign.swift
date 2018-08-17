//
//  Sign.swift
//  RockPaperScissors
//
//  Created by Fernando De La Rosa on 16/08/18.
//  Copyright © 2018 Fernando De La Rosa. All rights reserved.
//
import Foundation
import GameplayKit

//Pruebas primer proyecto
enum Sign{
    case rock
    case paper
    case scissors
    
    var description: String {
        switch self {
        case .rock:
            return "👊🏽"
        case .paper:
            return "✋🏽"
        case .scissors:
            return "✌🏽"
        }
    }
    
    func game(_ sing: Sign) -> GameState{
        if self == sing{
            return GameState.draw
        }
        if self == .rock{
            if sing == .paper{
                return GameState.win
            }
            else{
                return GameState.lose
            }
        }
        if self == .paper{
            if sing == .scissors{
                return GameState.win
            }
            else{
                return GameState.lose
            }
        }
        if self == .scissors{
            if sing == .rock{
                return GameState.win
            }
            else{
                return GameState.lose
            }
        }
        else{
            return GameState.draw
        }
    }
}

enum GameState{
    case start
    case win
    case lose
    case draw
}

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign {
    let sign = randomChoice.nextInt()
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}

//var app: Sign = Sign.scissors
//var app: Sign = randomSign()
//app.description
//var player: Sign = Sign.paper
//var player: Sign = randomSign()
//player.description

//app.game(player)

