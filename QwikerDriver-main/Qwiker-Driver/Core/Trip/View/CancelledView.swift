//
//  CancelledView.swift
//  Qwiker-Driver
//
//  Created by Le Vu Phuoc 01.6.2023.
//

import SwiftUI

struct CancelledView: View {
    @EnvironmentObject var homeVM: HomeViewModel
    var body: some View {
        VStack {
            Text("Người dùng đã huỷ chuyến!")
                .font(.title.weight(.medium))
            PrimaryButtonView(title: "OK") {
                homeVM.deleteTrip()
            }
        }
        .padding()
        .background{
            RoundedRectangle(cornerRadius: 12)
                .fill(.white)
                .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 0)
        }
        .padding()
        .padding(.bottom, getRect().height / 3)
    }
}

struct CancelledView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack(alignment: .bottom) {
            Color.gray.ignoresSafeArea()
            CancelledView()
        }
        .environmentObject(dev.homeViewModel)
    }
}
