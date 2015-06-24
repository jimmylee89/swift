import Foundation

let content = "[\"[[\'1aaa\',null, 11],[null, '1bbb', 11]]\",\"[]\",\"['3a','3b', 33]\"]"
let data = content.dataUsingEncoding(NSUTF8StringEncoding)

var jsonResult =  NSJSONSerialization.JSONObjectWithData( data!, options: NSJSONReadingOptions.MutableContainers, error: nil) as! NSArray

var addPersons = jsonResult[0]

var delIds = jsonResult[1]

var updatePerson = jsonResult[2]
