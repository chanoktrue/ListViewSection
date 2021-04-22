//
//  ContentView.swift
//  ListViewSection
//
//  Created by Thongchai Subsaidee on 22/4/2564 BE.
//

import SwiftUI

struct ContentView: View {
    
    @State var isPresent: Bool = false
    
    @ObservedObject var productVM = ProductViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                
                let title = productVM.title
                Text(title)
                    .padding()
                
                VStack {
                    
                    // Singleton 1
                    Button(action: {
                        self.isPresent = true
                        ProductSingleton.shared.title = "Tapped from view 111"
                        productVM.title = "....."
                    }, label: {
                        Text("Singleton 1")
                    })
                    .padding()
                    
                    // Singleton 2
                    Button(action: {
                        self.isPresent = true
                        ProductSingleton.shared.title = "Tapped from view 222"
                        productVM.title = "....."
                    }, label: {
                        Text("Singleton 2")
                    })
                    .padding()
                    
                    // Binding
                    Button(action: {
                        self.isPresent = true
                        productVM.title = "from binding"
                    }, label: {
                        Text("Binding")
                    })
                    .padding()
                }
            }
            .navigationTitle("Product")
            
            .sheet(isPresented: $isPresent, content: {
                AddProductView(productVM: productVM, isPresent: $isPresent)
            })
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

