//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Patrick Essiam on 27/07/2024.
//

import SwiftUI

struct LandmarkList: View {
    @State private var multiSelection = Set<UUID>()
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
