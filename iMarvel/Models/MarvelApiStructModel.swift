import Foundation

 // MARK: - ReturnApi
 struct ReturnApi: Codable {
     let copyright, attributionText: String
     let code : Int
     let attributionHTML: String
     let data: DataClass
     let etag: String
 }

 // MARK: - DataClass
 struct DataClass: Codable {
     let offset, limit, total, count: Int
     let results: [Result]
 }

 // MARK: - Result
 struct Result: Codable {
    let id: Int
    let name: String
    let resourceURI: String
    let description: String
    let thumbnail: Thumbnail
    
    enum CodingKeys: String, CodingKey{
        case id
        case name
        case resourceURI
        case thumbnail
        case description
 }


// MARK: -Heros
struct Heros: Codable{

    }
}

struct Thumbnail: Codable {
    let path: String
    let xtension = "extension"
    var urlDaImag: String {
        return "\(path).\(xtension)"
    
    enum CodingKeys: String, CodingKey{
        case xtension, path
    }
    
}
}
