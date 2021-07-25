//
//  NewsListViewController.swift
//  NewsArticle

import RxCocoa
import RxSwift
import UIKit

final class NewsListViewController: UITableViewController, BaseViewProtocol {
    private var viewModel: NewsListViewModelDataSource = NewsListViewModel()
    private let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        configureTableView()
        setupViewModel()
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    private func setUpUI() {
        viewModel.title.bind(to: navigationItem.rx.title).disposed(by: disposeBag)
    }

    private func configureTableView() {
        tableView.register(NewsTableViewCell.self)
        tableView.tableFooterView = UIView(frame: CGRect.zero)
    }

    private func setupViewModel() {
        viewModel.updateInfo
            .asDriver(onErrorJustReturn: false)
            .drive(onNext: { [weak self] _ in
                self?.tableView.reloadData()
            }).disposed(by: disposeBag)

        viewModel.errorResult
            .observeOn(MainScheduler.instance)
            .subscribe(onNext: { [weak self] error in
                self?.showAlertView(withTitle: "error", andMessage: error.localizedDescription)
            }).disposed(by: disposeBag)

        viewModel.isLoading.bind(to: isAnimating).disposed(by: disposeBag)

        viewModel.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as NewsTableViewCell
        let data = viewModel.infoForRowAt(indexPath.row)
        cell.configure(data)
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        handellNavigation(indexPath)
    }

    // MARK: - Navigation

    private func handellNavigation(_ indexPath: IndexPath) {
        let data = viewModel.infoForRowAt(indexPath.row)
        let viewController = DetailTableViewController.detailTableVC(data)
        navigationController?.pushViewController(viewController, animated: true)
    }
}
