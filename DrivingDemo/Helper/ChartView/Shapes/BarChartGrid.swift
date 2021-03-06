//
//  BarChartGrid.swift
//  DrivingDemo
//
//  Created by Vishal on 07/05/21.
//

import Foundation
import SwiftUI

struct BarChartGrid: Shape {
  let divisions: Int
  
  func path(in rect: CGRect) -> Path {
    var path = Path()
    let stepSize = rect.height / CGFloat(divisions)
    
    (1 ... divisions).forEach { step in
      path.move(to: CGPoint(x: rect.minX, y: rect.maxY - stepSize * CGFloat(step)))
      path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY - stepSize * CGFloat(step)))
    }
    
    return path
  }
}
