//
//  ViewController.swift
//  iOS Trivia
//
//  Created by Olivier Butler on 06/09/2017.
//  Copyright © 2017 Olivier Butler. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBAction func answerButton(_ sender: UIButton) {
        print("Starting speech")
        let synth = AVSpeechSynthesizer()
        let podium = "Someone pressed my answer button."
        let spookyVoice = AVSpeechUtterance(string: podium)
        spookyVoice.rate = 0.5
        synth.speak(spookyVoice)
        print("Spoken")
    }
    @IBAction func nextButton(_ sender: UIButton) {
        print("Next please")
    }
    @IBAction func prevButton(_ sender: UIButton) {
        print("Please upgrade to Tinder Plus to undo your last swipe")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = "What do you call the space underneath a kettle?"
        answerLabel.text = "I don't know, it doesn't have a name. I just want to sleep, why can't we sleep at the same times??? Now that's a good question."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

