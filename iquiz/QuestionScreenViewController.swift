//
//  QuestionScreenViewController.swift
//  iquiz
//
//  Created by Ben Nogawa on 2/15/18.
//  Copyright © 2018 Ben Nogawa. All rights reserved.
//

import UIKit

class QuestionScreenViewController: UIViewController {
    var selectedAnswer = ""
    
    @IBOutlet weak var question: UILabel!
    
    @IBOutlet weak var answer1: UIButton!
    
    @IBOutlet weak var answer2: UIButton!
    
    @IBOutlet weak var answer3: UIButton!
    
    @IBOutlet weak var answer4: UIButton!
    
    @IBAction func chosen1(_ sender: Any) {
        selectedAnswer = ((sender as AnyObject).titleLabel??.text!)!
    }
    
    //submit answer button
    //when button is clicked transition to the answer screen
    
    @IBAction func submitAnswer(_ sender: Any) {
        NSLog("The correct ans is " + sampleCorrectAnswers[questionIndex] + "// The selected answer is " + selectedAnswer)
        if (selectedAnswer == sampleCorrectAnswers[questionIndex]) {
            correctAnswer = true
            numberCorrect = numberCorrect + 1
        }
        
        questionIndex = questionIndex + 1
        
        performSegue(withIdentifier: "questionToAnswer", sender: self)
        
    }
    
    @IBAction func questionHome(_ sender: Any) {
        performSegue(withIdentifier: "questionToHome", sender: self)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        question.text = sampleQuestions[questionIndex]
        answer1.setTitle(sampleAnswers[0], for: .normal)
        answer2.setTitle(sampleAnswers[1], for: .normal)
        answer3.setTitle(sampleAnswers[2], for: .normal)
        answer4.setTitle(sampleAnswers[3], for: .normal)
        
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
