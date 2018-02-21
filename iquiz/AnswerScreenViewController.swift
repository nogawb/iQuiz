//
//  AnswerScreenViewController.swift
//  iquiz
//
//  Created by Ben Nogawa on 2/15/18.
//  Copyright © 2018 Ben Nogawa. All rights reserved.
//

import UIKit

class AnswerScreenViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answerText: UILabel!
    
    @IBOutlet weak var correctAnswerLabel: UILabel!
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBAction func nextQuestion(_ sender: Any) {
        if (questionIndex >= jsonData![myIndex].questions.count) {
            performSegue(withIdentifier: "answerToFinish", sender: self)
        } else {
            performSegue(withIdentifier: "answerToQuestion", sender: self)
        }
    }
    
    @IBAction func answerHome(_ sender: Any) {
        performSegue(withIdentifier: "answerToHome", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionLabel.text = jsonData![myIndex].questions[questionIndex - 1].text
        
        correctAnswerLabel.text = "The correct answer is " + jsonData![myIndex].questions[questionIndex - 1].answers[Int(jsonData![myIndex].questions[questionIndex - 1].answer)! - 1]
        
        if (correctAnswer) {
            answerText.text = "Right!"
        } else {
            answerText.text = "Wrong!"
        }
        
        correctAnswer = false
        
        if (questionIndex >= jsonData![myIndex].questions.count) {
            nextButton.setTitle("Finish Test", for: .normal)
        } else {
           nextButton.setTitle("Next Question", for: .normal)
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
