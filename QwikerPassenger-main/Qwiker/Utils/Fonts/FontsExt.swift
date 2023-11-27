//
//  FontsExt.swift
//  Qwiker
//
//  Created by Le Vu Phuoc 10.6.2023.
//


import SwiftUI


extension Font {
    
    static func medelRegular(size: Int) -> Font {
        Font.custom("Medel", size: CGFloat(size))
    }
    static func poppinsRegular(size: Int) -> Font {
        Font.custom("Poppins-Regular", size: CGFloat(size))
    }
    static func poppinsMedium(size: Int) -> Font {
        Font.custom("Poppins-Medium", size: CGFloat(size))
    }
}
