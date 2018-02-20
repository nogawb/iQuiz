//
//  ViewController.swift
//  iquiz
//
//  Created by Ben Nogawa on 2/11/18.
//  Copyright © 2018 Ben Nogawa. All rights reserved.
//

import UIKit

    struct Subjects: Decodable{
        let title: String
        let desc: String
        let questions: [Question]
    }

    struct Question: Decodable{
        let text: String
        let answer: String
        let answers: [String]
    }

    let url = URL(string: "http://tednewardsandbox.site44.com/questions.json")
    var jsonData: [Subjects]? = nil
    var myIndex = 0
    var questionIndex = 0
    var numberCorrect = 0
    let list = ["Mathematics", "Marvel Super Heroes", "Science"]
    let sampleQuestions = ["1+1=", "3+1=", "4-2= ", "2-1=", "4/2=", "4-1="]
    let sampleAnswers = ["1", "2", "3", "4"]
    let sampleCorrectAnswers = ["2", "3", "2", "1", "2", "3"]
    var correctAnswer = false
    var titles: [String] = []
    var descriptions: [String] = []


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBAction func settingsButton(_ sender: Any) {
       let alert = UIAlertController(title: "Setting Title", message: "If I had it it would be here", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        present(alert, animated: true, completion: nil)
        
    }
    
    
    //makes cells
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return(list.count)
    }
    
    //populates cells 
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ViewControllerTableViewCell
        
        cell.titleImage.image = UIImage(named: (list[indexPath.row] + ".jpg"))
        cell.titleLabel.text = list[indexPath.row]
        
        cell.descriptionLabel.text = "This is the description. If there were description text it would go here. Imagine a yuuuge block of description text."
        return(cell)
    }
    
    //transitions from categories screen to question view
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "categoryToQuestion", sender: self)
    }
    
    func downloadQuiz() {
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionIndex = 0
        numberCorrect = 0
        myIndex = 0
        correctAnswer = false
        /*let url = URL(string: "http://tednewardsandbox.site44.com/questions.json")
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if error != nil
            {
                print("ERROR")
            }
            else
            {
               if let content = data
               {
                    do
                    {
                       // let myJson = try JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject
                        //print(myJson)
                        //let subjects = try JSONDecoder().decode(Subjects.self, from: content)
                        //print(subjects)
                        /*self.jsonData = subjects
                        for s in subjects{
                            self.titles.append(s.title)
                            self.descriptions.append(s.desc)
                        } */
                    }
                    catch
                    {
                        
                    }
                }
            }
            
        }
        task.resume()*/
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

