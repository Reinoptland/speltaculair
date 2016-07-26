def game_attributes(overrides = {})
  {
    title: "The Hunger Games",
    maxplayercount: 40,
    gametype: "Playable Experience" ,
    description: "May the odds be ever in your favor! You and your friends fight each other to the death!",
    released_in: 2014
  }.merge(overrides)
end
