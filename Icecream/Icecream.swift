//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream : [String : String] = [
        "Joe" : "Peanut Butter and Chocolate",
        "Tim" : "Natural Vanilla",
        "Sophie" : "Mexican Chocolate",
        "Deniz" : "Natural Vanilla",
        "Tom" : "Mexican Chocolate",
        "Jim" : "Natural Vanilla",
        "Susan" : "Cookies 'N' Cream"
    ] 

   
    
    // 2.
    func names(forFlavor flavor: String) -> [String] {
        //initialize an array
        var names  = [String]()
        for person in favoriteFlavorsOfIceCream {
            if (person.value == flavor) {
            names.append(person.key)
        }
    }
        return names
    }
    
    
    
    // 3.
    func count(forFlavor flavor: String) -> Int {
        //initialize a number to be returned
        var counter = 0
        for person in favoriteFlavorsOfIceCream{
            if (person.value == flavor) {
                counter += 1
            }
        }
        return counter
    }
    
    
    
    // 4.
   
    func flavor(forPerson person: String) -> String? {

        if let name = favoriteFlavorsOfIceCream[person] {
            return name
        }else {
            return nil
        }
    }
 
    // 5.
    func replace(flavor: String, forPerson person:String) -> Bool {
        for name in favoriteFlavorsOfIceCream.keys {
            if name == person {
                favoriteFlavorsOfIceCream[person] = flavor
                return true
            }
        }
        return false
        
    }
 
    // 6.
    
    func remove(person:String) ->Bool {
        let result = favoriteFlavorsOfIceCream.removeValue(forKey: person)
        if result != nil {
            return true
        }else{
            return false
        }
        
    }
 
    
    // 7.
    
    func numberOfAttendees() ->Int {
        return favoriteFlavorsOfIceCream.count
    }

    
    // 8.
    
    func add(person name: String, withFlavor flavor: String) -> Bool {
        for names in favoriteFlavorsOfIceCream.keys {
            if name == names{
            return false //should not update value
        }else{
            favoriteFlavorsOfIceCream.updateValue(flavor, forKey: name)
            return true
        }
    }
        return false
    }
    
    // 9.
    func attendeeList() -> String {
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        var list = ""
        for name in allNames {
            if let flavor = favoriteFlavorsOfIceCream[name] {
            if allNames.last == name {
            list += "\(name) likes \(flavor)"
            }else{
                list += "\(name) likes \(flavor)\n"
            }
        }
        }
        return list
    }
    /*
 If Susan's notes and memory are correct, there are now 7 people coming to the party. She'd like you to write a function, attendeeList(), which will create a list "Name likes Ice Cream", one attendee per line in alphabetical order, just so she can make sure she remembers correctly.
 The function should be called attendeelist(). The return type should be String.
 A hint to help you produce a list in alphabetical order:
 let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
 allNames is an array of String's, placing all the names in alphabetical order. Use this to your advantage. Make sure the last part of your String doesn't end with a newline character \n.
 */
    
    
    
    
    
    
    
    
    

}
