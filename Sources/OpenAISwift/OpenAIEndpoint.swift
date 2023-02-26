//
//  Created by Adam Rush - OpenAISwift
//

import Foundation

enum Endpoint {
    case completions
    case edits
    case image_generations
    case image_edits
    case image_variations

}

extension Endpoint {
    var path: String {
        switch self {
            case .completions:
                return "/v1/completions"
            case .edits:
                return "/v1/edits"
            case .image_generations:
                return "/v1/images/generations"
            case .image_edits:
                return "/v1/images/edits"
            case .image_variations:
                return "/v1/images/variations"
            default:
                return ""
        }
    }
    
    var method: String {
        switch self {
            case .completions, .edits, .image_generations, .image_edits, .image_variations:
                return "POST"
            default:
                return ""
        }
    }
    
    func baseURL() -> String {
        switch self {
            case .completions, .edits, .image_generations, .image_edits, .image_variations:
                return "https://api.openai.com"
            default:
                return ""
        }
    }
}
