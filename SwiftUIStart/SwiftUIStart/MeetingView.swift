//
//  MeetingView.swift
//  SwiftUIStart
//
//  Created by 樊康鹏 on 2023/11/27.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack{
            ProgressView(value: 5, total: 15)
            HStack{
                VStack {
                    Text("Seconds Elapsed")
                    Label("300", systemImage: "hourglass.tophalf.fill")
                    }
                Spacer()
                VStack {
                       Text("Seconds Remaining")
                       Label("600", systemImage: "hourglass.bottomhalf.fill")
                    }
                Circle().strokeBorder(lineWidth: 14)
                HStack {
                    Text("Speaker 1 of 3")
                    Button(action: {}) {
                        Image(systemName: "forward.fill")
                    }
                }
            }
        }.padding()
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
