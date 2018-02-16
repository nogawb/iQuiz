//
//  QuestionScreenViewController.swift
//  iquiz
//
//  Created by Ben Nogawa on 2/15/18.
//  Copyright © 2018 Ben Nogawa. All rights reserved.
//

import UIKit

class QuestionScreenViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var selectedAnswer = ""
    
    @IBOutlet weak var question: UILabel!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return(sampleAnswers.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "questionCell")
        cell.textLabel?.text = sampleAnswers[indexPath.row]
        
        return(cell)
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedAnswer = sampleAnswers[indexPath.row - 1]
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
