//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

// swiftlint:disable all
import Amplify
import Foundation

extension Project1 {
  // MARK: - CodingKeys
   public enum CodingKeys: String, ModelKey {
    case id
    case name
    case team
  }

  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema

  public static let schema = defineSchema { model in
    let project1 = Project1.keys

    model.pluralName = "Project1s"

    model.fields(
      .id(),
      .field(project1.name, is: .optional, ofType: .string),
      .hasOne(project1.team, is: .optional, ofType: Team1.self, associatedWith: Team1.keys.id, targetName: "project1TeamId")
    )
    }
}
