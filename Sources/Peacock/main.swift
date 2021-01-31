//
//  main.swift
//  Peacock
//
//  Created by Tibor Bodecs on 2021. 01. 31..
//

import Foundation

/*
let path = FileManager.default.currentDirectoryPath
guard !path.contains("DerivedData") else {
    fatalError("Peacock requires a `Custom Working Directory` when running from Xcode.")
}
let url = URL(fileURLWithPath: path)
let cssFolder = url.appendingPathComponent("Assets").appendingPathComponent("css")
let templateFile = cssFolder.appendingPathComponent("template").appendingPathExtension("css")
let cssFile = cssFolder.appendingPathComponent("peacock").appendingPathExtension("css")
var template = try String(contentsOf: templateFile)
for (key, value) in color {
    template = template.replacingOccurrences(of: "$\(key)", with: value)
}
try template.write(to: cssFile, atomically: true, encoding: .utf8)
print("The `peacock.css` file has been rendered.")
*/

func generate(classes: [String], variants: [Variant], style: String) -> String {
    var styles: [String] = []
    for variant in variants {
        let classNames = classes.map { "." + $0 + variant.suffix }.joined(separator: ", ")
        styles.append(classNames + " { " + style.replacingOccurrences(of: "$v", with: variant.value) + "; }")
    }
    return styles.joined(separator: "\n")
}

//let variants: [Variant] = [
//    .full("9999px"),
//    .xl("3rem"),
//    .l("2.25rem"),
//    .normal("1.5rem"),
//    .s("0.75rem"),
//    .xs("0.375rem"),
//    .zero("0"),
//]

let borderVariants: [Variant] = [
    .xl("16px"),
    .l("8px"),
    .normal("4px"),
    .s("2px"),
    .xs("1px"),
]


print(generate(classes: ["border"], variants: borderVariants, style: "border-width: $v; border-style: solid;"))
print(generate(classes: ["border-vertical"], variants: borderVariants, style: "border-top-width: $v; border-bottom-width: $v; border-top-style: solid; border-bottom-style: solid"))
print(generate(classes: ["border-top"], variants: borderVariants, style: "border-top-width: $v; border-top-style: solid"))
print(generate(classes: ["border-bottom"], variants: borderVariants, style: "border-bottom-width: $v; border-bottom-style: solid"))
print(generate(classes: ["border-horizontal"], variants: borderVariants, style: "border-left-width: $v; border-right-width: $v; border-left-style: solid; border-right-style: solid"))
print(generate(classes: ["border-left"], variants: borderVariants, style: "border-left-width: $v; border-left-style: solid"))
print(generate(classes: ["border-right"], variants: borderVariants, style: "border-right-width: $v; border-right-style: solid"))
print("")

let marginVariants: [Variant] = [
    .auto("auto"),
    .xl("3rem"),
    .l("2.25rem"),
    .normal("1.5rem"),
    .s("0.75rem"),
    .xs("0.375rem"),
    .zero("0"),
]

print(generate(classes: ["margin"], variants: marginVariants, style: "margin: $v"))
print(generate(classes: ["margin-vertical"], variants: marginVariants, style: "margin-top: $v; margin-bottom: $v"))
print(generate(classes: ["margin-top"], variants: marginVariants, style: "margin-top: $v"))
print(generate(classes: ["margin-bottom"], variants: marginVariants, style: "margin-bottom: $v"))
print(generate(classes: ["margin-horizontal"], variants: marginVariants, style: "margin-left: $v; margin-right: $v"))
print(generate(classes: ["margin-left"], variants: marginVariants, style: "margin-left: $v"))
print(generate(classes: ["margin-right"], variants: marginVariants, style: "margin-right: $v"))
print("")

let paddingVariants: [Variant] = [
    .xl("3rem"),
    .l("2.25rem"),
    .normal("1.5rem"),
    .s("0.75rem"),
    .xs("0.375rem"),
    .zero("0"),
]

print(generate(classes: ["padding"], variants: paddingVariants, style: "padding: $v"))
print(generate(classes: ["padding-vertical"], variants: paddingVariants, style: "padding-top: $v; padding-bottom: $v"))
print(generate(classes: ["padding-top"], variants: paddingVariants, style: "padding-top: $v"))
print(generate(classes: ["padding-bottom"], variants: paddingVariants, style: "padding-bottom: $v"))
print(generate(classes: ["padding-horizontal"], variants: paddingVariants, style: "padding-left: $v; padding-right: $v"))
print(generate(classes: ["padding-left"], variants: paddingVariants, style: "padding-left: $v"))
print(generate(classes: ["padding-right"], variants: paddingVariants, style: "padding-right: $v"))
print("")

