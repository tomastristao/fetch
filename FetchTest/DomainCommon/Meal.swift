//
//  Meal.swift
//  FetchTest
//
//  Created by Tomas Tristao on 03/07/2024.
//

struct Meal: Identifiable, Equatable {
    let id: String
    let name: String
    let thumbnail: String
}

extension MealDataModel {
    
    func asDomainModel() -> Meal {
        Meal(id: self.id, name: self.name, thumbnail: self.thumbnail)
    }
}
