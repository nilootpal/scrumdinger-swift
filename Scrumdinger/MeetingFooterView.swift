//
//  MeetingFooterView.swift
//  Scrumdinger
//
//  Created by Nilootpal Das on 24/05/23.
//

import SwiftUI

struct MeetingFooterView: View {
    let speakers: [ScrumTimer.Speaker]
    var skipAction: ()->Void
    private var speakerNumber: Int? {
        guard let index = speakers.firstIndex(where: { !$0.isCompleted }) else { return nil }
        return index+1
    }
    
    private var isLastSpeaker: Bool {
        return speakers.dropLast().allSatisfy{ $0.isCompleted }
    }
    
    private var speakerText: String {
        guard let speakerNumber = speakerNumber else { return "No More Speakers" }
        return "Speaker \(speakerNumber) of \(speakers.count)"
    }
    
    var body: some View {
        VStack {
            HStack {
                if isLastSpeaker {
                    Text("Last Speaker")
                } else {
                    Text(speakerText)
                    Spacer()
                    Button(action: skipAction) {
                        Image(systemName: "forward.fill")
                    }
                    .accessibilityLabel("Forward Button")
                }
            }
        }
        .padding([.bottom, .horizontal])
    }
}

struct MeetingFooterView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingFooterView(speakers: DailyScrum.sampleData[0].attendees.speakers, skipAction: {})
            .previewLayout(.sizeThatFits)
    }
}
