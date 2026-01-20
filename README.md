# RealEstate 🏠

This project is a real estate modeling example built with **Swift**. It demonstrates **Protocol Oriented Programming (POP)**, **Extensions**, and **Enums** to create a modular system for managing properties.

![Swift](https://img.shields.io/badge/Swift-5.0+-orange.svg)
![License](https://img.shields.io/badge/License-MIT-blue.svg)

## 🌟 Features

`RealEstate` defines common characteristics for buildings and uses an `Enum` to manage the listing status (For Rent / For Sell).

### Key Concepts:
* **Protocol (Building):** Defines the blueprint for properties (`roomNumber`, `cost`, `status`).
* **Enum (Status):** Type-safe management of property status (`.For_Rent`, `.For_Sell`).
* **Extension:** Provides a default `salesSummary()` implementation to avoid code duplication.
* **Structs:** `House` and `Office` adopt the protocol for concrete data usage.

## 💻 Code Snippet

Here is how the Enum and Protocol work together:

```swift
enum Status {
    case For_Rent
    case For_Sell
}

protocol Building {
    var roomNumber: Int { get }
    var cost: Int { get set }
    var estateAgent: String { get set }
    var status: Status { get set }
    func salesSummary()
}

// Default implementation
extension Building {
    func salesSummary() {
        print("""
            How many rooms: \(roomNumber)
            The price: \(cost)$
            Estate Agent: \(estateAgent)
            Status: \(status)
            """)
    }
}

// Usage
let house1 = House(roomNumber: 3, cost: 3450, estateAgent: "...", status: .For_Sell)
house1.salesSummary()
```

### 🚀 How to Run
1. Clone this repository or download the `main.swift` file.
2. Open the file in **Xcode**.
3. Run the code using a Playground or Command Line Tool.
   

## 👤 Author
Zelal Aydın

Date: 20.01.2026

Language: Swift


##  
"This repository serves as a journal of my Swift and SwiftUI learning journey. It documents my step-by-step progress and growth as part of the '100 Days of SwiftUI' challenge."
