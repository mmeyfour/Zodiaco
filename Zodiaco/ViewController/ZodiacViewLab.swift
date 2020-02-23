//
//  UserViewLab.swift
//  Zodiaco
//
//  Created by Mersad Meyfour on 23/02/2020.
//  Copyright © 2020 Mersad Meyfour Asadi. All rights reserved.
//

import Foundation

struct ZodiacSign {
    
    let name: String
    let description: String
    let fromYear: Int
    let fromMonth: Int
    let fromDay: Int
    let toYear: Int
    let toMonth: Int
    let toDay: Int
    let aspect: String
    let element: String
    let firstAfinity: String
    let secondAfinity: String


}
let snape = ZodiacSign(name: "Serpiente", description: "Inteligente, misterioso, intuitivo, atrevido, ordenado, sofisticado", fromYear: 1989, fromMonth: 2, fromDay: 6, toYear: 1990, toMonth: 1, toDay: 26, aspect: "Yin", element: "Tierra", firstAfinity: "Gallo", secondAfinity: "Buey")
let horse = ZodiacSign(name: "Caballo", description: "Leal, trabajador, gregario, cordial, energico, popular", fromYear: 1990, fromMonth: 1, fromDay: 27, toYear: 1991, toMonth: 2, toDay: 14, aspect: "Yang", element: "Metal", firstAfinity: "tigre", secondAfinity: "perro")
let goat = ZodiacSign(name: "Cabra", description: "Pacifico, adaptable, honesto, creativo, imaginativo, sincero", fromYear: 1991, fromMonth: 2, fromDay: 15, toYear: 1992, toMonth: 2, toDay: 3, aspect: "Yin", element: "Metal", firstAfinity: "Cerdo", secondAfinity: "Liebre")
let monkey = ZodiacSign(name: "Mono", description: "Independiente, vivaz, ingenioso, divertido, atrevido, inventivo", fromYear: 1992, fromMonth: 2, fromDay: 4, toYear: 1993, toMonth: 1, toDay: 22, aspect: "Yang", element: "Agua", firstAfinity: "Rata", secondAfinity: "Dragon")
let rooster = ZodiacSign(name: "Gallo", description: "Valeroso, protector, vistoso, capaz, comunicativo, honesto", fromYear: 1993, fromMonth: 1, fromDay: 23, toYear: 1994, toMonth: 2, toDay: 9, aspect: "Yin", element: "Agua", firstAfinity: "Serpiente", secondAfinity: "Buey")
let dog = ZodiacSign(name: "Perro", description: "Leal, responsable, sensible, moral, fiable, imaginativo", fromYear: 1994, fromMonth: 2, fromDay: 10, toYear: 1995, toMonth: 1, toDay: 30, aspect: "Yang", element: "Madera", firstAfinity: "Tigre", secondAfinity: "Caballo")
let pig = ZodiacSign(name: "Cerdo", description: "Sensual, generoso,alegre, tolerante, feliz, entusiasta", fromYear: 1995, fromMonth: 1, fromDay: 31, toYear: 1996, toMonth: 2, toDay: 16, aspect: "Yin", element: "Madera", firstAfinity: "Conejo", secondAfinity: "Cabra")
let rat = ZodiacSign(name: "Rata", description: "Ingenioso, ambicioso, trabajador, decidido, laborioso, inteligente", fromYear: 1996, fromMonth: 2, fromDay: 19, toYear: 1997, toMonth: 2, toDay: 7, aspect: "Yang", element: "Fuego", firstAfinity: "Dragon", secondAfinity: "Mono")
let ox = ZodiacSign(name: "Buey", description: "Paciente, valeroso, convencional, fiable, resuelto, inteligente", fromYear: 1997, fromMonth: 2, fromDay: 8, toYear: 1998, toMonth: 1, toDay: 27, aspect: "Yin", element: "Fuego", firstAfinity: "Serpiente", secondAfinity: "Gallo")
let tiger = ZodiacSign(name: "Tiegre", description: "Atrevido, agotador, apasionado, rapido, peligroso, divertido", fromYear: 1998, fromMonth: 1, fromDay: 28, toYear: 1999, toMonth: 2, toDay: 15, aspect: "Yang", element: "Tierra", firstAfinity: "Caballo", secondAfinity: "Perro")
let hare = ZodiacSign(name: "Liebre", description: "Generoso, intuitivo, tactil, egoista, discreto, sensible", fromYear: 1999, fromMonth: 2, fromDay: 16, toYear: 2000, toMonth: 2, toDay: 4, aspect: "Yin", element: "Tierra", firstAfinity: "Cerdo", secondAfinity: "Cabra")
let dragon = ZodiacSign(name: "Dragon", description: "Entusiasta, atrevido, inspirador, ganador, materialista, independiente", fromYear: 200, fromMonth: 2, fromDay: 5, toYear: 2001, toMonth: 10, toDay: 23, aspect: "Yang", element: "Metal", firstAfinity: "Rata", secondAfinity: "Mono")


