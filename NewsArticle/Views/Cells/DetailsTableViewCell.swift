//
//  DetailsTableViewCell.swift
//  NewsArticle

import UIKit

class DetailsTableViewCell: UITableViewCell {
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var thumbnailImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configure(_ data: NewsListDTO) {
        titleLabel.text = data.title
        descriptionLabel.text = data.description
        thumbnailImage.setImage(url: URL(string: data.urlToImage))
    }
}
