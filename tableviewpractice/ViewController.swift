//
//  ViewController.swift
//  tableviewpractice
//
//  Created by Alumme on 1/13/16.
//  Copyright © 2016 Alumme. All rights reserved.
//

import UIKit
// bring in data source and delegate protocols for table view
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    @IBOutlet weak var myTableView: UITableView!
    
    var superheroes = ["Batman", "Superman", "Aquaman", "Wonder Woman", "The Flash", "Spiderman"]
    var realNames = ["Bruce Wayne", "Clark Kent", "Arthur Curry", "Diana", "Barry Allen", "Peter Parker"]
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        //set table view data source and delegate to view controller
        myTableView.dataSource = self
        myTableView.delegate = self
    }
    
    
    //required functions for table view protocol- details for table view cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let myCell = myTableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath)
        myCell.textLabel?.text = superheroes[indexPath.row]
        myCell.detailTextLabel?.text = realNames[indexPath.row]
        return myCell
    }
    
    //required functions for table view protocol- sets number of rows in table view
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return superheroes.count
    }


}

