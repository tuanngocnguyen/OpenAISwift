//
//  Created by Adam Rush - OpenAISwift
//

import Foundation

struct Command: Encodable {
    let prompt: String
    let model: String
    let maxTokens: Int
    let temperature: Double
    let user: String
    
    enum CodingKeys: String, CodingKey {
        case prompt
        case model
        case maxTokens = "max_tokens"
        case temperature
        case user
    }
}

struct ChatCommand: Encodable {
    let model: String
    let user: String
    let messages: [ChatMessage]
    
    enum CodingKeys: String, CodingKey {
        case model
        case user
        case messages
    }
}

public struct ChatMessage: Codable {
    public var role: String = "user"
    public let content: String
}

