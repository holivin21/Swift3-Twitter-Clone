//
//  ExploreView.swift
//  CloneTwitter
//
//  Created by andres holivin on 04/06/22.
//

import SwiftUI

struct ExploreView: View {
    
    @ObservedObject var viewModel = ExploreViewModel()
    var body: some View {
        VStack{
            SearchBar(text: $viewModel.searchText)
                .padding()
            ScrollView{
                LazyVStack{
                    ForEach(viewModel.searchableUser){ user in
                        NavigationLink{
                            ProfileView(user: user)
                        } label: {
                            UserRowView(user: user)
                        }
                    }
                }
            }
        }
        .navigationBarTitle("Explore")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
