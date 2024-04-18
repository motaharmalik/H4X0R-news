//
//  DetailView.swift
//  H4X0R News
//
//  Created by motahar malik on 18/04/2024.
//

// added all to github



import SwiftUI

struct DetailView: View {
    
    
    let url: String?
    var body: some View {
       WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}



