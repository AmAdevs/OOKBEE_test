//
//  ViewController.swift
//  iOSDevQuiz4
//
//  Created by Ananchai Mankhong on 28/8/2562 BE.
//  Copyright © 2562 Ananchai Mankhong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var bookIdTextField: UITextField!
    @IBOutlet weak var bookNameTextField: UITextField!
    @IBOutlet weak var bookAuthorTextField: UITextField!
    @IBOutlet weak var bookPriceTextField: UITextField!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func postData(_ post: Post) {

        let encoder = JSONEncoder()
        guard let uploadData = try? encoder.encode(post) else {
            return
        }



        guard let ookBeeURL = URL(string: "http://api.ookbee.com/user/1/book") else { return print("URL Error") }
        var request = URLRequest(url: ookBeeURL)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")

        let task = URLSession.shared.uploadTask(with: request, from: uploadData) { data, response, error in
            if let error = error {
                print ("error: \(error)")
                return
            }
            guard let response = response as? HTTPURLResponse,
                (200...299).contains(response.statusCode) else {
                    print ("server error")
                    return
            }
            if let mimeType = response.mimeType,
                mimeType == "application/json",
                let data = data,
                let dataString = String(data: data, encoding: .utf8) {
                print ("got data: \(dataString)")
            }
        }
        task.resume()

    }

    
    @IBAction func addBookDidTap(_ sender: UIButton) {
        guard let id = Int(bookIdTextField.text!) else { return }
        let getId = id
        
        let getName = bookNameTextField.text!
        let getAuthor = bookAuthorTextField.text!
        
        guard let price = Double(bookPriceTextField.text!) else { return }
        let getPrice = price
        
        
        postData(Post(bookId: getId, bookName: getName, bookAuthor: getAuthor, bookPrice: getPrice))
        
        
    }
    // Output
    
    /*
     
        error: Error Domain=NSURLErrorDomain Code=-1003 "A server with the specified hostname could not be found." UserInfo={NSUnderlyingError=0x6000001178a0 {Error Domain=kCFErrorDomainCFNetwork Code=-1003 "(null)" UserInfo={_kCFStreamErrorCodeKey=8, _kCFStreamErrorDomainKey=12}}, NSErrorFailingURLStringKey=http://api.ookbee.com/user/1/book, NSErrorFailingURLKey=http://api.ookbee.com/user/1/book, _kCFStreamErrorDomainKey=12, _kCFStreamErrorCodeKey=8, NSLocalizedDescription=A server with the specified hostname could not be found.}
 

    */
    

}

