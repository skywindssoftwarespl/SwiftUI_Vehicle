//
//  BarStackView.swift
//  DrivingDemo
//
//  Created by Vishal on 07/05/21.
//

import SwiftUI

struct BarStackView: View {
    @Binding var data: [Double]
    @Binding var labels: [String]
    let accentColor: Color
    let gridColor: Color
    let showGrid: Bool
    let min: Double
    let max: Double
    let spacing: CGFloat
    
    var body: some View {
        HStack(alignment: .bottom, spacing: spacing) {
            ForEach(0 ..< data.count) { index in
                LinearGradient(
                    gradient: .init(
                        stops: [
                            .init(color: Color.secondary.opacity(0.6), location: 0),
                            .init(color: accentColor.opacity(0.6), location: 0.4),
                            .init(color: accentColor, location: 1)
                        ]),
                    startPoint: .bottom,
                    endPoint: .top
                )
                .clipShape(BarPath(data: data[index], max: max, min: min))
            }
        }
        .shadow(color: .black, radius: 5, x: 1, y: 1)
        .padding(.horizontal, spacing)
    }
}

//struct BarStackView_Previews: PreviewProvider {
//    static var previews: some View {
//        BarStackView()
//    }
//}
