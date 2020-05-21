//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Jeff Kang on 5/20/20.
//  Copyright © 2020 Jeff Kang. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    // MARK: - definition view controller Properties
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var definition: UITextView!
    
    

    var vocabWord: VocabularyWord?
    func updateViews() {
        guard let unwrappedVocabWord = vocabWord else {
            return
        }
        
        
        label.text = unwrappedVocabWord.word
        definition.text = unwrappedVocabWord.definition
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()

        // Do any additional setup after loading the view.
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
