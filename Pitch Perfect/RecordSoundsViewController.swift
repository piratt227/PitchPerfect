//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Aaron Phillips on 4/16/16.
//  Copyright © 2016 Aaron Phillips. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    @IBOutlet weak var recordingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: AnyObject) {
        print("record button pressed")
        recordingLabel.text = "Recording in progress"
        stopRecordingButton.enabled = true
        recordButton.enabled = false
    }

    @IBAction func stopRecording(sender: AnyObject) {
        print("stop recording button pressed")
        recordButton.enabled = true
        stopRecordingButton.enabled = false
        recordingLabel.text = "Tap to record"
    }
    
    override func viewWillAppear(animated: Bool) {
        stopRecordingButton.enabled = false
    }
    
    
}

