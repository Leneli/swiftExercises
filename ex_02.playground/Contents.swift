// Является ли строка палиндромом

// Задание: написать функцию, которая принимает функцию как свой единственный параметр и возвращает true, если эта строка может быть прочитана одинаково как слева направо, так и справа налево, игнорируя регистр и пробелы (Примеры палиндрома - "А роза упала на лапу Азора", "казак").

import Foundation

func checkPalindrome(_ string: String) -> Bool {
  let formattedString = string.lowercased().replacingOccurrences(of: " ", with: "")
  let reversedString = String(formattedString.reversed())
  
  if formattedString.count == 0 {
    print("Строка пустая!")
    return false
  }
  
  return formattedString == reversedString
}

checkPalindrome("А роза упала на лапу Азора")
checkPalindrome("А вот это уже не палиндром")
checkPalindrome("казак")
checkPalindrome("")
