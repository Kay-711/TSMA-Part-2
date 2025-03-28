//
//  PostsTableViewCell.swift
//  Tech Social Media App
//
//  Created by Kaylen Ward on 3/07/25.
//

import UIKit

class PostsTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var captionLabel: UILabel!
    
    @IBOutlet weak var userLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var commentsLabel: UILabel!
    
    func update(with post: Post) {
        titleLabel.text = post.title
        captionLabel.text = post.caption
        userLabel.text = post.user
        dateLabel.text = post.date
        commentsLabel.text = "\(post.comments.count) comments \(post.comments.first ?? " ")"
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
