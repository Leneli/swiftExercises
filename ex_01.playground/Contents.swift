// Проверка символов в строке на уникальность

// Задание: написать функцию, которая принимает единственным параметром строку и возвращает true, если строка содержит только уникальные символы

func uniqueness(_ string: String) -> Bool {
  string.count == Set(string).count
}

uniqueness("Hello world")
uniqueness("1234567890")
uniqueness("New string")
