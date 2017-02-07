//
//  ViewController.swift
//  DateTimePicker
//
//  Created by Huong Do on 9/16/16.
//  Copyright © 2016 ichigo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var item: UINavigationItem!
    var current = Date()

    @IBAction func showDateTimePicker(sender: AnyObject) {
        let now = Date()
        let min = now.addingTimeInterval(60 * 5)
        let max = now.addingTimeInterval(60 * 60 * 24 * 3)
        let picker = DateTimePicker.show(selected: now.addingTimeInterval(60 * 60 * 3), minimumDate: min, maximumDate: max)
        picker.highlightColor = UIColor(red:0.23, green:0.37, blue:0.63, alpha:1.00)
        picker.doneButtonColor = UIColor(red:0.23, green:0.37, blue:0.63, alpha:1.00)
        picker.disableColor = picker.darkColor.withAlphaComponent(0.3)
        picker.dateFormat = "YYYY-MM-dd HH:mm"
        picker.titleLabelText = "Send the mail later within 72 hours"
        picker.doneButtonTitle = "!! DONE DONE !!"
        picker.todayButtonTitle = "Today"
        picker.completionHandler = { date in
            self.current = date
            let formatter = DateFormatter()
            formatter.dateFormat = "HH:mm dd/MM/YYYY"
            self.item.title = formatter.string(from: date)
        }
    }

}

