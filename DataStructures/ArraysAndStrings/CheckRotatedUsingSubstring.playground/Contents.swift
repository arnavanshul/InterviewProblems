//  Assume you have a method isSubstring which checks if one word is a substring of another.
//  Given two strings, s1 and s2, write code to check if s2 is a rotation of s1
//  using only one call to isSubstring (e.g.,"waterbottle"is a rotation of"erbottlewat").

import Foundation

let s1 = "waterbottle"
let s2 = "erbottlewat"
let s3 = "erbottleerw"

func isRotated(s1: String, s2: String) -> Bool {
    let len1 = s1.count
    let len2 = s2.count
    if len1 == 0 || len1 != len2 { return false }
    let doubleS1 = s1 + s1
    return isSubstring(s1: doubleS1, s2: s2)
}

func isSubstring(s1: String, s2: String) -> Bool {
    return s1.range(of: s2) != nil ? true : false
}

let rotated = isRotated(s1: s1, s2: s2)
print (rotated)



