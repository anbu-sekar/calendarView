//
//  ContentView.swift
//  Calendar App
//
//  Created by Anbusekar Murugesan on 04/12/2021.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>
    let months: [Month] = [
        Month(id: 1, title: "Jan", color: .brown),
    Month(id: 2, title: "Feb", color: .yellow),
    Month(id: 3, title: "Mar", color: .cyan),
    Month(id: 4, title: "Apr", color: .blue),
    Month(id: 5, title: "May", color: .gray),
    Month(id: 6, title: "Jun", color: .pink),
    Month(id: 7, title: "Jul", color: .mint),
    Month(id: 8, title: "Aug", color: .green),
    Month(id: 9, title: "Sep", color: .yellow),
    Month(id: 10, title: "Oct", color: .purple),
    Month(id: 11, title: "Nov", color: .orange),
    Month(id: 12, title: "Dec", color: .red)
    ]
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(months, id: \.id) { month in
                        MonthView(month: month)
                    }
                }
            }
            .navigationTitle(Text("Calendar")).navigationBarTitleDisplayMode(.inline).font(.largeTitle)
        }
    }
    
}


struct Month {
    var id: Int
    let title: String
    let color: Color
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
