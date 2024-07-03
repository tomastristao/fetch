//
//  DessertsView.swift
//  FetchTest
//
//  Created by Tomas Tristao on 03/07/2024.
//

import SwiftUI

struct DessertsView: View {
    
    @StateObject private var viewModel = DessertsViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(viewModel.desserts) { item in
                        NavigationLink(destination:
                                        DessertDetailView(mealID: item.id)
                                            .environmentObject(viewModel)
                        ) {
                            HStack {
                                AsyncImage(url: URL(string: item.thumbnail)) { image in
                                    image.resizable()
                                } placeholder: {
                                    Color.gray.opacity(0.3)
                                }
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                                
                                Text(item.name)
                                    .font(.footnote)
                                    .foregroundColor(.white)
                                
                                Spacer()
                                
                                Image(systemName: "chevron.forward")
                                    .font(.footnote)
                                    .bold()
                                    .foregroundColor(.white.opacity(0.8))
                            }
                            .padding()
                            .background(Color.black.opacity(0.2))
                            .cornerRadius(16)
                            .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .strokeBorder(LinearGradient(gradient:Gradient(colors: [Color.white.opacity(0.3),
                                                                                            Color.white.opacity(0.22),
                                                                                            Color.white.opacity(0.06)]),
                                                                 startPoint: .top,
                                                                 endPoint: .bottom),
                                                  lineWidth: 0.7)
                                    .blendMode(.plusLighter)
                            )
                            .padding(.horizontal, 12)
                            .padding(.vertical, 4)
                            .shadow(radius: 1)
                        }
                    }
                }
                .padding(.top, 24)
            }
            .navigationTitle("Desserts")
            .navigationBarTitleDisplayMode(.inline)
            .background(
                LinearGradient(gradient: Gradient(colors: [
                    Color(uiColor: UIColor(red: 160/255, green: 240/255, blue: 190/255, alpha: 1)),
                    Color(uiColor: UIColor(red: 229/255, green: 253/255, blue: 210/255, alpha: 1))
                ]), startPoint: .bottomLeading, endPoint: .topTrailing)
            )

        }
        .onAppear {
            Task {
                await viewModel.fetchMeals()
            }
        }
    }
}

#Preview {
    DessertsView()
}
