//
//  ContentView.swift
//  XSchedule2 Graphics
//
//  Created by Stautberg, Charles on 12/8/22.
//

import SwiftUI

// ContentView is a view of the whole thing
// call all other views here
struct ContentView: View {
    var dateShown: Int
    var typeOfDay: String
    var body: some View {
        
        VStack(alignment: .center, spacing: 20.0) {
            Text(typeOfDay)
                .font(.largeTitle)
                .controlSize(.large)
            
            HStack() {
                Spacer()
                
                
                
                DateManager(whichDay: dateShown)
                    .font(.body)
                    .padding(25.0)
                    .frame(width: 200.0, height: 0.0)
                    .controlSize(.large)
                
                
                    .frame(width: nil)
                
                
                Spacer()
                
            }
            .padding(.bottom, 20.0)
            
            ScheduleView(dayType: typeOfDay)
            
            
        }
        .frame(width: 500.0, height: 750.0)
        .offset(y: -50)
        .background(Color(hue: 1.0, saturation: 0.024, brightness: 0.244))
        
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(dateShown: 0, typeOfDay: "E Day")
    }
}
