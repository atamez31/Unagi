//
//  ErrorHandler.swift
//  unagi
//
//  Created by Alex Elizondo  on 11/25/19.
//  Copyright © 2019 Andrés Tamez. All rights reserved.
//

import Foundation

enum ErrorHandler: Error {
  case semanticError(message: String)
  case lexicError(message: String)
  case indexOutOfBounds(message: String)
  case memory(message: String)
}
