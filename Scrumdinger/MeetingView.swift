//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Nilootpal Das on 07/01/23.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 15)
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.bottomhalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.tophalf.fill")
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time Remaining")
            .accessibilityValue("10 Minutes Remaining")

            
            Circle()
                .strokeBorder(lineWidth: 20)
            
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel("Forward Button")
            }
        }.padding()
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
