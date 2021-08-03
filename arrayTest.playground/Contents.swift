import UIKit

struct Question {
    var Question: String!
    var Answers: [String]!
    var Answer: Int!
}

let SE = ["röd", "gul", "orange", "grön"]
          //, "blå", "lila", "brun", "svart", "vit", "grå"]

let SK = ["červená", "žltá", "oranžová", "zelená"]
//,"modrá", "fialová", "hnedá", "čierna", "biela", "sivá"]

var Questions = [Question]()

for i in 0..<SE.count {
    Question += SE[i]
}
print(Questions)
