//
//  ViewController.swift
//  Aging People
//
//  Created by Atheer Alahmari on 07/05/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var table_View: UITableView!
    var objPeople : [People] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         objPeople = [People(name: "Atheer", age: Int.random(in: 5...95)),
                      People(name: "Ghadah", age: Int.random(in: 5...95)),
                      People(name: "Reem", age: Int.random(in: 5...95)),
                      People(name: "Saud", age: Int.random(in: 5...95)),
                      People(name: "Mishal", age: Int.random(in: 5...95)),
                      People(name: "Jana", age: Int.random(in: 5...95)),
                      People(name: "Ahmed", age: Int.random(in: 5...95)),
                      People(name: "Sara", age: Int.random(in: 5...95)),
                      People(name: "Asmaa", age: Int.random(in: 5...95)),
                      People(name: "Khaled", age: Int.random(in: 5...95)),
                      People(name: "Danah", age: Int.random(in: 5...95)),
                      People(name: "Bader", age: Int.random(in: 5...95))]
        
        
        table_View.dataSource = self // important thing
    }


}

extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return objPeople.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ID_Cell", for: indexPath)
        
        let peopleInfo = objPeople[indexPath.row]
        cell.textLabel?.text = peopleInfo.name
        cell.detailTextLabel?.text = "\(peopleInfo.age) years old"
        return cell
    }
    
    
}

struct People {
    var name : String
    var age : Int
}

