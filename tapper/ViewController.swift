//
//  ViewController.swift
//  tapper
//
//  Created by ShadowZz on 4/6/16.
//  Copyright © 2016 ShadowZz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var maxTaps = 0
    var currentTaps = 0
    
    
    //Outlets
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var txtBox: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var coinButton: UIButton!
    @IBOutlet weak var score: UILabel!
    
    @IBAction func onCoinTap(sender: UIButton) {
        
        currentTaps++
        updateTaps()
        
        if isGameOver()
        {
            restartGame()
        }
    }
    
    
    @IBAction func playButtonPressed(sender: UIButton) {

        
        if txtBox.text != nil && txtBox.text != ""
        {
        
        logo.hidden = true
        txtBox.hidden = true
        playButton.hidden = true
        
        coinButton.hidden = false
        score.hidden = false
            
        maxTaps = Int(txtBox.text!)!
        currentTaps = 0
        
        updateTaps()
            
        }
        
    }
    func restartGame()
    {
        maxTaps = 0
        txtBox.text = ""
        
        logo.hidden = false
        playButton.hidden = false
        txtBox.hidden = false
        
        coinButton.hidden = true
        score.hidden = true
        
    }
    
    
    func updateTaps(){
        
        score.text = "\(currentTaps) Taps"
    }
    
    func isGameOver() ->Bool
    {
        if currentTaps >= maxTaps
        {
            return true
        }
        else
        {
            return false
        }
    }
    

}

