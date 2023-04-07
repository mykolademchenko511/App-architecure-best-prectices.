//
//  MainCoordinator.swift
//  AppArchitecture
//
//  Created by User on 03/03/2023.
//

import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let vc = ViewControllerProvider.moviesViewController
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }

    func displayDetails(of movie: Movie) {
        let detailsVC = ViewControllerProvider.movieDetailsController(for: movie)
        detailsVC.coordinator = self
        navigationController.pushViewController(detailsVC, animated: true)
    }
}
