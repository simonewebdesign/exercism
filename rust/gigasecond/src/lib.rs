use time::OffsetDateTime;
use time::PrimitiveDateTime as DateTime;

// Returns a DateTime one billion seconds after start.
pub fn after(start: DateTime) -> DateTime {
    let seconds_elapsed = start.assume_utc().unix_timestamp() + 1_000_000_000;

    let Ok(res) = OffsetDateTime::from_unix_timestamp(seconds_elapsed) else {
        panic!()
    };

    let date = res.date();
    let time = res.time();

    return DateTime::new(date, time);
}
