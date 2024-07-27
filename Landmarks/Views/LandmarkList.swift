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
        List(landmarks, selection: $multiSelection) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
