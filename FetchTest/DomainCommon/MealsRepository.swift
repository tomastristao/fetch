//
//  MealsRepository.swift
//  FetchTest
//
//  Created by Tomas Tristao on 03/07/2024.
//

import Foundation

protocol MealsRepositoryProtocol {
    func fetchDesserts() async throws -> [Meal]
    func fetchMealDetail(by id: String) async throws -> MealDetail?
}

final class MealsRepository: MealsRepositoryProtocol {
    
    private let networkManager: NetworkManagerProtocol
    
    init(
        networkManager: NetworkManagerProtocol = NetworkManager()
    ) {
        self.networkManager = networkManager
    }
    
    func fetchDesserts() async throws -> [Meal] {
        let url = "https://themealdb.com/api/json/v1/1/filter.php?c=Dessert"
        let request = Request<MealsDataModel>(path: url, responseType: MealsDataModel.self)
        let response: MealsDataModel = try await networkManager.request(request)
        return response.meals.map { $0.asDomainModel() }
    }
    
    func fetchMealDetail(by id: String) async throws -> MealDetail? {
        let url = "https://www.themealdb.com/api/json/v1/1/lookup.php?i=\(id)"
        let request = Request<MealDetailResponse>(path: url, responseType: MealDetailResponse.self)
        let response: MealDetailResponse = try await networkManager.request(request)
        return response.meals.first?.asDomainModel()
    }
}
