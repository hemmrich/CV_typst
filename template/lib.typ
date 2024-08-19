/*
* Entry point for the package
*/

/* Packages */
#import "./template.typ": *
#import "./styles.typ": overwriteFonts

/* Layout */
#let cv(
  metadata, 
  profilePhoto: image("../src/avatar.png"),
  doc) = {
  // Non Latin Logic
  let lang = metadata.language
  let fontList = latinFontList
  let headerFont = latinHeaderFont
  fontList = overwriteFonts(metadata, latinFontList, latinHeaderFont).regularFonts
  headerFont = overwriteFonts(metadata, latinFontList, latinHeaderFont).headerFont

  // Page layout
  set text(font: fontList, weight: "regular", size: 9pt)
  set align(left)
  set page(
    paper: "a4",
    margin: (left: 1.4cm, right: 1.4cm, top: .8cm, bottom: .5cm),
  )

  _cvHeader(metadata, profilePhoto, headerFont, regularColors, awesomeColors)
  doc
  _cvFooter(metadata)
}