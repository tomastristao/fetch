//
//  DessertsViewModel.swift
//  FetchTest
//
//  Created by Tomas Tristao on 03/07/2024.
//

import Combine

@MainActor
final class DessertsViewModel: ObservableObject {
    
    private let repository: MealsRepositoryProtocol
    
    @Published var desserts: [Meal] = []
    @Published var selectedMeal: MealDetail?
    
    init(repository: MealsRepositoryProtocol = MealsRepository()) {
        self.repository = repository
    }

    func fetchMeals() async {
        do {
            let fetchedMeals = try await repository.fetchDesserts()
            desserts = fetchedMeals
        } catch {
            print("🛑 Error fetching meals (desserts): \(error)")
        }
    }
    
    func fetchMealDetail(id: String) async {
        do {
            let mealDetail = try await repository.fetchMealDetail(by: id)
            selectedMeal = mealDetail
        } catch {
            print("🛑 Error fetching meal (dessert) detail: \(error)")
        }
    }
    
    func filterIngredients() -> [String] {
        guard let selectedMeal else { return [] }
        let ingredients: [String?] = [
            selectedMeal.strIngredient1,
            selectedMeal.strIngredient2,
            selectedMeal.strIngredient3,
            selectedMeal.strIngredient4,
            selectedMeal.strIngredient5,
            selectedMeal.strIngredient6,
            selectedMeal.strIngredient7,
            selectedMeal.strIngredient8,
            selectedMeal.strIngredient9,
            selectedMeal.strIngredient10,
            selectedMeal.strIngredient11,
            selectedMeal.strIngredient12,
            selectedMeal.strIngredient13,
            selectedMeal.strIngredient14,
            selectedMeal.strIngredient15,
            selectedMeal.strIngredient16,
            selectedMeal.strIngredient17,
            selectedMeal.strIngredient18,
            selectedMeal.strIngredient19,
            selectedMeal.strIngredient20
        ]
        return ingredients.compactMap { $0 }.filter { !$0.isEmpty }
    }
}
