//
//  UIViewControllerExtension.swift
//  NewsArticle

import SafariServices
import UIKit

extension UIViewController {
    func showAlertView(withTitle title: String?, andMessage message: String?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (_) -> Void in
        }))
        present(alert, animated: true, completion: nil)
    }
}
