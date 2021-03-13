// Сколько раз символ встречается в строке

// Написать функцию, которая принимает строку и символ, а далее возвращает количество раз, которое данный символ встречается в строке, с учетом регистра

func countChar(string: String, letter: Character) -> Int {
  string.filter { $0 == letter }.count
}

countChar(string: "Hello Swift", letter: "l")
countChar(string: "Hello Swift", letter: "o")
countChar(string: "Hello Swift", letter: "s")
countChar(string: "Hello Swift", letter: " ")
