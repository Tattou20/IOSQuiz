//
//  QuestionBankViewController.swift
//  Quizz
//
//  Created by user238581 on 3/29/24.
//

import UIKit

class QuestionBankViewController: UIViewController {
    override func viewDidLoad()
    {
            super.viewDidLoad()}
    
    @IBAction func questionBuilder(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "questionbuilder_vc") as! QuestionBuilderViewController
                present(vc, animated: true)     }
    
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)}
    
}
