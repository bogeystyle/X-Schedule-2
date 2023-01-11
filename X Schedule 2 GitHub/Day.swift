//
//  Day.swift
//  XSchedule2 Graphics
//
//  Created by Stautberg, Charles on 1/6/23.
//

import Foundation

struct Day: Identifiable, Hashable {
    var id: String { dayType }
    let dayType: String
    
    // declaring all just in case, should be a way to make this optional or do different structs based on 4 vs 6 vs 8 bell day
    // maybe make an event declaration for masses/pep rallies 'n stuff
    let bell1: Bell
    let bell2: Bell
    let bell3: Bell
    let bell4: Bell
    let bell5: Bell
    let bell6: Bell
    let bell7: Bell
    let bell8: Bell
    
    
}


// example day
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
