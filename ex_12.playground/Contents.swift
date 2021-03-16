// Перевернуть слова в строке

// Написать функцию, которая принимает строку и возвращает ту же строку, каждое слово слово в которой записано в обратном порядке, без использования цикла.

import Foundation

func reverseWords(_ string: String) -> String {
  let words = string.components(separatedBy: " ")
  let reversedWords = words.map {
    String($0.lowercased().reversed())
  }

  return reversedWords.joined(separator: " ")
}

reverseWords("Hello world")
reverseWords("Whether the list should do an animation while scrolling")
