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
    let items: [String]
    
    static let datas: [TestData] = [
        TestData(title: "AAA", items: ["1","2","3"])
    ]
}

struct ItemData {
    let title: String
    let amount: Int
    let received: Int
}

struct ListView: View {
    
    let myGroups = TestData.datas
    
    var body: some View {
        List {
            ForEach(myGroups) { group in
                Section(
                    header:
                        HStack {
                            Text("xxx")
                                .background(Color.red)
                                .frame(minWidth: 0, maxWidth: .infinity)
                            
                            Text("xxx")
                                .background(Color.yellow)
                                .frame(minWidth: 0, maxWidth: .infinity)
                            
                            Text("xxx")
                                .background(Color.green)
                                .frame(minWidth: 0, maxWidth: .infinity)
                        }
                ) {
                    ForEach(group.items, id: \.self) { item in
                        HStack() {
                            Text(item)
                                .background(Color.red)
                                .frame(minWidth: 0, maxWidth: .infinity)
                            
                            Text(item)
                                .background(Color.yellow)
                                .frame(minWidth: 0, maxWidth: .infinity)
                            
                            Text(item)
                                .background(Color.green)
                                .frame(minWidth: 0, maxWidth: .infinity)
                        }
                        .background(Color.yellow)
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
