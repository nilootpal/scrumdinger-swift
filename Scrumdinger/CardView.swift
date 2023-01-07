//
//  CardView.swift
//  Scrumdinger
//
//  Created by Nilootpal Das on 07/01/23.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .labelStyle(.trailingIcon)
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
    }
}

struct CardView_Previews: PreviewProvider {
    static var scrum = DailyScrum.sampleData[0]
    static var previews: some View {
        CardView(scrum: scrum)
            .frame(width: 400, height: 60)
            .padding()
            .background(scrum.theme.mainColor)
//            .previewLayout(.fixed(width: 400, height: 60))
//        Preview Layout is not working on IOS 14 so instead we are using frame
    }
}
