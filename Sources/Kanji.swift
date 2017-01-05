//
//  Kanji.swift
//  KanjiKit
//
//  Created by Sikhapol Saijit on 1/5/17.
//  Copyright © 2017 KanjiKan. All rights reserved.
//

import Foundation

public struct Kanji {
    public var codepoint: Int

    public init(codepoint: Int) {
        self.codepoint = codepoint
    }
}

extension Kanji {
    public var unicodeScalar: UnicodeScalar {
        guard let unicodeScalar = UnicodeScalar(codepoint) else { fatalError() }
        return unicodeScalar
    }

    public var character: Character {
        return Character(unicodeScalar)
    }
}

extension Kanji: CustomStringConvertible {
    public var description: String {
        return String(character)
    }
}
