servesAll(american, [salad, steak, sandwiches, burgers, fried_chicken]).
servesAll(burger_place, [burgers, fries, onion_rings]).
servesAll(chinese, [eggrolls, rice, shrimp, soup, and noodles]).
servesAll(indian, [papadam, bagan_bharta, rice, tandoori, and naan]).
servesAll(italian, [salad, pasta, cioppino, snapper, bread, and garlic_bread]).
servesAll(japanese, [sashimi, rice, tempura, and noodles]).
servesAll(mediterranean, [gyros, hummus, pita, and falafel]).
servesAll(mexican, [tacos, beans, rice, enchiladas, and fish_tacos]).
servesAll(pizza_place, [pizza, salad, garlic_bread]).
servesAll(thai, [rice, noodles, larb, and pad_thai]).

serves(Kind, Dish) :- 
    servesAll(Kind, Dishes), 
    member(Dish, Dishes).

dishesIn(vegetarian, [beans, bagan_bharta, enchiladas, falafel, hummus, pizza, salad, soup, tempura, onion_rings, naan, papadam, bread, rice, noodles, pita, garlic_bread, pasta, fries]).
dishesIn(meat, [burgers, enchiladas, gyros, pad_thai, pizza, steak, sandwiches,fried_chicken, tacos, tandoori, larb]).
dishesIn(seafood, [snapper, cioppino, sashimi, shrimp, clams, fish_tacos, tempura]).
dishesIn(starch, [naan, papadam, bread, rice, noodles, pita, garlic_bread, pasta, fries]).

type(Diet, Dish) :-
    dishesIn(Diet, Dishes),
    member(Dish, Dishes).

restaurant(yans, chinese, thayer_street).
restaurant(pizza_marvin, pizza_place, fox_point).
restaurant(bajas, mexican, thayer_street).
restaurant(andreas, mediterranean, thayer_street).
restaurant(chinatown, chinese, thayer_street).
restaurant(kabob_n_curry, indian, thayer_street).
restaurant(waterman_grille, american, wayland).
restaurant(dolores, mexican, fox_point).
restaurant(tallulahs, mexican, fox_point).
restaurant(red_stripe, american, wayland).
restaurant(pasta_beach, italian, wayland).
restaurant(haruki, japanese, wayland).
restaurant(heng, thai, thayer_street).
restaurant(mikes, pizza_place, thayer_street).
restaurant(east_side_pocokets, mediterranean, thayer_street).
restaurant(bees, thai, fox_point).
restaurant(shake_shack, burger_place, thayer_street).
restaurant(al_forno, italian, fox_point).
restaurant(lims, thai, wayland).

eatery(Store, Kind) :-
    restaurant(Store, Kind, Place).

place_to_eat(Store, Place) :-
    restaurant(Store, Kind, Place).

type_location(Kind, Place) :-
    restaurant(Store, Kind, Place).

restaurant_serves(Restaurant, Dish) :-
    restaurant(Store, Kind, Place),
    servesAll(Kind, Dishes),
    member(Dish, Dishes),
    member(Restaurant, Store).

restaurant_type(Restaurant, Type) :-
    restaurant(Store, Kind, Place),
    dishesIn(Diet, Dishes),
    servesAll(Kind, Dishes), 



