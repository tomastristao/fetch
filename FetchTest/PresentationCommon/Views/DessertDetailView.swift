//
//  DessertDetailView.swift
//  FetchTest
//
//  Created by Tomas Tristao on 03/07/2024.
//

import SwiftUI

struct DessertDetailView: View {
    
    @EnvironmentObject var viewModel: DessertsViewModel
    let mealID: String
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                if let meal = viewModel.selectedMeal {
                    Text("🥣 Ingredients")
                        .bold()
                        .font(.title)
                        .padding(.horizontal, 4)
                    
                    ForEach(viewModel.filterIngredients(), id: \.self) { item in
                        Text("• " + item)
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                    
                    Text("⚙️ Instructions")
                        .bold()
                        .font(.title)
                        .padding(.horizontal, 4)
                        .padding(.top)
                    
                    Text(meal.strInstructions)
                        .font(.footnote)
                        .foregroundColor(.gray)
                    
                } else {
                    ProgressView()
                }
            }
            .padding(.horizontal)
        }
        .onAppear {
            Task {
                await viewModel.fetchMealDetail(id: mealID)
            }
        }
        .navigationTitle(viewModel.selectedMeal?.strMeal ?? "")
        .navigationBarTitleDisplayMode(.inline)
    }
}
