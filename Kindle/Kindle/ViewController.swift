//
//  ViewController.swift
//  Kindle
//
//  Created by Shreyak Godala on 24/09/19.
//  Copyright © 2019 Shreyak Godala. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var books:[Book]?

    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let count = books?.count {
            
            return count
            
        }
        
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! BookCell
        
        let book = self.books?[indexPath.row]
        
        cell.book = book
        
//        cell.textLabel?.text = book?.title
//        cell.imageView?.image = book?.image
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.register(BookCell.self, forCellReuseIdentifier: "cellId")
        
        tableView.tableFooterView = UIView()
        
        view.backgroundColor = .white
        
        navigationItem.title = "Kindle"
        
        
        let page1 = Page(number: 1, text: "Text for page one")
        let page2 = Page(number: 2, text: "Text for page two")
        
        let pages = [page1,page2]
        
        let book1 = Book(title: "Steve Jobs", author: "Walter Isaacton", pages: pages, image: #imageLiteral(resourceName: "steve_jobs"))
        let book2 = Book(title: "Bill Gates", author: "Michael Becraft", pages: pages, image: #imageLiteral(resourceName: "bill_gates"))
        
        print(book1.pages[0].text)
        
        self.books = [book1,book2]
        
        
    }


}

