//
//  SettingSecureField.swift
//  Setting
//
//  Created by Yiğit Kerem Oktay on 30/1/2025.
//  Copyright © 2025 The Skyfallen Company. All rights reserved.
//

import SwiftUI

/**
 A text field.
 */
public struct SettingSecureField: View, Setting {
    public var id: AnyHashable?
    public var placeholder: String
    @Binding public var text: String
    public var verticalPadding = CGFloat(14)
    public var horizontalPadding = CGFloat(16)

    public init(
        id: AnyHashable? = nil,
        placeholder: String,
        text: Binding<String>,
        verticalPadding: CGFloat = CGFloat(14),
        horizontalPadding: CGFloat = CGFloat(16)
    ) {
        self.id = id
        self.placeholder = placeholder
        self._text = text
        self.verticalPadding = verticalPadding
        self.horizontalPadding = horizontalPadding
    }

    public var body: some View {
        SettingSecureFieldView(
            placeholder: placeholder,
            text: $text,
            verticalPadding: verticalPadding,
            horizontalPadding: horizontalPadding
        )
    }
}

struct SettingSecureFieldView: View {
    let placeholder: String
    @Binding var text: String

    var verticalPadding = CGFloat(14)
    var horizontalPadding = CGFloat(16)

    var body: some View {
        SecureField(placeholder, text: $text)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.vertical, verticalPadding)
            .padding(.horizontal, horizontalPadding)
            .accessibilityElement(children: .combine)
    }
}
