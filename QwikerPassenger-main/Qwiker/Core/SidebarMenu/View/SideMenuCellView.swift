//
//  SideMenuCellView.swift
//  Qwiker
//
//  Created by Le Vu Phuoc 10.6.2023.
//

import SwiftUI

struct SideMenuOptionView: View {
    let optionType: SideMenuOptionViewType
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: optionType.imageName)
                .font(.title)
                .foregroundColor(.gray)
            
            Text(optionType.title)
                .font(.poppinsMedium(size: 18))
            
            Spacer()
            Image(systemName: "chevron.right")
        }
        .foregroundColor(.black)
        .padding(.vertical)
    }
}

struct SideMenuOptionView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionView(optionType: .promocode)
    }
}
