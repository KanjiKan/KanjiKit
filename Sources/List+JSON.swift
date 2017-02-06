//
//  List+JSON.swift
//  KanjiKit
//
//  Created by Sikhapol Saijit on 2/7/17.
//  Copyright © 2017 KanjiKan. All rights reserved.
//

import Foundation

extension List {
    public static func lists(withContentsOf url: URL) -> [List]? {
        guard
            let data = try? Data(contentsOf: url),
            let json = try? JSONSerialization.jsonObject(with: data),
            let jsonItems = json as? [[String: Any]]
        else {
            return nil
        }

        return jsonItems.map { item in
            var list = List()
            if let title = item["title"] as? String, let codepointHexStrings = item["items"] as? [String] {
                list.title = title
                list.items = codepointHexStrings.flatMap({ return Int($0, radix: 16) }).map({ return Kanji(codepoint: $0) })
            }
            return list
        }
    }

    public static func jlptLists() -> [List]? {
        guard let url = Bundle(identifier: "KanjiKit")?.url(forResource:"jlpt", withExtension: "json") else { return nil }
        return lists(withContentsOf: url)
    }
}
