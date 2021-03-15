// Удаление повторяющихся символов из строки

// Написать функцию, которая принимает строку как свой единственный параметр и возвращает ты же самую строку, только с удаленными повторяющимися символами (например, строка "hello" станет строкой "helo").

func removeDoubleLetters(_ string: String) -> String {
  var characters: Array<Character> = []
  
  for char in string {
    if (characters.firstIndex(of: char) == nil) {
      characters.append(char)
    }
  }

  return String(characters)
}

removeDoubleLetters("Hello, world!")
removeDoubleLetters("String!")
removeDoubleLetters("")
