//
//  MonthView.swift
//  Calendar App
//
//  Created by Anbusekar Murugesan on 04/12/2021.
//

import SwiftUI

struct MonthView: View {
    var columns: [GridItem] = Array(repeating: .init(.fixed(50)), count: 6)
        
    let month: Month
    var body: some View {
        VStack {
            VStack {
                Text(month.title)
                    .frame(width: UIScreen.main.bounds.width - 20, height: 30, alignment: .top).font(.title3)
                LazyVGrid(columns: columns, content: {
                    ForEach(0...50, id: \.self) { _ in
                        background(month.color)
                    }
                }).padding(10)
            }
           
           
        }
        .background(month.color, ignoresSafeAreaEdges: .all)
    }
}

