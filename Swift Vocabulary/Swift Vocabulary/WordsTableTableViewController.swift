//
//  WordsTableTableViewController.swift
//  Swift Vocabulary
//
//  Created by Jeff Kang on 5/20/20.
//  Copyright © 2020 Jeff Kang. All rights reserved.
//

import UIKit

class WordsTableTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [
        VocabularyWord(word: "constant", definition: "constant is:"),
        VocabularyWord(word: "function", definition: "function is:"),
        VocabularyWord(word: "variable", definition: "variable is:")
    ]

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        // Configure the cell...
        
        let vocabWord = vocabWords[indexPath.row]
        
        cell.textLabel?.text = vocabWord.word

        return cell
    }


   
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // check to match segue identifier
        if segue.identifier == "ShowDefinitionSegue"{
            // Get the new view controller using segue.destination.
            let wordDefVC = segue.destination as? DefinitionViewController
            // get info you want to pass to new view controller
            if let indexPath = tableView.indexPathForSelectedRow {
                let vocabWord = vocabWords[indexPath.row]
                // Pass the selected object to the new view controller.
                wordDefVC?.vocabWord = vocabWord
            }
        }
    }

}
