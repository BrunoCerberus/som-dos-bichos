//
//  ViewController.swift
//  Som dos Bichos
//
//  Created by Bruno Lopes de Mello on 18/11/2017.
//  Copyright © 2017 Bruno Lopes de Mello. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    private func executarSom(_ som: String) {
        
        if let path = Bundle.main.path(forResource: som, ofType: "mp3") {
            let url = URL(fileURLWithPath: path)
            
            do {
                player = try AVAudioPlayer(contentsOf: url)
                player.prepareToPlay()
                player.play()
                
            } catch let erro {
                print(erro.localizedDescription)
            }
        }
       
    }
    
    @IBAction func late(_ sender: Any) {
        executarSom("cao")
    }
    
    @IBAction func mia(_ sender: Any) {
        executarSom("gato")
    }
    
    @IBAction func rosna(_ sender: Any) {
        executarSom("leao")
    }
    
    @IBAction func macaquice(_ sender: Any) {
        executarSom("macaco")
    }
    
    @IBAction func baa(_ sender: Any) {
        executarSom("ovelha")
    }
    
    @IBAction func moo(_ sender: Any) {
        executarSom("vaca")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

