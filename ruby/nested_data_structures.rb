#
#This nested data structure is designed to model a passenger train.
#

train = {
  engine: {
    crew: {
      conductor: "David",
      engineer: "Joe",
    },
    contents: ["coal", "shovel", "instruments"],
    color: "blue"
  },
  passenger_car: {
    crew: {
      ticket_taker: "Ashley",
      security_guard: "Preston"
    },
    passengers: ["Rick", "Erica", "Johnathan", "Lorraine"],
    color: "green"
  },
  freight_car: {
    contents: {
      compartment_1: ["small bag", "large bag"],
      compartment_2: ["medium bag", "huge bag"]
    },
    color: "black"
  },
  sleeping_car: {
    sleeping_passengers: 3,
    open_beds: 7,
    color: "yellow"
  },
  caboose: {
    crew: {
      cabooseman: "Gerald",
      lookout: "Josephine"
    },
    contents: {
      trunk: ["shoes", "cane", "hat", "sweater"],
      box: ["playing_cards"]
    },
    color: "red"
  }
}