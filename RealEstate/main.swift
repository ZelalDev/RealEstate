//
//  main.swift
//  RealEstate
//
//  Created by Zelal Aydın on 20.01.2026.
//

import Foundation

protocol Building{
    var roomNumber:Int{get}
    var cost:Int{get set}
    var estateAgent:String{get set}
    func salesSummary()
}

extension Building{
    func salesSummary(){
        print("""
            How many rooms: \(roomNumber)
            The price: \(cost)$
            Estate Agent: \(estateAgent)
            """)
    } 
}

struct House:Building{
    var roomNumber: Int
    var cost: Int
    var estateAgent: String
}

struct Office:Building{
    var roomNumber: Int
    var cost: Int
    var estateAgent: String
}


let house1 = House(roomNumber: 3, cost: 3450, estateAgent: "...")

house1.salesSummary()
