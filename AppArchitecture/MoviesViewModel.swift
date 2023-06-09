//
//  MoviesViewModel.swift
//  AppArchitecture
//
//  Created by User on 03/03/2023.
//

import Foundation

class MoviesViewModel {
    let movies: Variable<[Movie]> = Variable([])
    let error: Variable<Error?> = Variable(nil)

    private let service: MoviesServicing

    init(service: MoviesServicing) {
        self.service = service
    }

    func fetchData() {
        service.getMovies { [weak self] result in
            switch result {
            case .success(let movieResponse):
                self?.movies.value = movieResponse.results
            case .failure(let error):
                self?.error.value = error
            }
        }
    }
}
