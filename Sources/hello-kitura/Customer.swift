//
//  File.swift
//  hello-kitura
//
//  Created by claudio Cavalli on 24/01/2019.
//

import Foundation

public class Customer {
    
    var firstName : String
    var lastName  : String
    
  public  init(firstName: String, lastName: String ){
        self.firstName = firstName
        self.lastName = lastName
    }
    
 public   func toDictionary() -> [String:Any]{
        return ["firstName":self.firstName, "lastName":self.lastName]
    }
}
