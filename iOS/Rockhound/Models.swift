import Foundation

struct SpecimenItem: Identifiable, Codable, Equatable {
    var id: UUID
    var dateAdded: Date
    var name: String
    var locationFound: String
    var mineralType: String
    var hardness: String

    init(id: UUID = UUID(), dateAdded: Date = Date(), name: String, locationFound: String, mineralType: String, hardness: String) {
        self.id = id
        self.dateAdded = dateAdded
        self.name = name
        self.locationFound = locationFound
        self.mineralType = mineralType
        self.hardness = hardness
    }

    static func blank() -> SpecimenItem {
        SpecimenItem(name: "", locationFound: "", mineralType: "", hardness: "")
    }
}
