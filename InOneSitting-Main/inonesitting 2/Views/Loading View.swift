//
//  Loading View.swift
//  inonesitting
//
//  Created by Allen Lin on 5/9/23.
//

import SwiftUI

struct Loading_View: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .white))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct Loading_View_Previews: PreviewProvider {
    static var previews: some View {
        Loading_View()
    }
}
