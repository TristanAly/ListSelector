//
//  FilterView.swift
//  2IsBetter
//
//  Created by apprenant68 on 23/03/2022.
//

import SwiftUI

struct FilterView: View {
    @Environment(\.dismiss) var dismiss
    
//    var categories = [
//        Categorie(categorieName: "Sports de combat", ImageSport: "hare.fill"),
//        Categorie(categorieName: "Sports individuels", ImageSport: "hare.fill"),
//        Categorie(categorieName: "Sports de raquette", ImageSport: "hare.fill"),
//        Categorie(categorieName: "Activités expression", ImageSport: "hare.fill"),
//        Categorie(categorieName: "Sport de nature", ImageSport: "hare.fill"),
//        Categorie(categorieName: "Activité mécanique", ImageSport: "hare.fill"),
//        Categorie(categorieName: "Sports collectifs", ImageSport: "hare.fill"),
//        Categorie(categorieName: "Sports de précision", ImageSport: "hare.fill"),
//        Categorie(categorieName: "Activités cyclistes", ImageSport: "hare.fill"),
//        Categorie(categorieName: "Sports aquatique", ImageSport: "hare.fill"),
//    ]
    var items = [ "Sports de combat","Sports individuels","Sports de raquette","Activités expression","Sport de nature","Activité mécanique","Sports collectifs","Sports de précision","Activités cyclistes","Sports aquatique"
    ]
    
    @State var selectedItems: String? = nil
    
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack(alignment: .trailing){
            Button("OK") {
                dismiss()
            }.padding(.trailing)
            List{
                ForEach(items,id:\.self) { item in
                    Filter(categorie: item, selectedItem: $selectedItems)
                }
                .navigationTitle("Catégories")
//                Button("done") {
//                    dismiss()
//                }
            }
            }
            }
        }
        
//        List(categories) { categorie in
//            Filter(categorie: categorie)
//
//        }
    }
}


struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
    }
}