let lightColors = [
    Color(name: "", value: "ffffff"),
    Color(name: "1", value: "fafafa"),
    Color(name: "2", value: "f5f5f5"),
    Color(name: "3", value: "f0f0f0"),
    Color(name: "4", value: "ebebeb"),
    Color(name: "5", value: "e6e6e6"),
    Color(name: "6", value: "e0e0e0"),
    
    Color(name: "accent", value: "000000"),
    Color(name: "1-accent", value: "4d4d4d"),
    Color(name: "2-accent", value: "404040"),
    Color(name: "3-accent", value: "333333"),
    Color(name: "4-accent", value: "262626"),
    Color(name: "5-accent", value: "1a1a1a"),
    Color(name: "6-accent", value: "0d0d0d"),

    Color(name: "white", value: "ffffff"),
    Color(name: "black", value: "000000"),
    Color(name: "blue", value: "006fff"),
    Color(name: "green", value: "2ec04f"),
    Color(name: "indigo", value: "4e4cd0"),
    Color(name: "orange", value: "ff8a00"),
    Color(name: "pink", value: "ff284b"),
    Color(name: "purple", value: "a648d9"),
    Color(name: "red", value: "ff342a"),
    Color(name: "teal", value: "50c1f9"),
    Color(name: "yellow", value: "ffc500"),
    Color(name: "brown", value: "987953"),
    Color(name: "gray", value: "838388"),

    Color(name: "white-accent", value: "eeeeee"),
    Color(name: "black-accent", value: "222222"),
    Color(name: "blue-accent", value: "0024D4"),
    Color(name: "green-accent", value: "217A2E"),
    Color(name: "indigo-accent", value: "282092"),
    Color(name: "orange-accent", value: "BB2104"),
    Color(name: "pink-accent", value: "C60035"),
    Color(name: "purple-accent", value: "752C9A"),
    Color(name: "red-accent", value: "CA0012"),
    Color(name: "teal-accent", value: "0B5D93"),
    Color(name: "yellow-accent", value: "8E4803"),
    Color(name: "brown-accent", value: "6C5235"),
    Color(name: "gray-accent", value: "56565B"),
]

let darkColors = [
    Color(name: "", value: "000000"),
    Color(name: "1", value: "0d0d0d"),
    Color(name: "2", value: "1a1a1a"),
    Color(name: "3", value: "262626"),
    Color(name: "4", value: "333333"),
    Color(name: "5", value: "404040"),
    Color(name: "6", value: "4d4d4d"),
    
    Color(name: "accent", value: "ffffff"),
    Color(name: "1-accent", value: "e0e0e0"),
    Color(name: "2-accent", value: "e6e6e6"),
    Color(name: "3-accent", value: "ebebeb"),
    Color(name: "4-accent", value: "f0f0f0"),
    Color(name: "5-accent", value: "f5f5f5"),
    Color(name: "6-accent", value: "fafafa"),

    Color(name: "white", value: "ffffff"),
    Color(name: "black", value: "000000"),
    Color(name: "blue", value: "0d79ff"),
    Color(name: "green", value: "2acb4e"),
    Color(name: "indigo", value: "5352e2"),
    Color(name: "orange", value: "ff950d"),
    Color(name: "pink", value: "ff3054"),
    Color(name: "purple", value: "b750f0"),
    Color(name: "red", value: "ff3c33"),
    Color(name: "teal", value: "59ccff"),
    Color(name: "yellow", value: "ffd00d"),
    Color(name: "brown", value: "a2835d"),
    Color(name: "gray", value: "8d8d92"),
    
    Color(name: "white-accent", value: "eeeeee"),
    Color(name: "black-accent", value: "222222"),
    Color(name: "blue-accent", value: "3486FF"),
    Color(name: "green-accent", value: "2FD849"),
    Color(name: "indigo-accent", value: "6A5FFF"),
    Color(name: "orange-accent", value: "FDA432"),
    Color(name: "pink-accent", value: "FC496F"),
    Color(name: "purple-accent", value: "D074FF"),
    Color(name: "red-accent", value: "FC504F"),
    Color(name: "teal-accent", value: "61CDFF"),
    Color(name: "yellow-accent", value: "FECD1F"),
    Color(name: "brown-accent", value: "A58256"),
    Color(name: "gray-accent", value: "86868B"),
]

for color in lightColors {
    print(".color\(color.suffix) { color: #\(color.value); }")
}
print("")
for color in lightColors {
    print(".background\(color.suffix), .button.background\(color.suffix) { background-color: #\(color.value); }")
}
print("")
for color in lightColors {
    print(".border-color\(color.suffix) { border-color: #\(color.value); }")
}
print("")
print("@media (prefers-color-scheme: dark) {")
for color in darkColors {
    print("\t.color\(color.suffix) { color: #\(color.value); }")
}
print("")
for color in darkColors {
    print("\t.background\(color.suffix), .button.background\(color.suffix) { background-color: #\(color.value); }")
}
print("")
for color in darkColors {
    print("\t.border-color\(color.suffix) { border-color: #\(color.value); }")
}
print("}")
