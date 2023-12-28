//
//  CalculatorModel.swift
//  APlusCalculator
//
//  Created by ravit chaudhary on 12/04/23.
//

import Foundation
struct CalculatorModel: Decodable {
    var Message: String?
    var Object1: Object10?
    var Object2: Object20?
    var Object3: Object30?
    var Status:  Bool?


}

// MARK: - Object1
struct Object10:Decodable {
    var Description1, Description2,Title1: String?

}

// MARK: - Object2
struct Object20:Decodable {
    var Description3, Description4, ImageURL1,ImageURL2: String?
    var Title2: String?


}

// MARK: - Object3
struct Object30:Decodable {
    var Description5, Title3, VideoURL: String?

}
//struct CalculatorModel: Codable {
//    var message: String?
//    var object1: Object1?
//    var object2: Object2?
//    var object3: Object3?
//    var status: Bool?
//
//    enum CodingKeys: String, CodingKey {
//        case message = "Message"
//        case object1 = "Object1"
//        case object2 = "Object2"
//        case object3 = "Object3"
//        case status = "Status"
//    }
//}
//
//// MARK: - Object1
//struct Object1: Codable {
//    var description1, description2, title1: String?
//
//    enum CodingKeys: String, CodingKey {
//        case description1 = "Description1"
//        case description2 = "Description2"
//        case title1 = "Title1"
//    }
//}
//
//// MARK: - Object2
//struct Object2: Codable {
//    var description3, description4, imageURL1, imageURL2: String?
//    var title2: String?
//
//    enum CodingKeys: String, CodingKey {
//        case description3 = "Description3"
//        case description4 = "Description4"
//        case imageURL1 = "ImageURL1"
//        case imageURL2 = "ImageURL2"
//        case title2 = "Title2"
//    }
//}
//
//// MARK: - Object3
//struct Object3: Codable {
//    var description5, title3, videoURL: String?
//
//    enum CodingKeys: String, CodingKey {
//        case description5 = "Description5"
//        case title3 = "Title3"
//        case videoURL = "VideoURL"
//    }
//}
