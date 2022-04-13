//
//  Filter.swift
//  2IsBetter
//
//  Created by apprenant68 on 23/03/2022.
//

import SwiftUI

struct Filter: View {
    
    
    let categorie: String
    @Binding var selectedItem: String?
    
    var body: some View {
        
        HStack{
            
            Text(categorie)
                .font(.title)
                .padding()
            Spacer()
            if categorie == selectedItem {
                Image(systemName: "checkmark.square.fill")
                    .font(.largeTitle)
                    .foregroundColor(.accentColor)
            }
        }
        .contentShape(Rectangle())
        .onTapGesture {
            //                self.selectedItem = self.categorie
            if categorie == selectedItem {
                selectedItem = nil
            } else {
                selectedItem = categorie
            }
            
        }
    }
}

struct Filter_Previews: PreviewProvider {
    static var previews: some View {
        Filter(categorie: "Sport individuel", selectedItem: .constant("Noname"))
    }
}
//categorie: Categorie(categorieName: "Hello World!", ImageSport: "heart.fill")
//HStack{
//    Image(systemName:categorie.ImageSport)
//        .padding()
//    Text(categorie.categorieName)
