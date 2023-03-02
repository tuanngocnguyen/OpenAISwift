//
//  Created by Adam Rush - OpenAISwift
//

import Foundation

struct Instruction: Encodable {
    let instruction: String
    let model: String
    let input: String

    enum CodingKeys: String, CodingKey {
        case instruction
        case model
        case input
    }
}
