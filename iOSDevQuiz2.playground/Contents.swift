// Ananchai Mankhong

import UIKit


func startDateFormat(_ start: String) -> Date {
    let startDate = DateFormatter()
    startDate.dateFormat = "yyyyMMdd"
    return startDate.date(from: start)!
}

func endDateFormat(_ end: String) -> Date {
    let endDate = DateFormatter()
    endDate.dateFormat = "yyyyMMdd"
    return endDate.date(from: end)!
}


func IsOverlapped(start1: String, end1: String, start2: String, end2: String) -> Bool {
    
    let showStartDate1 = startDateFormat(start1)
    let showEndDate1 = endDateFormat(end1)
    
    let showStartDate2 = startDateFormat(start2)
    let showEndDate2 = endDateFormat(end2)
    
    let beetweenDate1 = DateInterval(start: showStartDate1, end: showEndDate1)
    let beetweenDate2 = DateInterval(start: showStartDate2, end: showEndDate2)
    
    // use intersects in set value for contain two date
    // if have overlapped in beetween two range of date to be return false
    // if haven't overlapped in beetween two range of date to be return true
    let overlapped = beetweenDate1.intersects(beetweenDate2)
    
    return overlapped

}

print(IsOverlapped(start1: "20190826", end1: "20190827", start2: "20190828", end2: "20190829"))



