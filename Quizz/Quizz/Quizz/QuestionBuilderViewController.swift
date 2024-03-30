//
//  QuestionBuilderViewController.swift
//  Quizz
//
//  Created by user238581 on 3/29/24.
//

import UIKit

class QuestionBuilderViewController: UIViewController {
    override func viewDidLoad() {
            super.viewDidLoad()}

    
    @IBAction func cancelQuestion(_ sender: Any) {
        dismiss(animated: true, completion: nil)}
    
    
    @IBAction func doneQuestion(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "questionbank_vc") as! QuestionBankViewController
                present(vc, animated: true)     }
    
}
