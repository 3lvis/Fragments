import Foundation

extension Tailor {
  struct Piece {
    let content: String
    let style: String
    let type: Type

    enum Type {
      case Text
    }

    init(JSON: [String : AnyObject]) {
      switch(JSON["type"] as! String) {
      case "text":
        type = .Text
      default:
        fatalError("Not supported type")
      }

      content = JSON["content"] as! String
      style = JSON["style"] as! String
    }
  }

  struct Style {
    let id: String
    let font: String
    let fontSize: Float

    init(JSON: [String : AnyObject]) {
      id = JSON["id"] as! String
      font = JSON["font"] as! String
      fontSize = JSON["font_size"] as! Float
    }
  }

  struct Data {
    let pieces: [Piece]
    let styles: [[String : AnyObject]]

    init(piecesJSON: [[String : AnyObject]], stylesJSON: [[String : AnyObject]]) {
    }
  }
}
