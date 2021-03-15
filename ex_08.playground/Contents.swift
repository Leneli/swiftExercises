// Вращение строки

// Написать функцию, которая принимает две строки и возвращает true, если одна строка является вращением другой с учетом регистра (вращение строки - это когда мы берем буквы с конца строки и переносим их в начало, например строка "swift" при вращении на 2 символа станет строкой "ftswi").

import Foundation

func rotatedCheck(string: String, mirror: String) -> Bool {
  string.count == mirror.count && (string + string).contains(mirror)
}

rotatedCheck(string: "swift", mirror: "ftswi")
rotatedCheck(string: "swift", mirror: "wifts")
rotatedCheck(string: "swift", mirror: "ftswiii")
rotatedCheck(string: "swift", mirror: "tfswi")
