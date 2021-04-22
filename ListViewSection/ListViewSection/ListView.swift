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
        TestData(title: "Numbers", items: ["1","2","3"]),
        TestData(title: "Letters", items: ["A","B","C"]),
        TestData(title: "Symbols", items: ["€","%","&"])
    ]
}

struct ListView: View {
    
    let myGroups = TestData.datas
    
    var body: some View {
        List {
            ForEach(myGroups) { group in
                Section(header: Text("xxxx")) {
                    ForEach(group.items, id: \.self) { item in
                        Text(item)
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
