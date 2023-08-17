//
//  item.swift
//  todo
//
//  Created by scholar on 8/11/23.
//

import SwiftUI
class ToDoItem: Identifiable {
    var id = UUID()
    var title = ""
    var isImportant = false
    init(title: String, isImportant: Bool) {
        self.title = title
        self.isImportant = isImportant
    }
}
struct item: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct item_Previews: PreviewProvider {
    static var previews: some View {
        item()
    }
}
