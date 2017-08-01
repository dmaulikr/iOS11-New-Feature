import UIKit

// Filtering dictionaries in Swift 3 does not return a new dictionary. Instead, it returns an array of tuples with key/value labels. For example:

let cities = ["Shanghai": 24256800, "Karachi": 23500000, "Beijing": 21516000, "Seoul": 9995000];
let massiveCities = cities.filter { $0.value > 10000000 }

// After that code runs you can't read massiveCities["Shanghai"] because it is no longer a dictionary. Instead, you need to use massiveCities[0].value, which isn't great.

// As of Swift 4 this behaves more like you would expect: you get back a new dictionary. Obviously this will break any existing code that relies on the tuple-array return type.

print(massiveCities["Shanghai"])
