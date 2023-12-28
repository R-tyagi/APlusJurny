//
//  PincodeData.swift
//  APlusCalculator
//
//  Created by DianApps on 05/04/23.
//

import Foundation
struct PincodeDataModel: Codable
{
  var StateCityZoneSheet: [StateCityZoneSheetModel]?
  var Status: Bool?
  var PinCodeStateZoneSheet: [PinCodeStateZoneSheetModel]?
  var Message: String?
}


struct StateCityZoneSheetModel: Codable
{
  var City: String?
  var PinCode: String?
  var State: String?
  var Zone: String?
}


struct PinCodeStateZoneSheetModel: Codable
{
    var PinCode: String?
    var State: String?
    var Zone: String?
    var City: String?
}
//
//"PinCodeStateZoneSheet": [
//    {
//        "PinCode": "744208",
//        "State": "ANDAMAN AND NICOBAR ISLANDS",
//        "Zone": "Zone 2"
//    }
//
//
//StateCityZoneSheet
//{
//    "City": "TEZPUR",
//    "PinCode": "784110",
//    "State": "ASSAM",
//    "Zone": "Zone 2"
//}
