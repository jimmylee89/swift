//
//  ViewController.swift
//  Todo
//
//  Created by 李嘉敏 on 15/6/10.
//  Copyright (c) 2015年 jimmylee. All rights reserved.
//

import UIKit

var todos:[TodoModel] = []
var filterTodos:[TodoModel] = []

class ViewController: UIViewController,UITableViewDataSource ,UITableViewDelegate, UISearchResultsUpdating{
    @IBOutlet weak var tableView: UITableView!
    
    var resultSearchController = UISearchController()
    
    func dateFromString(dateStr:String)->NSDate?{
        let dateFormater = NSDateFormatter()
        dateFormater.dateFormat = "yyyy-MM-dd"
        let date = dateFormater.dateFromString(dateStr)
        return date
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        todos = [TodoModel(id: "1", image: "ic_apple", title: "aaaaaa", date: dateFromString("2015-04-03")!),
            TodoModel(id: "2", image: "ic_woman", title: "bbbbbbb", date: dateFromString("2015-04-04")!),
            TodoModel(id: "3", image: "ic_wechat", title: "ccccccc", date: dateFromString("2015-04-05")!)
        ]
        
        navigationItem.leftBarButtonItem = editButtonItem()
        
        self.resultSearchController = ({
            
            let controller = UISearchController(searchResultsController: nil)
            controller.searchResultsUpdater = self
            controller.dimsBackgroundDuringPresentation = false
            controller.searchBar.sizeToFit()
            controller.searchBar.barStyle = UIBarStyle.Black
            controller.searchBar.barTintColor = UIColor.whiteColor()
            controller.searchBar.backgroundColor = UIColor.clearColor()
            self.tableView.tableHeaderView = controller.searchBar
            return controller
            
            
        })()
        
        
        self.tableView.reloadData()
        
        //auto height
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 80
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        if self.resultSearchController.active  {
            return filterTodos.count
        }
        else {
            return todos.count
        }
    }
    
    //init cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = self.tableView.dequeueReusableCellWithIdentifier("todoCell") as! UITableViewCell
        var todo: TodoModel?
        if self.resultSearchController.active {
             todo = filterTodos[indexPath.row]
        }else{
            
            todo = todos[indexPath.row]
            
        }

        
        
        let image = cell.viewWithTag(101) as! UIImageView
        let title = cell.viewWithTag(102) as! UILabel
        let content = cell.viewWithTag(103) as! UILabel
        
        image.image = UIImage(named: todo!.image)
        title.text = todo?.title
        
        let local = NSLocale.currentLocale()
        let dateFormat =  NSDateFormatter.dateFormatFromTemplate("yyyy-MM-dd", options: 0, locale: local)
        let dateFormater = NSDateFormatter()
        dateFormater.dateFormat = dateFormat
        
        content.text = dateFormater.stringFromDate(todo!.date)
        
        
        
        return cell
    }
    
    //editRow
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        todos.removeAtIndex(indexPath.row)
        //self.tableView.reloadData()
        self.tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
    }
    
    //moveRow
    func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath){
        let todo = todos.removeAtIndex(sourceIndexPath.row)
        todos.insert(todo, atIndex: destinationIndexPath.row)
    }
    
    // editable
    override func setEditing(editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        
        tableView.setEditing(editing, animated: animated)
    }
    
    
    //on backTap
    @IBAction func close(segue: UIStoryboardSegue){
        tableView.reloadData()
    }
    
    
    //to edit, or add UI
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "101"{
            
        }else if segue.identifier == "102"{
            let vc = segue.destinationViewController as! DetailViewController
            let indexPath = tableView.indexPathForSelectedRow()
            if let index = indexPath{
                let todo = todos[index.row]
                vc.todoModel = todo
                
            }
        }
    }
    
    
    
    // search
    func updateSearchResultsForSearchController(searchController: UISearchController){
        // filterTodos.removeAll(keepCapacity: false)
        
        
        filterTodos = todos.filter(){$0.title.rangeOfString(searchController.searchBar.text) != nil}
        
        self.tableView.reloadData()
    }
    
}








