//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Yadisa Belliard on 3/28/24.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    var post: Post!
    
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        textView.text = post.caption.trimHTMLTags()
        
        
        if let photo = post.photos.first {
            let url = photo.originalSize.url
            
            Nuke.loadImage(with: url, into: imageView)
            
        }
    }
}
