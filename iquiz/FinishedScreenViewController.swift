//
//  FinishedScreenViewController.swift
//  iquiz
//
//  Created by Ben Nogawa on 2/15/18.
//  Copyright © 2018 Ben Nogawa. All rights reserved.
//

import UIKit

class FinishedScreenViewController: UIViewController {
    
    
    @IBOutlet weak var finishedLabel: UILabel!
    
    @IBAction func finishHome(_ sender: Any) {
        performSegue(withIdentifier: "finishToHome", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        finishedLabel.text = "You got " + String(numberCorrect) + "/" + String(sampleQuestions.count) + " correct!"
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
