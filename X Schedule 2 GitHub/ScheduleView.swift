//
//  ScheduleView.swift
//  XSchedule2 Graphics
//
//  Created by Stautberg, Charles on 12/8/22.
//

import SwiftUI

// ScheduleView is just a vertical list of one day's bells with their times
struct ScheduleView: View {
    @State var dayType: String
    // init(dayType: String) {
    //    self.dayType = dayType
    //}
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            ForEach(shownDay(dayType: Day.dayType)) { bell in
                
                HStack(alignment: .top) {
                    Text(bell.bellType)
                    
                    Spacer()
                    
                    Text(bell.bellStartAndEnd)
                }
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("AccentColor")/*@END_MENU_TOKEN@*/)
                Spacer()
            }
        }
        .frame(width: 300.0, height: 400.0)
    }
    
    
    
}

let shownDay: [Bell] =
    

// hard coded graphics test
/*
func ScheduleDict(dayType: String) -> [Bell] {
    var bellDict = aDay
    if dayType == "A Day" {
        bellDict = aDay
    }
    else if dayType == "G Day"{
        bellDict = gDay
    }
    else if dayType == "E Day" {
        bellDict = eDay
    }
    else if dayType == "C Day" {
        bellDict = cDay
    }
    else if dayType == "X Day" {
        bellDict = xDay
    }
    else if dayType == "Y Day" {
        bellDict = yDay
    }
    else if dayType == "All Meet" {
        bellDict = allDay
    }
    else {
        // special schedule
    }
    return(bellDict)
}


// eventually change string values to objects from parser
let aDay: [Bell] = [
    Bell(bellType:"A Bell", bellStartAndEnd:"8:00-8:55", bellNow: false),
    Bell(bellType:"B Bell", bellStartAndEnd:"9:00-9:55", bellNow: false),
    Bell(bellType:"C Bell", bellStartAndEnd:"10:00-10:55", bellNow: false),
    Bell(bellType:"Homeroom", bellStartAndEnd:"11:00-11:10", bellNow: false),
    Bell(bellType:"Flex",     bellStartAndEnd:"11:00-12:05", bellNow: false),
    Bell(bellType:"D Bell", bellStartAndEnd:"12:10-1:05", bellNow: false),
    Bell(bellType:"E Bell", bellStartAndEnd:"1:10-2:05", bellNow: false),
    Bell(bellType:"F Bell", bellStartAndEnd:"2:10-3:05", bellNow: false),
]

let gDay: [Bell] = [
    Bell(bellType:"G Bell", bellStartAndEnd:"8:00-8:55", bellNow: false),
    Bell(bellType:"H Bell", bellStartAndEnd:"9:00-9:55", bellNow: false),
    Bell(bellType:"A Bell", bellStartAndEnd:"10:00-10:55", bellNow: false),
    Bell(bellType:"Homeroom", bellStartAndEnd:"11:00-11:10", bellNow: false),
    Bell(bellType:"Flex",     bellStartAndEnd:"11:00-12:05", bellNow: false),
    Bell(bellType:"B Bell", bellStartAndEnd:"12:10-1:05", bellNow: false),
    Bell(bellType:"C Bell", bellStartAndEnd:"1:10-2:05", bellNow: false),
    Bell(bellType:"D Bell", bellStartAndEnd:"2:10-3:05", bellNow: false),
]

let eDay: [Bell] = [
    Bell(bellType:"E Bell", bellStartAndEnd:"8:00-8:55", bellNow: false),
    Bell(bellType:"F Bell", bellStartAndEnd:"9:00-9:55", bellNow: false),
    Bell(bellType:"G Bell", bellStartAndEnd:"10:00-10:55", bellNow: false),
    Bell(bellType:"Homeroom", bellStartAndEnd:"11:00-11:10", bellNow: false),
    Bell(bellType:"Flex",     bellStartAndEnd:"11:00-12:05", bellNow: false),
    Bell(bellType:"H Bell", bellStartAndEnd:"12:10-1:05", bellNow: false),
    Bell(bellType:"A Bell", bellStartAndEnd:"1:10-2:05", bellNow: false),
    Bell(bellType:"B Bell", bellStartAndEnd:"2:10-3:05", bellNow: false),
]

let cDay: [Bell] = [
    Bell(bellType:"C Bell", bellStartAndEnd:"8:00-8:55", bellNow: false),
    Bell(bellType:"D Bell", bellStartAndEnd:"9:00-9:55", bellNow: false),
    Bell(bellType:"E Bell", bellStartAndEnd:"10:00-10:55", bellNow: false),
    Bell(bellType:"Homeroom", bellStartAndEnd:"11:00-11:10", bellNow: false),
    Bell(bellType:"Flex",     bellStartAndEnd:"11:00-12:05", bellNow: false),
    Bell(bellType:"F Bell", bellStartAndEnd:"12:10-1:05", bellNow: false),
    Bell(bellType:"G Bell", bellStartAndEnd:"1:10-2:05", bellNow: false),
    Bell(bellType:"H Bell", bellStartAndEnd:"2:10-3:05", bellNow: false),
]

let xDay: [Bell] = [
    Bell(bellType:"A Bell", bellStartAndEnd:"8:00-9:25", bellNow: false),
    Bell(bellType:"B Bell", bellStartAndEnd:"9:30-10:50", bellNow: false),
    Bell(bellType:"Homeroom", bellStartAndEnd:"11:00-11:10", bellNow: false),
    Bell(bellType:"Flex",     bellStartAndEnd:"11:00-12:05", bellNow: false),
    Bell(bellType:"C Bell", bellStartAndEnd:"12:10-1:35", bellNow: false),
    Bell(bellType:"D Bell", bellStartAndEnd:"1:40-3:05", bellNow: false),
]

let yDay: [Bell] = [
    Bell(bellType:"E Bell", bellStartAndEnd:"8:00-9:25", bellNow: false),
    Bell(bellType:"F Bell", bellStartAndEnd:"9:30-10:50", bellNow: false),
    Bell(bellType:"Homeroom", bellStartAndEnd:"11:00-11:10", bellNow: false),
    Bell(bellType:"Flex",     bellStartAndEnd:"11:00-12:05", bellNow: false),
    Bell(bellType:"G Bell", bellStartAndEnd:"12:10-1:35", bellNow: false),
    Bell(bellType:"H Bell", bellStartAndEnd:"1:40-3:05", bellNow: false),
]

let allDay: [Bell] = [
    Bell(bellType:"A Bell", bellStartAndEnd:"8:00-8:40", bellNow: false),
    Bell(bellType:"B Bell", bellStartAndEnd:"8:45-9:25", bellNow: false),
    Bell(bellType:"C Bell", bellStartAndEnd:"9:30-10:10", bellNow: false),
    Bell(bellType:"D Bell", bellStartAndEnd:"10:15-10:55", bellNow: false),
    Bell(bellType:"Homeroom", bellStartAndEnd:"11:00-11:10", bellNow: false),
    Bell(bellType:"Flex",     bellStartAndEnd:"11:00-12:05", bellNow: false),
    Bell(bellType:"E Bell", bellStartAndEnd:"12:10-12:50", bellNow: false),
    Bell(bellType:"F Bell", bellStartAndEnd:"12:55-1:35", bellNow: false),
    Bell(bellType:"G Bell", bellStartAndEnd:"1:40-2:20", bellNow: false),
    Bell(bellType:"H Bell", bellStartAndEnd:"2:25-3:05", bellNow: false)
]


// declare each object type in dictionary above

struct Bell: Identifiable, Hashable {
    var id: String { bellType }
    let bellType: String
    let bellStartAndEnd: String
    let bellNow: Bool
}

// will determine if bell is happening right now and return true or false
func bellHappeningNow(bellStr: Bell) -> Bool {
    let dateFormatter = DateFormatter()
    let date = Date.init()
     
    dateFormatter.locale = Locale(identifier: "en_US")
    dateFormatter.setLocalizedDateFormatFromTemplate("h:mm")
    let bellStr = bellStr.startTime
    
    let startTimeIndex = bellStr.firstIndex(of: "-") ?? bellStr.endIndex
    
    
    return(false)
}

// highlights which bell is happening right now

*/


struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView(dayType: "A Day")
    }
}
