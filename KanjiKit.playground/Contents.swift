import Foundation

import KanjiKit

let 日 = Kanji(codepoint: 0x65e5)
let 本 = Kanji(codepoint: 0x672c)

print(日, 本)

var 日本 = List()
日本.title = "日本"
日本.items = [日, 本]
print(日本)