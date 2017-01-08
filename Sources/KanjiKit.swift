import Foundation

let bundle = Bundle(identifier: "KanjiKit")

public func loadJLPT() -> [List] {
    guard
        let url = bundle?.url(forResource:"jlpt", withExtension: "json"),
        let data = try? Data(contentsOf: url),
        let json = try? JSONSerialization.jsonObject(with: data),
        let jsonItems = json as? [[String: Any]] else { return [] }
    return jsonItems.map { item in
        var list = List()
        if let title = item["title"] as? String, let codepointHexStrings = item["items"] as? [String] {
            list.title = title
            list.items = codepointHexStrings.flatMap({ return Int($0, radix: 16) }).map({ return Kanji(codepoint: $0) })
        }
        return list
    }
}
