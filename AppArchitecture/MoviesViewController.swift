//
//  MoviesViewController.swift
//  AppArchitecture
//
//  Created by User on 03/03/2023.
//

import UIKit

class MoviesViewController: UIViewController {

    weak var coordinator: MainCoordinator?

    var viewModel: MoviesViewModel!

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self

        viewModel.movies.onUpdate = { [weak self] _ in
            self?.tableView.reloadData()
        }

        viewModel.fetchData()
    }
}

extension MoviesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.movies.value.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
        let movie = viewModel.movies.value[indexPath.row]

        var content = cell.defaultContentConfiguration()
        content.text = movie.title
        content.textProperties.font = .preferredFont(forTextStyle: .headline)
        content.secondaryText = movie.overview
        content.secondaryTextProperties.font = .preferredFont(forTextStyle: .body)
        content.secondaryTextProperties.numberOfLines = 3
        cell.contentConfiguration = content

        return cell
    }
}

extension MoviesViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let movie = viewModel.movies.value[indexPath.row]

        coordinator?.displayDetails(of: movie)

        tableView.deselectRow(at: indexPath, animated: true)
    }
}
