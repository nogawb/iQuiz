//
//  QuestionScreenViewController.swift
//  iquiz
//
//  Created by Ben Nogawa on 2/15/18.
//  Copyright © 2018 Ben Nogawa. All rights reserved.
//

import UIKit

class QuestionScreenViewController: UIViewController {
    let correctAnswerIndex = Int(jsonData![myIndex].questions[questionIndex].answer)
    var selectedAnswer = ""
    
    @IBOutlet weak var question: UILabel!
    
    @IBOutlet weak var answer1: UIButton!
    
    @IBOutlet weak var answer2: UIButton!
    
    @IBOutlet weak var answer3: UIButton!
    
    @IBOutlet weak var answer4: UIButton!
    
    @IBAction func chosen1(_ sender: UIButton) {
        selectedAnswer = (sender.titleLabel?.text!)!
        answer1.backgroundColor = UIColor.white
        answer2.backgroundColor = UIColor.white
        answer3.backgroundColor = UIColor.white
        answer4.backgroundColor = UIColor.white
        sender.backgroundColor = UIColor.cyan
    }
    
    //submit answer button
    //when button is clicked transition to the answer screen
    
    @IBAction func submitAnswer(_ sender: Any) {
        if (selectedAnswer == jsonData![myIndex].questions[questionIndex].answers[correctAnswerIndex! - 1]) {
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
        question.text = jsonData![myIndex].questions[questionIndex].text
        answer1.setTitle(jsonData![myIndex].questions[questionIndex].answers[0], for: .normal)
        answer2.setTitle(jsonData![myIndex].questions[questionIndex].answers[1], for: .normal)
        answer3.setTitle(jsonData![myIndex].questions[questionIndex].answers[2], for: .normal)
        answer4.setTitle(jsonData![myIndex].questions[questionIndex].answers[3], for: .normal)
        
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
