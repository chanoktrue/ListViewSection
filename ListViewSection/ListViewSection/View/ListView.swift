//
//  ListView.swift
//  ListViewSection
//
//  Created by Thongchai Subsaidee on 22/4/2564 BE.
//

import SwiftUI

struct TestData: Identifiable {
    let id = UUID()
    let title: String
    let items: [Int]
    
    static let datas: [TestData] = [
        TestData(title: "AAA", items: [1,2,3,4,5,6,7,8,9])
    ]
}

struct ItemData {
    let title: String
    let amount: Int
    let received: Int
}

struct ListView: View {
    
    let myGroups = TestData.datas
    
    let x = [1,2,3,4,5,6,7,8,9]
    
    var body: some View {
        
        let total = x.reduce(0, +)
        
        List {
            ForEach(myGroups) { group in
                Section(
                    header:
                        HStack {
                            Text("Job ID")
                                .frame(minWidth: 0, maxWidth: .infinity)
                            
                            Text("Amount")
                                .frame(minWidth: 0, maxWidth: .infinity)
                            
                            Text("Received")
                                .frame(minWidth: 0, maxWidth: .infinity)
                        }
                        .padding()
                    ,
                    footer:
                        HStack {
                            Text("Total")
                                .frame(minWidth: 0, maxWidth: .infinity)
                            
                            Text("")
                                .frame(minWidth: 0, maxWidth: .infinity)
                            
                            
                            Text("\(total)")
                                .frame(minWidth: 0, maxWidth: .infinity)
                        }
                ) {
                    ForEach(group.items, id: \.self) { item in
                        HStack() {
                            Text("\(item)")
                                .frame(minWidth: 0, maxWidth: .infinity)
                            
                            Text("\(item)")
                                .frame(minWidth: 0, maxWidth: .infinity)
                            
                            Text("\(item)")
                                .frame(minWidth: 0, maxWidth: .infinity)
                        }
                        .padding()
                        .background(Color.gray.opacity(0.2))
                    }
                }
                
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
