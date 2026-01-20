//
//  main.swift
//  RealEstate
//
//  Created by Zelal Aydın on 20.01.2026.
//

import Foundation

enum Status{
    case For_Rent
    case For_Sell
}

protocol Building{
    var roomNumber:Int{get}
    var cost:Int{get set}
    var estateAgent:String{get set}
    var status:Status{get set}
    func salesSummary()
}

extension Building{
    func salesSummary(){
        print("""
            How many rooms: \(roomNumber)
            The price: \(cost)$
            Estate Agent: \(estateAgent)
            Status: \(status)
            """)
    }
}

struct House:Building{
    var roomNumber: Int
    var cost: Int
    var estateAgent: String
    var status: Status
}

struct Office:Building{
    var roomNumber: Int
    var cost: Int
    var estateAgent: String
    var status: Status
}


let house1 = House(roomNumber: 3, cost: 3450, estateAgent: "...", status: .For_Sell)

house1.salesSummary()
