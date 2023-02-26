
import Foundation

struct Image: Encodable {
    let prompt: String
    let n: Int
    let size: String
    let user: String

    enum CodingKeys: String, CodingKey {
        case prompt
        case n
        case size
        case user
    }
}