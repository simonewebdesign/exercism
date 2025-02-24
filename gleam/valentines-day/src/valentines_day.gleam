pub type Approval {
  Yes
  No
  Maybe
}

pub type Cuisine {
  Korean
  Turkish
}

pub type Genre {
  Crime
  Horror
  Romance
  Thriller
}

pub type Activity {
  BoardGame
  Chill
  Movie(Genre)
  Restaurant(Cuisine)
  Walk(Int)
}

pub fn rate_activity(activity: Activity) -> Approval {
  case activity {
    BoardGame -> No
    Chill -> No
    Movie(genre) if genre == Romance -> Yes
    Movie(_) -> No
    Restaurant(cuisine) if cuisine == Korean -> Yes
    Restaurant(cuisine) if cuisine == Turkish -> Maybe
    Restaurant(_) -> No
    Walk(kms) if kms > 11 -> Yes
    Walk(kms) if kms > 6 -> Maybe
    Walk(_) -> No
  }
}
