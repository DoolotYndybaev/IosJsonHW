//
//  ViewController.swift
//  8HWJSON
//
//  Created by Doolot on 20/1/22.
//


import UIKit
// JSON1
//class NewsModel: Codable {
//    var news: [arrayNews] = []
//    var page: Int? = nil
//}
//class arrayNews: Codable {
//    var title: String? = nil
//    var id: Int? = nil
//    var image: String? = nil
//}
// ----------------------------------------
// JSON2
//class Cafe: Codable {
//    var cafe: [CafeModel] = []
//    var comment: CommentModel
//}
//class CafeModel: Codable {
//    var title: String? = nil
//    var id: Int? = nil
//    var image: String? = nil
//    var bord: [Int]? = nil
//}
//
//class CommentModel: Codable {
//    var id: String? = nil
//}
// ----------------------------------------
// JSON3
//class Cafe: Codable {
//    var cafe: [CafeModel] = []
//}
//class CafeModel: Codable {
//    var title: String? = nil
//    var id: Int? = nil
//    var image: String? = nil
//    var bord: [Bord] = []
//}
//class Bord : Codable {
//    var id: Int? = nil
//    var title: String? = nil
//}
// ----------------------------------------
// JSON4
class Cafe: Codable {
    var dependentsCount: String? = nil
    var requestingAmount: Int? = nil
    var repaymentDays: Int? = nil
    var educationDegree: String? = nil
    var actualResidenceLocation: String? = nil
    var durationOfActualResidenceLocation: String? = nil
    var placeOfWork: CafeModel
    var incomes: [IncomesModel] = []
    var maritalStatus: String? = nil
    var spouse: Spouse
    var realEstateItems: [realEstateItemsModel] = []
    var personalEstateItems : [personalEstateItemsModel] = []
    var isPublicOfferRead: Bool? = nil
    var isLimitUpgradeApplication: Bool? = nil

}
class CafeModel: Codable {
    var placeOfWorkType:String? = nil
    var income: Int? = nil
    var address: String? = nil
    var workExperience:String? = nil
    var employeeCompany:String? = nil
    var employeePosition:String? = nil
    var documentImage:String? = nil
    var entrepreneurshipType:String? = nil
    var entrepreneurshipDescription:String? = nil
    var entrepreneurshipCertificateNumber:String? = nil
  
}
class IncomesModel : Codable {
    var work: String? = nil
    var value: Int? = nil
}
class Spouse : Codable {
    var name: String? = nil
    var surname: String? = nil
    var patronymic: String? = nil
    var incomes: [IncomesModel] = []
}

class realEstateItemsModel : Codable {
    var type: String? = nil
    var address: String? = nil

}
class personalEstateItemsModel : Codable {
    var type: String? = nil
    var brand: String? = nil
    var model: String? = nil
    var manufactureYear: Int? = nil

}
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //JSON1
        //        let json = """
        //        {
        //          "news" : [
        //            {
        //              "title": "test1",
        //              "id": 1,
        //              "image": "URL"
        //            },
        //            {
        //              "title": "test1",
        //              "id": 1,
        //              "image": "URL"
        //            },
        //            {
        //              "title": "test1",
        //              "id": 1,
        //              "image": "URL"
        //            },
        //            {
        //              "title": "test1",
        //              "id": 1,
        //              "image": "URL"
        //            },
        //            {
        //              "title": "test1",
        //              "id": 1,
        //              "image": "URL"
        //            }
        //          ],
        //          "page": 10
        //        }
        //        """
        //        ------------------------------------------------------------
        //        // JSON2
        //        let json = """
        //        {
        //          "cafe" : [
        //            {
        //              "title": "test1",
        //              "id": 1,
        //              "image": "URL",
        //              "bord": [1, 2, 3, 4]
        //            },
        //            {
        //              "title": "test1",
        //              "id": 1,
        //              "image": "URL",
        //              "bord": [1, 2, 3, 4]
        //            },
        //            {
        //              "title": "test1",
        //              "id": 1,
        //              "image": "URL",
        //              "bord": [1, 2, 3, 4]
        //            },
        //            {
        //              "title": "test1",
        //              "id": 1,
        //              "image": "URL",
        //              "bord": [1, 2, 3, 4]
        //            },
        //            {
        //              "title": "test1",
        //              "id": 1,
        //              "image": "URL",
        //              "bord": [1, 2, 3, 4]
        //            }
        //          ],
        //          "comment": {
        //            "id": "test"
        //          }
        //        }
        //"""
        // ----------------------------------------------------
        //jSON3
        //        let json = """
        //        {
        //          "cafe" : [
        //            {
        //              "title": "test1",
        //              "id": 1,
        //              "image": "URL",
        //              "bord": [
        //                {
        //                  "id": 1,
        //                  "title": "test"
        //                },
        //                {
        //                  "id": 2,
        //                  "title": "test"
        //                }
        //              ]
        //            },
        //            {
        //              "title": "test1",
        //              "id": 1,
        //              "image": "URL",
        //              "bord": [
        //                {
        //                  "id": 1,
        //                  "title": "test"
        //                },
        //                {
        //                  "id": 2,
        //                  "title": "test"
        //                }
        //                ]
        //            },
        //            {
        //              "title": "test1",
        //              "id": 1,
        //              "image": "URL",
        //              "bord": [
        //                {
        //                  "id": 1,
        //                  "title": "test"
        //                },
        //                {
        //                  "id": 2,
        //                  "title": "test"
        //                }
        //              ]
        //            },
        //            {
        //              "title": "test1",
        //              "id": 1,
        //              "image": "URL",
        //              "bord": [
        //                {
        //                  "id": 1,
        //                  "title": "test"
        //                },
        //                {
        //                  "id": 2,
        //                  "title": "test"
        //                }
        //                ]
        //            },
        //            {
        //              "title": "test1",
        //              "id": 1,
        //              "image": "URL",
        //              "bord": [
        //                {
        //                  "id": 1,
        //                  "title": "test"
        //                },
        //                {
        //                  "id": 2,
        //                  "title": "test"
        //                }
        //              ]
        //            }
        //          ]
        //        }
        //"""
        // ----------------------------------------------------
        //jSON3
        let json = """
        {
          "dependentsCount": "Nil",
          "requestingAmount": 0,
          "repaymentDays": 0,
          "educationDegree": "Higher",
          "actualResidenceLocation": "Bishkek",
          "durationOfActualResidenceLocation": "_0and2Months",
          "placeOfWork": {
            "placeOfWorkType": "Company",
            "income": 100000000,
            "address": "string",
            "workExperience": "OneOrLess",
            "employeeCompany": "string",
            "employeePosition": "Specialist",
            "documentImage": "string",
            "entrepreneurshipType": "Trade",
            "entrepreneurshipDescription": "string",
            "entrepreneurshipCertificateNumber": "string"
          },
          "incomes": [
            {
              "work": "string",
              "value": 100000000
            }
          ],
          "maritalStatus": "Single",
          "spouse": {
            "name": "string",
            "surname": "string",
            "patronymic": "string",
            "incomes": [
              {
                "work": "string",
                "value": 100000000
              }
            ]
          },
          "realEstateItems": [
            {
              "type": "Apartment",
              "address": "string"
            }
          ],
          "personalEstateItems": [
            {
              "type": "Car",
              "brand": "string",
              "model": "string",
              "manufactureYear": 2100
            }
          ],
          "isPublicOfferRead": true,
          "isLimitUpgradeApplication": true
        }
"""
        
        
        
        let model = try! JSONDecoder().decode(Cafe.self, from: Data(json.utf8))
        dump(model)
    }
    
    
}

