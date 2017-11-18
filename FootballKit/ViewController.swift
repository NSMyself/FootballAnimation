//
//  ViewController.swift
//  FootballKit
//
//  Created by João Pereira on 03/11/2017.
//  Copyright © 2017 nsmyself. All rights reserved.
//

import UIKit

<<<<<<< Updated upstream
class ViewController: UIViewController, PlayManagerDelegate {
	
    @IBOutlet var background: UIImageView?
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var scoreTeam1: UILabel!
    @IBOutlet weak var scoreTeam2: UILabel!
    
    var playManager:PlayManager?
    var items:[Play] = []
    var i = 0
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let background = background {
            playManager = PlayManager(view: background, delegate:self)
            
            let p1 = Play(scored: true, kind: .OpenPlay)
            let home = Team(name: "Home Team", country: "Portugal", color: .red)
            let away = Team(name: "Away Team", country: "France", color: .blue)
            
            let bernardo = Player(name: "Bernardo Silva", number: 10, foot:.right, at:.F1)
            bernardo.move(to: .C2, duration:1)
            bernardo.pass(to: .C8, duration: 1, swerve: .right, highBall:true)
            
            let renato = Player(name: "Renato Sanches", number: 8, at:.D9)
            renato.move(to: .C8, duration:2)
            renato.shoot()
            
            let evra = Player(name: "Patrice Evra", number: 3, at:.E2)
            evra.move(to: .B2, duration: 1)
            
            home.register(player: bernardo)
            home.register(player: renato)
            away.register(player: evra)
            
            p1.homeTeam = home
            p1.awayTeam = away
            p1.initialBallCarrier = bernardo
            
            items.append(p1)
            playManager?.play(play: p1)
        }
    }
    
    @IBAction func playToggled(_ sender: Any) {
        
        guard let play = items.first else {
            return
        }
        
        playManager?.animate(play)
    }
    
    // MARK: - Delegation
    func animationDidStart() {
        scoreTeam1.text = "0"
        scoreTeam2.text = "0"
        playBtn.setImage(UIImage(named: "Pause"), for: .normal)
    }
    
    func animationDidStop() {
        playBtn.setImage(UIImage(named: "Play"), for: .normal)
    }
    
    func scored(player: Player) {
        scoreTeam1.text = "1"
        print("Player \(player.name.short) just scored!")
    }
}
=======
class ViewController: UIViewController {}

>>>>>>> Stashed changes
