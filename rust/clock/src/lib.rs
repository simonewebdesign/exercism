// use std::{fmt, time::{
//     // macros::{format_description, date, datetime, time},
// }};

use std::fmt;
use time::{Time, macros::format_description};

// use std::time;
// use time::macros::{date, format_description};

// error[E0432]: unresolved import `time::macros::format_description`
// use time::macros::format_description;

// pub use time_macros::format_description;

// note: found an item that was configured out
//   --> /Users/simo/.cargo/registry/src/index.crates.io-6f17d22bba15001f/time-0.3.37/src/macros.rs:74:22
//    |
// 74 | pub use time_macros::format_description;
//    |                      ^^^^^^^^^^^^^^^^^^
// note: the item is gated here
//   --> /Users/simo/.cargo/registry/src/index.crates.io-6f17d22bba15001f/time-0.3.37/src/macros.rs:73:1
//    |
// 73 | #[cfg(any(feature = "formatting", feature = "parsing"))]


// use time::Time;



#[derive(Debug)]
// #[derive(Debug, PartialEq)]
pub struct Clock {
    hours: i32,
    minutes: i32,
}

impl Clock {
    pub fn new(hours: i32, minutes: i32) -> Self {
        // todo!("Construct a new Clock from {hours} hours and {minutes} minutes");
        Clock { hours, minutes }
     }

    pub fn add_minutes(&self, minutes: i32) -> Self {
        // todo!("Add {minutes} minutes to existing Clock time");
        // self + minutes.minutes();

        
        // Clock { hours: self.hours, minutes: self.minutes + minutes.minutes() }
        // Clock { hours: 30, minutes }

        Clock { hours: self.hours, minutes: self.minutes + minutes }
    }
}

impl fmt::Display for Clock {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        // let format = format_description!("[hour]:[minute]");
        // write!(f, date!("{}:{}").format(&format), self.hours, self.minutes)
        // write!(f, "{}:{}", self.hours, self.minutes)

        // let mut hrs = self.hours;
        // let mut mins = self.minutes;

        // if self.hours > 23 {
        //     hrs = self.hours % 24;
        // }

        // if self.minutes > 59 {
        //     mins = self.minutes % 60;
        //     hrs += self.minutes / 60;
        // }


        // Convert everything to minutes first by multiplying hours by 60 and adding minutes
        let mut total_minutes = self.hours * 60 + self.minutes;

        // Handle negative minutes by adding full days until we get a positive number
        while total_minutes < 0 {
            total_minutes += 24 * 60;
        }
        // Calculate final hours by dividing by 60 and taking modulo 24
        let hrs = (total_minutes / 60) % 24;
        // Calculate final minutes by taking modulo 60
        let mins = total_minutes % 60;
        

        let time = Time::from_hms(hrs as u8, mins as u8, 0).unwrap();
        let format = format_description!("[hour]:[minute]");
        let formatted = time.format(&format).unwrap();
        write!(f, "{}", formatted)

        // write!(f, "{:02}:{:02}", self.hours, self.minutes)  // Ensures zero-padding

        // Write directly into the formatter
        // time.format_into(f, &format).map_err(|_| fmt::Error)
    }
}

impl PartialEq for Clock {
    // FIXME
    fn eq(&self, other: &Self) -> bool {
        self.hours == other.hours &&
        self.minutes == other.minutes
    }
}
