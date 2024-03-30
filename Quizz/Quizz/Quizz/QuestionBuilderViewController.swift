//
//  QuestionBuilderViewController.swift
//  Quizz
//
//  Created by user238581 on 3/29/24.
//

import UIKit

class QuestionBuilderViewController: UIViewController {


    @IBOutlet weak var addQuestion: UITextField!
    
    @IBOutlet weak var correctAnswer: UITextField!
    

    override func viewDidLoad() {
            super.viewDidLoad()}

    
    @IBAction func cancelQuestion(_ sender: Any) {
        dismiss(animated: true, completion: nil)}
    
    
    @IBAction func doneQuestion(_ sender: Any) {
        guard let text = addQuestion.text, text.isEmpty else {
                    return     }
        
        let listViewController = QuestionBankViewController()
                listViewController.addItem(text)

              
                navigationController?.pushViewController(listViewController, animated: true)
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "questionbank_vc") as! QuestionBankViewController
                present(vc, animated: true)            }
}
