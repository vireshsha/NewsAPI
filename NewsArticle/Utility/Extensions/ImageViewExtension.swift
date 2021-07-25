//
//  ImageViewExtension.swift
//  NewsArticle

//

import Kingfisher
import UIKit

extension UIImageView {
    public func setImage(url: URL?) {
        self.kf.setImage(with: url, placeholder: Asset.Icons.placeholder.image)
    }
}
