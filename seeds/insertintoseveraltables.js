/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.seed = async function (knex) {
  await knex("demographics").del();
  await knex("geography1").del();
  await knex("geography2").del();
  await knex("british_history").del();
  await knex("planets").del();
  await knex("science").del();
  await knex("generalknowledge1").del();
  await knex("numbers").del();

  await knex("demographics").insert([
    {
      question: "Which of these places has the greatest population?",
      choice_1: "New Zealand",
      choice_2: "Belgium",
      choice_3: "texas",
      choice_4: "Hong Kong",
      correct_answer: "Texas",
    },
    {
      question:"What percent of the population of Turkey is registered as Muslim by the Turkish government?",
      choice_1: "50%",
      choice_2: "80%",
      choice_3: "99.8%",
      correct_answer: "99.8%",
    },
    {
      question: "Which of these countries has the highest population density?",
      choice_1: "Netherlands",
      choice_2: "Papua New Guinea",
      choice_3: "Peru",
      correct_answer: "Netherland",
    },
    {
      question:"As of March 2021, what is the approximate population of the world?",
      choice_1: "4.93 billion",
      choice_2: "7.85 billion",
      choice_3: "9.12 billion",
      correct_answer: "7.85 billion",
    },
    {
      question:
        "Approximately what year is Nigeria projected to pass the United States in population?",
      choice_1: "It already has",
      choice_2: "2055",
      choice_3: "2300",
      choice_4: "Never",
      correct_answer: "Never",
    },
  ]);
  await knex("science").insert([
    {
      question: "Which of these planets is the largest?",
      choice_1: "Earth",
      choice_2: "Mars",
      choice_3: "Mercury",
      choice_4: "Venus",
      correct_answer: "Earth",
    },
    {
      question:
        "About what percent of the Earth's atmosphere is made up of Oxygen?",
      choice_1: "0.4%",
      choice_2: "21%",
      choice_3: "90%",
      correct_answer: "21%",
    },
    {
      question: "What is the name of the current geological epoch, which began about 11,650 years ago?",
      choice_1: "Cretaceous",
      choice_2: "Holocene",
      choice_3: "Pleistocene",
      correct_answer: "Holocene",
    },
    {
      question:
        "What has been the primary cause of the increase in the temperature of the Earth's atmosphere in recent decades?",
      choice_1: "Emission of carbon dioxide from the burning of fossil fuels",
      choice_2: "Increased brightness of the sun",
      choice_3: "Pertubations in the Earth's orbit",
      choice_4: "Volcanic activity",
      correct_answer: "Volcanic activity",
    },
    {
      question:
        "Which of these animals is most closely related to homo sapiens?",
      choice_1: "Humpback whale",
      choice_2: "Iguana",
      choice_3: "Monarch butterfly",
      choice_4: "Screech owl",
      correct_answer: "Screech owl",
    },
  ]);

  await knex("planets").insert([
    {
      question: "What is the smallest planet in the solar system?",
      choice_1: "Earth",
      choice_2: "Mars",
      choice_3: "Mercury",
      choice_4: "Venus",
      correct_answer: "Mercury",
    },
    {
      question: "What is the largest planet in the solar system?",
      choice_1: "Earth",
      choice_2: "Jupiter",
      choice_3: "Neptune",
      choice_4: "Saturn",
      correct_answer: "Jupiter"
    },
    {
      question: "Which planet is closest to the sun?",
      choice_1: "Jupiter",
      choice_2: "Mercury",
      choice_3: "Venus",
      choice_4: "Different planets at different times",
      correct_answer: "Mercury"
    },
    {
      question: "Which planet is furthest from the sun?",
      choice_1: "Neptune",
      choice_2: "Saturn",
      choice_3: "Uranus",
      choice_4: "Different planets at different times",
      correct_answer: "Neptune",
    },
    {
      question: "Which planet is closest to Earth?",
      choice_1: "Mars",
      choice_2: "Saturn",
      choice_3: "Venus",
      choice_4: "Different planets at different times",
      correct_answer: "Different planets at different times",
    },
  ]);

  await knex("british_history").insert([
    {
      question: "What group of people formed the priestly class in ancient Celtic society?",
      choice_1: "Druids",
      choice_2: "Gurkhas",
      choice_3: "Haruspices",
      choice_4: "Jesults",
      correct_answer: "Druids",
    },
    {
      question: "What type of flower is a symbol of remembrance for World War One?",
      choice_1: "Orchid",
      choice_2: "Poppy",
      choice_3: "Rose",
      choice_4: "Tulip",
      correct_answer: "Poppy"
    },
    {
      question: "Which monarch holds the record for the longest reign in British history?",
      choice_1: "Elizabeth II",
      choice_2: "Henry VIII",
      choice_3: "Victoria",
      correct_answer: "Elizabeth II"
    },
    {
      question: "What physical description is often associated with Richard III?",
      choice_1: "Blackbearded",
      choice_2: "Gigantic",
      choice_3: "Hunchbacked",
      choice_4: "Toothless",
      correct_answer: "Hunchbacked",
    },
    {
      question: "What holiday did Parliamentary Puritans ban in 1647, replacing it with a day of fasting?",
      choice_1: "Christmas",
      choice_2: "Halloween",
      choice_3: "New Year's Day",
      choice_4: "Valentine's Day",
      correct_answer: "Christmas",
    },
  ]);

  await knex("numbers").insert([
    {
      question: "Number of countries in the world, according to JetPunk",
      choice_1: "47",
      choice_2: "94",
      choice_3: "196",
      correct_answer: "196",
    },
    {
      question: "Players per team on the field in international football",
      choice_1: "7",
      choice_2: "9",
      choice_3: "11",
      choice_4: "13",
      correct_answer: "11"
    },
    {
      question: "Age at which Jimi Hendrix, Janis Joplin, Jim Morrison, and Amy Winehouse died",
      choice_1: "17",
      choice_2: "27",
      choice_3: "37",
      correct_answer: "27"
    },
    {
      question: "Unlucky number in China",
      choice_1: "4",
      choice_2: "8",
      choice_3: "13",
      correct_answer: "4",
    },
    {
      question: "Stars in the Milky Way",
      choice_1: "1000 - 4000",
      choice_2: "1 million - 4 million",
      choice_3: "100 billion - 400 billion",
      correct_answer: "100 billion - 400 billion",
    },
  ]);

  await knex("geography1").insert([
    {
      question: "Which of these countries has the largest population?",
      choice_1: "Brazil",
      choice_2: "Russia",
      choice_3: "Germany",
      choice_4: "Iran",
      correct_answer: "Brazil",
    },
    {
      question: "Which of these mountain ranges has the highest maximum elevation?",
      choice_1: "Andes",
      choice_2: "Alps",
      choice_3: "Rockies",
      choice_4: "Urals",
      correct_answer: "Andes"
    },
    {
      question: "Which of these rivers flows past the most countries?",
      choice_1: "Amazon",
      choice_2: "Euphrates",
      choice_3: "Mississippi",
      choice_4: "Danube",
      correct_answer: "Danube"
    },
    {
      question: "Which of these cities has the highest population?",
      choice_1: "San Francisco",
      choice_2: "Santiago",
      choice_3: "Singapore",
      choice_4: "Shanghai",
      correct_answer: "Shanghai",
    },
    {
      question: "Which of these islands has the largest area",
      choice_1: "Iceland",
      choice_2: "Cuba",
      choice_3: "Great Britain",
      choice_4: "Madagascar",
      correct_answer: "Madagascar",
    },
  ]);

  await knex("generalknowledge1").insert([
    {
      question: "What is the longest that an elephant has ever lived? (That we know of)",
      choice_1: "17 years",
      choice_2: "49 years",
      choice_3: "86 years",
      choice_4: "142 years",
      correct_answer: "86 years",
    },
    {
      question: "How many rings are on the Olympic flag?",
      choice_1: "None",
      choice_2: "4",
      choice_3: "5",
      choice_4: "7",
      correct_answer: "5"
    },
    {
      question: "What is a tarsier?",
      choice_1: "A bird",
      choice_2: "A lizard",
      choice_3: "A primate",
      correct_answer: "A primate"
    },
    {
      question: "How did Spider-Man get his powers?",
      choice_1: "Bitten by a radio-active spider",
      choice_2: "Born with them",
      choice_3: "Military experiment gone wrong",
      choice_4: "Woke up with them after a long dream",
      correct_answer: "Bitten by a radio-active spider",
    },
    {
      question: "In darts, what's the most points you can score with a single throw?",
      choice_1: "20",
      choice_2: "50",
      choice_3: "60",
      choice_4: "100",
      correct_answer: "60",
    },
  ]);

  await knex("geography2").insert([
    {
      question: "Which of these U.S. states does NOT border Canada?",
      choice_1: "Alaska",
      choice_2: "Indiana",
      choice_3: "Maine",
      choice_4: "Minnesota",
      correct_answer: "Indiana",
    },
    {
      question: "Which of these countries was NOT a part of the Soviet Union?",
      choice_1: "Belarus",
      choice_2: "Georgia",
      choice_3: "Poland",
      choice_4: "Ukraine",
      correct_answer: "Poland"
    },
    {
      question: "Which of these cities is NOT a national capital?",
      choice_1: "Bangkok",
      choice_2: "Cairo",
      choice_3: "Prague",
      choice_4: "Sydney",
      correct_answer: "Sydney"
    },
    {
      question: "Which of these cities DOESN'T border the Mediterranean Sea?",
      choice_1: "Alexandria",
      choice_2: "Barcelona",
      choice_3: "Lisbon",
      choice_4: "Monaco",
      correct_answer: "Lisbon",
    },
    {
      question: "Which of these countries was NEVER part of the British Empire?",
      choice_1: "Ireland",
      choice_2: "Kenya",
      choice_3: "New Zealand",
      choice_4: "Thailand",
      correct_answer: "Thailand",
    },
  ]);
};
