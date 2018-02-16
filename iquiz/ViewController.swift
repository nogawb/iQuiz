//
//  ViewController.swift
//  iquiz
//
//  Created by Ben Nogawa on 2/11/18.
//  Copyright © 2018 Ben Nogawa. All rights reserved.
//

import UIKit
    var myIndex = 0
    let list = ["Mathematics", "Marvel Super Heroes", "Science"]
    let sampleQuestions = ["question 1", "question 2", "question 3", "question 4", "question 5", "question 6"]
    let sampleAnswers = ["Answer 1", "Answer 2", "Answer 3", "Answer 4"]
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

