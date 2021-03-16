// Количество гласных и согласных

// Написать функцию, которая принимает строку и возвращает кортеж, содержащий число гласных и согласных букв данной строки.

func countLetters(_ string: String) -> (Int, Int) {
  let formattedString = string.lowercased()
  var letters = (vowels: 0, consonants: 0)
  let vowels: Set<Character> = Set(["a", "e", "i", "o", "u"])
  let consonants: Set<Character> = Set(["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "z"])
  
  for char in formattedString {
    if vowels.contains(char) {
      letters.vowels += 1
    } else if consonants.contains(char) {
      letters.consonants += 1
    }
  }
  
  return letters
}


let (vowels, consonants) = countLetters("Hello, world!")
vowels
consonants
