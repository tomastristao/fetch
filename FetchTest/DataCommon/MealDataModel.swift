//
//  MealDataModel.swift
//  FetchTest
//
//  Created by Tomas Tristao on 03/07/2024.
//

import Foundation

struct MealDataModel: Identifiable, Codable {
    let id: String
    let name: String
    let thumbnail: String

    enum CodingKeys: String, CodingKey {
        case id = "idMeal"
        case name = "strMeal"
        case thumbnail = "strMealThumb"
    }
}

struct MealsDataModel: Codable {
    let meals: [MealDataModel]
}
