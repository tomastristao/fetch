//
//  MealDetails.swift
//  FetchTest
//
//  Created by Tomas Tristao on 03/07/2024.
//

struct MealDetail {
    let idMeal: String
    let strMeal: String
    let strDrinkAlternate: String?
    let strCategory: String
    let strArea: String
    let strInstructions: String
    let strMealThumb: String
    let strTags: String?
    let strYoutube: String?
    let strIngredient1: String?
    let strIngredient2: String?
    let strIngredient3: String?
    let strIngredient4: String?
    let strIngredient5: String?
    let strIngredient6: String?
    let strIngredient7: String?
    let strIngredient8: String?
    let strIngredient9: String?
    let strIngredient10: String?
    let strIngredient11: String?
    let strIngredient12: String?
    let strIngredient13: String?
    let strIngredient14: String?
    let strIngredient15: String?
    let strIngredient16: String?
    let strIngredient17: String?
    let strIngredient18: String?
    let strIngredient19: String?
    let strIngredient20: String?
    let strMeasure1: String?
    let strMeasure2: String?
    let strMeasure3: String?
    let strMeasure4: String?
    let strMeasure5: String?
    let strMeasure6: String?
    let strMeasure7: String?
    let strMeasure8: String?
    let strMeasure9: String?
    let strMeasure10: String?
    let strMeasure11: String?
    let strMeasure12: String?
    let strMeasure13: String?
    let strMeasure14: String?
    let strMeasure15: String?
    let strMeasure16: String?
    let strMeasure17: String?
    let strMeasure18: String?
    let strMeasure19: String?
    let strMeasure20: String?
    let strSource: String?
    let strImageSource: String?
    let strCreativeCommonsConfirmed: String?
    let dateModified: String?
}

extension MealDetailDataModel {
    func asDomainModel() -> MealDetail {
        MealDetail(idMeal: self.idMeal,
                   strMeal: self.strMeal,
                   strDrinkAlternate: self.strDrinkAlternate,
                   strCategory: self.strCategory,
                   strArea: self.strArea,
                   strInstructions: self.strInstructions,
                   strMealThumb: self.strMealThumb,
                   strTags: self.strTags,
                   strYoutube: self.strYoutube,
                   strIngredient1: self.strIngredient1,
                   strIngredient2: self.strIngredient2,
                   strIngredient3: self.strIngredient3,
                   strIngredient4: self.strIngredient4,
                   strIngredient5: self.strIngredient5,
                   strIngredient6: self.strIngredient6,
                   strIngredient7: self.strIngredient7,
                   strIngredient8: self.strIngredient8,
                   strIngredient9: self.strIngredient9,
                   strIngredient10: self.strIngredient10,
                   strIngredient11: self.strIngredient11,
                   strIngredient12: self.strIngredient12,
                   strIngredient13: self.strIngredient13,
                   strIngredient14: self.strIngredient14,
                   strIngredient15: self.strIngredient15,
                   strIngredient16: self.strIngredient16,
                   strIngredient17: self.strIngredient17,
                   strIngredient18: self.strIngredient18,
                   strIngredient19: self.strIngredient19,
                   strIngredient20: self.strIngredient20,
                   strMeasure1: self.strMeasure1,
                   strMeasure2: self.strMeasure2,
                   strMeasure3: self.strMeasure3,
                   strMeasure4: self.strMeasure4,
                   strMeasure5: self.strMeasure5,
                   strMeasure6: self.strMeasure6,
                   strMeasure7: self.strMeasure7,
                   strMeasure8: self.strMeasure8,
                   strMeasure9: self.strMeasure9,
                   strMeasure10: self.strMeasure10,
                   strMeasure11: self.strMeasure11,
                   strMeasure12: self.strMeasure12,
                   strMeasure13: self.strMeasure13,
                   strMeasure14: self.strMeasure14,
                   strMeasure15: self.strMeasure15,
                   strMeasure16: self.strMeasure16,
                   strMeasure17: self.strMeasure17,
                   strMeasure18: self.strMeasure18,
                   strMeasure19: self.strMeasure19,
                   strMeasure20: self.strMeasure20,
                   strSource: self.strSource,
                   strImageSource: self.strImageSource,
                   strCreativeCommonsConfirmed: self.strCreativeCommonsConfirmed,
                   dateModified: self.dateModified)
    }
}
