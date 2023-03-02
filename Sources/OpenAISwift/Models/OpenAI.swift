//
//  Created by Adam Rush - OpenAISwift
//

import Foundation

public struct OpenAI: Codable {
    public let object: String
    public let model: String?
    public let choices: [Choice]
}

public struct OpenAIChatGPT: Codable {
    public let object: String
    public let model: String?
    public let choices: [ChatChoice]
}

public struct OpenAIImage: Codable {
    public let object: String
    public let data: [ImageURL]
}

public struct ImageURL: Codable {
    public let url: String
}

public struct Choice: Codable {
    public let text: String
}

public struct ChatChoice: Codable {
    public let index: Int
    public let message: ChatMessage
}
