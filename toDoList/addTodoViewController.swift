//
//  addTodoViewController.swift
//  toDoList
//
//  Created by Sudiksha on 8/2/22.
//

import UIKit

class addTodoViewController: UITableViewController {

    
    
    var toDos : [File] = []
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        toDos = createToDos()
        
        
        

        
    }
    
    
    
    func createToDos()-> [File] {
        let swift = File()
        swift.name = "Learn Swift"
        swift.important = true
        
        let dog = File()
        dog.name = "walk the dog"
        
        return [swift, dog]
        
    }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    
    //keep
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let File = toDos[indexPath.row]
        // Configure the cell...

        if File.important {
            cell.textLabel?.text
            = "!" + File.name
        } else {
            cell.textLabel?.text = File.name
        }
        
        return cell
    }
    

    

    

    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
