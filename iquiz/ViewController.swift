//
//  ViewController.swift
//  iquiz
//
//  Created by Ben Nogawa on 2/11/18.
//  Copyright © 2018 Ben Nogawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let list = ["Mathematics", "Marvel Super Heroes", "Science"]
    
    @IBAction func settingsButton(_ sender: Any) {
       let alert = UIAlertController(title: "Setting Title", message: "If I had it it would be here", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        present(alert, animated: true, completion: nil)
        
    }
    
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return(list.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ViewControllerTableViewCell
        
        cell.titleImage.image = UIImage(named: (list[indexPath.row] + ".jpg"))
        cell.titleLabel.text = list[indexPath.row]
        
        cell.descriptionLabel.text = "This is the description. If there were description text it would go here. Imagine a yuuuge block of description text."
        return(cell)
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

