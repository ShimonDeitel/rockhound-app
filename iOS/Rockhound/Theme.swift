import SwiftUI

/// Unique visual identity for Rockhound: earthy strata browns with mineral-green accent.
enum Theme {
    static let accent = Color(hex: "#6B4226")
    static let accentSecondary = Color(hex: "#8FA98C")
    static let background = Color(hex: "#F1ECE3")
    static let ink = Color(hex: "#2B2118")

    static var titleFont: Font {
        Font.system(.largeTitle, design: .serif).weight(.bold)
    }

    static var bodyFont: Font {
        Font.system(.body, design: .serif)
    }

    static var cardCornerRadius: CGFloat { 18 }
}

extension Color {
    init(hex: String) {
        let s = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var v: UInt64 = 0
        Scanner(string: s).scanHexInt64(&v)
        let r = Double((v >> 16) & 0xFF) / 255.0
        let g = Double((v >> 8) & 0xFF) / 255.0
        let b = Double(v & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}
