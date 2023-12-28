//
//  ApiError.swift
//  UniversalSompo
//
//  Created by ravit chaudhary on 19/02/23.
//  Copyright © 2023 Inmorteltech. All rights reserved.
//

import Foundation

enum APIError: Error
{
    case invalidURL
    case invalidResponseCode(code: Int)
    case unknownError
    case dataParsingError
    case failureAPI(String)

}
