//
//  BookCell.swift
//  Kindle
//
//  Created by Shreyak Godala on 24/09/19.
//  Copyright © 2019 Shreyak Godala. All rights reserved.
//

import UIKit

class BookCell: UITableViewCell {
    
    var book: Book? {
        
        didSet{
            coverImageView.image = book?.image
            titleLabel.text = book?.title
            authorLabel.text = book?.author
            
        }
        
    }
    
    private let coverImageView: UIImageView = {
        
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        
        return iv
        
    }()
    
    private let titleLabel: UILabel = {
        
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "Title label for the book"
        
        return l
        
    }()
    
    private let authorLabel: UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Author label for book"
        
        return label
        
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .white
        
        addSubview(coverImageView)
        addSubview(titleLabel)
        addSubview(authorLabel)
        
        coverImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8).isActive = true
        coverImageView.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        coverImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8).isActive = true
        coverImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        titleLabel.leadingAnchor.constraint(equalTo: coverImageView.trailingAnchor, constant: 12).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -10).isActive = true
        
        authorLabel.leadingAnchor.constraint(equalTo: coverImageView.trailingAnchor, constant: 12).isActive = true
        authorLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4).isActive = true
        authorLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
}
