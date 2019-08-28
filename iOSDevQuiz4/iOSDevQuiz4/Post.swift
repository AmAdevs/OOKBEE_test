//
//  Post.swift
//  iOSDevQuiz4
//
//  Created by Ananchai Mankhong on 28/8/2562 BE.
//  Copyright © 2562 Ananchai Mankhong. All rights reserved.
//

import Foundation


struct Post: Encodable {
    var bookId: Int = 0
    var bookName: String = ""
    var bookAuthor: String = ""
    var bookPrice: Double = 0.0
    
    init(bookId: Int, bookName: String, bookAuthor: String, bookPrice: Double) {
        self.bookId = bookId
        self.bookName = bookName
        self.bookAuthor = bookAuthor
        self.bookPrice = bookPrice
    }
}
