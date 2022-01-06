//
//  Croissant.swift
//  FoldYourDay
//
//  Created by Hazel Kim on 6/1/22.
//  Copyright © 2022 Hazel Ki,. All rights reserved.
//

import Foundation

class Croissant {
    var title: String?
    var pages: Int?
    var startDate: Date?
    var duration: Int?
    var finishingDate: Date?
    var comments: String?
    var endComments: String?
    var notification: Bool?
    
    init(title: String, pages: Int, startDate: Date, duration: Int, notification: Bool, comments: String?) {
        self.title = title
        self.pages = pages
        self.startDate = startDate
        self.duration = duration
        self.notification = notification
        self.finishingDate = Calendar.current.date(byAdding: .day, value: duration, to: startDate)
        self.comments = comments ?? ""
    }
    
    func getTitle() -> String! {
        return title!;
    }
    
    func getPages() -> Int! {
        return pages!;
    }
    
    func getStartDate() -> Date! {
        return startDate!;
    }
    
    func getDuration() -> Int! {
        return duration;
    }
    
    func getFinishingDate() -> Date! {
        return finishingDate!;
    }
       
    func getComments() -> String! {
        return comments;
    }
       
    func getNotification() -> Bool! {
        return notification!;
    }
}
