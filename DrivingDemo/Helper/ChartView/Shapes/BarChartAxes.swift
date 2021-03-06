//
//  BarChartAxes.swift
//  DrivingDemo
//
//  Created by Vishal on 07/05/21.
//

import Foundation
import SwiftUI

struct BarChartAxes: Shape {
  func path(in rect: CGRect) -> Path {
    var path = Path()
    
    path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
    path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
    path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
    path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
    
    return path
  }
}
