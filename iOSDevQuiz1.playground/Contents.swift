// Ananchai Mankhong

import UIKit

class Test {
    let name = "Test"
}

let a1 = Test()
let a2 = Test()
let a3 = a1

if a1 === a2 {
    print("same")
}

if a1 === a3 {
    print("like")
}

if a1.name == a2.name && a1.name == a3.name {
    print("equal")
}


// print like  เนื่องจากในบรรทัดที่ 9 นั้น a3 ได้ประกาศเป็น reference = reference ของ  a1  เมื่อมีการ check ค่าเทียบในบรรทัดที่ 15  a1 === a3 แล้วเป็นเงื่อนไขจริง เพราะว่า instance เดียวกัน คือเป็น a1 เหมือนกันทั้งคู่
// print equal เพราะว่าเป็นการอ้างอิงไปยัง class เดียวกัน และเป็นตัวแปร name เดียวกัน
//
