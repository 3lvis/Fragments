import UIKit
import XCTest
import JSON

class Tests: XCTestCase {

  func testStyle() {
    let style = Tailor.Style(JSON: ["id" : "text.p", "font" : "Avenir-Light", "font_size" : 14])
    XCTAssertEqual(style.id, "text.p")
    XCTAssertEqual(style.font!, UIFont(name: "Avenir-Light", size: 14)!)
  }

  func testPiece() {
    let piece = Tailor.Piece(JSON: ["type" : "text", "content" : "Hey there", "style_id" : "text.h1"])
    XCTAssertEqual(piece.content, "Hey there")
    XCTAssertEqual(piece.type, .Text)
    XCTAssertEqual(piece.styleID, "text.h1")
  }

  func testDataInitialization() {
    let piecesJSON = JSON.fromFileNamed("pieces.json", inBundle: NSBundle(forClass: self.classForCoder)) as! [[String : AnyObject]]
    let stylesJSON = JSON.fromFileNamed("styles.json", inBundle: NSBundle(forClass: self.classForCoder)) as! [[String : AnyObject]]
    XCTAssertEqual(piecesJSON.count, 2)
    XCTAssertEqual(stylesJSON.count, 2)

    let data = Tailor.Data(
      piecesJSON: piecesJSON,
      stylesJSON: stylesJSON)
    XCTAssertEqual(data.pieces.count, 2)
    XCTAssertEqual(data.styles.count, 2)
  }
}
