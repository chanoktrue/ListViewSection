//
//  AddProductView.swift
//  ListViewSection
//
//  Created by Thongchai Subsaidee on 22/4/2564 BE.
//

import SwiftUI

struct AddProductView: View {
    
    @ObservedObject var productVM: ProductViewModel
    
    @Binding var isPresent: Bool
    
    var body: some View {
        VStack {
            
            let title = ProductSingleton.shared.title
            Text(title)
            
            Text(productVM.title)
            
            Button(action: {
//                ProductSingleton.shared.title = "Page second"
                isPresent = false
            }, label: {
                Text("Button")
            })
            .padding()
        }

    }
}

struct AddProductView_Previews: PreviewProvider {
    static var previews: some View {
        AddProductView(productVM: ProductViewModel(), isPresent: .constant(false))
    }
}
