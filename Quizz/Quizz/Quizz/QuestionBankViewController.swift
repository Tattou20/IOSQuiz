//
//  QuestionBankViewController.swift
//  Quizz
//
//  Created by user238581 on 3/29/24.
//

import UIKit

class QuestionBankViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var data: [String] = []
    
    override func viewDidLoad()
    {
            super.viewDidLoad()
        tableView.delegate = self
                tableView.dataSource = self    }
    
    @IBAction func questionBuilder(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "questionbuilder_vc") as! QuestionBuilderViewController
                present(vc, animated: true)     }
    
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)}
    
    func addItem(_ item: String) {
            data.append(item)
            tableView.reloadData()
        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return data.count
        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
           cell.textLabel?.text = data[indexPath.row]
           return cell
       }
    
}
