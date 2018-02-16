//
//  AnswerScreenViewController.swift
//  iquiz
//
//  Created by Ben Nogawa on 2/15/18.
//  Copyright © 2018 Ben Nogawa. All rights reserved.
//

import UIKit

class AnswerScreenViewController: UIViewController {

    @IBOutlet weak var answerText: UILabel!
    
    
    @IBAction func finishTest(_ sender: Any) {
        performSegue(withIdentifier: "answerToFinish", sender: self)
    }
    
    
    @IBAction func answerHome(_ sender: Any) {
        performSegue(withIdentifier: "answerToHome", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if (correctAnswer) {
            answerText.text = "Right!"
            numberCorrect = numberCorrect + 1
            
        } else {
            answerText.text = "Wrong!"
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}