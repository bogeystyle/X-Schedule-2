//
//  Bell.swift
//  XSchedule2 Graphics
//
//  Created by Stefan Wenzke on 1/4/23.
//

import Foundation

enum BellNames
{
    case A, B, C, D, E, F, G, H
}

struct Timestamp: Hashable {
    var hour: Int
    var minute: Int
    
    init(_ hour: Int, _ minute: Int = 0) {
        self.hour = hour
        self.minute = minute
    }
    
    func toString() -> String
    {
        return String(self.hour) + ":" + (self.minute < 10 ? "0" + String(self.minute) : String(self.minute))
    }
}

struct Bell: Identifiable, Hashable {
    var id: String { name }
    let name: String
    let startTime: Timestamp
    let endTime: Timestamp
    let happeningNow: Bool
    
    //TODO: finish this class and rename this to "Bell"    done i think
}

var unparsedDay = "BEGIN:VEVENT UID:8821976@www.stxavier.org DTSTAMP:20221129T164803Z DTSTART:20211130T080000 DTEND:20211130T150500 SUMMARY:G Day DESCRIPTION:G-H-A-HR-Flex-B-C-D\n\n\nG 8:00-8:55\n  H 9:00-9:55\n  A 10:00-10:55\n  HR 11:00-11:10\n  Flex 11:10-12:10\n  B 12:10-1:05\n  C 1:10-2:05\n  D 2:10-3:05\n PRIORITY:0 END:VEVENT"

func bellParse(unparsed: String) -> Day {
    let index = unparsed.firstIndex(of: "")
    
    return
}

// example day from iCal
/*
    BEGIN:VEVENT
    UID:8821976@www.stxavier.org
    DTSTAMP:20221129T164803Z
    DTSTART:20211130T080000
    DTEND:20211130T150500
    SUMMARY:G Day
    DESCRIPTION:G-H-A-HR-Flex-B-C-D\n\n\nG 8:00-8:55\n  H 9:00-9:55\n  A 10:00-10:55\n  HR 11:00-11:10\n  Flex 11:10-12:10\n  B 12:10-1:05\n  C 1:10-2:05\n  D 2:10-3:05\n
    PRIORITY:0
    END:VEVENT
*/
