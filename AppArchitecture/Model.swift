//
//  Model.swift
//  AppArchitecture
//
//  Created by User on 03/03/2023.
//

import Foundation
import UIKit

let apiKey = "da9bc8815fb0fc31d5ef6b3da097a009"

let jsonDecoder: JSONDecoder = {
    let decoder = JSONDecoder()
    decoder.keyDecodingStrategy = .convertFromSnakeCase
    return decoder
}()
