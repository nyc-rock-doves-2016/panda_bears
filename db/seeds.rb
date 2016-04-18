User.delete_all
Card.delete_all
Deck.delete_all
Round.delete_all


#######Kevin##########

kevin = User.create(username: "kevin", email: "kevin@gmail.com", password: "kevin")

Deck.create(creator_id: 1, name: "Geography", description: "Explore the world with these fabulous questions covering everything from Ohio to Tibet")

Card.create(deck_id: 1, question: "What is the capital of Ohio?", answer: "Columbus")
Card.create(deck_id: 1, question: "Magyars are the people of what country?", answer: "Hungary")
Card.create(deck_id: 1, question: "What is the capital of Armenia?", answer: "Yerevan")
Card.create(deck_id: 1, question: "The levantine basin is found in the Mediterranean Sea. True or false?", answer: "True")
Card.create(deck_id: 1, question: "Lebanon gained independence from the country of Spain in 1943, True or false?", answer: "False")


Deck.create(creator_id: 1, name: "Puns", description: "Let's get silly and 'such fun' with these crazy fun punny pun-puns")

Card.create(deck_id: 2, question: "What do you feed an invisible cat?", answer: "Evaporated Milk")
Card.create(deck_id: 2, question: "What do you call a cow with a twitch?", answer: "Beef Jerky")
Card.create(deck_id: 2, question: "The Middle Ages were called the dark ages because there were so many:", answer: "Knights")
Card.create(deck_id: 2, question: "The whale crossed the see to get to the other:", answer: "Tide")
Card.create(deck_id: 2, question: "What's even better than a talking dog?", answer: "Spelling Bee")


#########Dan###########

User.create(username: "dan", email: "dan@gmail.com", password: "dan")

Deck.create(creator_id: 2, name: "NYC", description: "Fan of the big apple? Explore New York City with this fun and informative quiz on THE city")

Card.create(deck_id: 3, question: "The city of New York is made up of how many boroughs?", answer: "5")
Card.create(deck_id: 3, question: "What Art Deco building has six levels of stainless steel arches topped by a lit lancet spire on its top?", answer: "Chrysler Building")
Card.create(deck_id: 3, question: "The largest art museum in the Western Hemisphere is located in NYC, what is its name?", answer: "The Met")
Card.create(deck_id: 3, question: "One of the great bridges into Manhattan was designed by John Roebling with Gothic arches, and opened in 1883, it is the ________________?", answer: "Brooklyn Bridge")
Card.create(deck_id: 3, question: "An ice skating rink is erected each winter under the statue of Prometheus at _____________?", answer: "Rockefeller Center")


##########John############

User.create(username: "jon", email: "jon@gmail.com", password: "jon")


Deck.create(creator_id: 3, name: "Random Facts", description: "Test your knowledge of random, useless information in this useless quiz!  Answer all questions with True or False")

Card.create(deck_id: 4, question: "The venom in a single jellyfish can kill 60 people", answer: "True")
Card.create(deck_id: 4, question: "Sharks are the only fish that have eyelids.", answer: "True")
Card.create(deck_id: 4, question: "Native Americans would use dried herbs and spices and even chili as popcorn flavorings.", answer: "True")
Card.create(deck_id: 4, question: "The average bullying episode lasts only 37 seconds. Teachers notice or intervene in only one in 25 incidents.", answer: "True")
Card.create(deck_id: 4, question: "In 1983, Apple entered the Fortune 500 at #411 after being in existence for only five years, making it the fastest growing company in history.", answer: "True")
