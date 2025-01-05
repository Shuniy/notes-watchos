//
//  Note.swift
//  Notes Watch App
//
//  Created by Shubham Kumar on 05/01/25.
//

import Foundation

struct Note: Identifiable, Codable {
  let id: UUID
  let text: String
}
