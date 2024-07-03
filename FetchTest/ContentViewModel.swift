//
//  ContentViewModel.swift
//  FetchTest
//
//  Created by Tomas Tristao on 03/07/2024.
//

import Combine

final class DessertsViewModel: ObservableObject {
    
    private let repository: MealsRepositoryProtocol
    
    @Published var desserts: [Meal] = []
    
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
}
