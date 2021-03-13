// Идентичны ли две строки между собой?

// Написать функцию, которая принимает две строки и возвращает true, если эти строки содержат одни и те же символы в любом порядке с учетом регистра

func comparisonOfStrings(_ str1: String, _ str2: String) -> Bool {
  String(str1.sorted()) == String(str2.sorted())
}

comparisonOfStrings("String 1", "1 String")
comparisonOfStrings("String 01", "10 String")
comparisonOfStrings("String 1", "1 string")
comparisonOfStrings("String 1", "String 2")
