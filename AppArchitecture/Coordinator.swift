//
//  Coordinator.swift
//  AppArchitecture
//
//  Created by User on 03/03/2023.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }

    func start()
}
