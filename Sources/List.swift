//
//  List.swift
//  KanjiKit
//
//  Created by Sikhapol Saijit on 1/8/17.
//  Copyright © 2017 KanjiKan. All rights reserved.
//

public struct List {
    public var title = ""
    public var items = [Kanji]()

    public init() { }
}

extension List: CustomStringConvertible {
    public var description: String {
        return "\(title) - [\(items.map({ String(describing: $0) }).joined(separator: ", "))]"
    }
}
