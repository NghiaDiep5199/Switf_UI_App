//
//  DriverStatusButtonView.swift
//  Qwiker-Driver
//
//  Created by Le Vu Phuoc 01.6.2023.
//

import SwiftUI

struct DriverStatusButtonView: View {
    @Binding var showDriverActivateSheet: Bool
    @EnvironmentObject var homeVM: HomeViewModel
    @State private var activeState: Bool = false
    var isActive: Bool{
        homeVM.user?.isActive ?? false
    }
    var body: some View {
        Button {
            withAnimation(.easeInOut){
                showDriverActivateSheet.toggle()
            }
        } label: {
            VStack(spacing: 5){
                Circle()
                    .fill(isActive ? Color.primaryGreen : Color.primaryBg)
                    .frame(width: 45, height: 45)
                    .overlay{
                        Text("+5")
                            .font(.poppinsMedium(size: 14))
                            .foregroundColor(.black)
                    }
                Text(isActive ? "Hoạt động" : "Nghỉ ngơi")
                    .font(.poppinsRegular(size: 16))
                    .foregroundColor(.black)
            }
        }
    }
}

struct DriverStatusButtonView_Previews: PreviewProvider {
    static var previews: some View {
        DriverStatusButtonView(showDriverActivateSheet: .constant(true))
            .environmentObject(dev.homeViewModel)
    }
}
