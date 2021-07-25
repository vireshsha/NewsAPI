//
//  DetailTableViewController.swift
//  NewsArticle

import RxCocoa
import RxSwift
import UIKit

final class DetailTableViewController: UITableViewController {
    @IBOutlet var readMoreButton: UIButton!
    private var viewModel: DetailDataSource!

    convenience init(withDataSource dataSource: DetailDataSource) {
        self.init()
        self.viewModel = dataSource
    }

    static func detailTableVC(_ newsInfo: NewsListDTO) -> DetailTableViewController {
        let viewController = StoryboardScene.Main.detailTableViewController.instantiate()
        viewController.viewModel = DetailViewModel(withNewsModel: newsInfo)
        return viewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        configureTableView()
    }

    private func setUpUI() {
        navigationItem.title = viewModel.title
    }

    private func configureTableView() {
        tableView.register(DetailsTableViewCell.self)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as DetailsTableViewCell
        let data = viewModel.infoForRowAt(indexPath.row)
        cell.configure(data)
        cell.selectionStyle = .none
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {}
}
