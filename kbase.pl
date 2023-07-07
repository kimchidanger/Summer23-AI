servesAll(american, [salad, steak, sandwiches, burgers, fried_chicken]).
servesAll(burger_place, [burgers, fries, onion_rings]).
servesAll(chinese, [eggrolls, rice, shrimp, soup, noodles]).
servesAll(indian, [papadam, bagan_bharta, rice, tandoori, naan]).
servesAll(italian, [salad, pasta, cioppino, snapper, bread, garlic_bread]).
servesAll(japanese, [sashimi, rice, tempura, noodles]).
servesAll(mediterranean, [gyros, hummus, pita, falafel]).
servesAll(mexican, [tacos, beans, rice, enchiladas, fish_tacos]).
servesAll(pizza_place, [pizza, salad, garlic_bread]).
servesAll(thai, [rice, noodles, larb, pad_thai]).

dishesIn(vegetarian, [beans, bagan_bharta, enchiladas, falafel, hummus, pizza, salad, soup, tempura, onion_rings, naan, papadam, bread, rice, noodles, pita, garlic_bread, pasta, fries]).
dishesIn(meat, [burgers, enchiladas, gyros, pad_thai, pizza, steak, sandwiches,fried_chicken, tacos, tandoori, larb]).
dishesIn(seafood, [snapper, cioppino, sashimi, shrimp, clams, fish_tacos, tempura]).
dishesIn(starch, [naan, papadam, bread, rice, noodles, pita, garlic_bread, pasta, fries]).

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

dishtype_restuarant(vegetarian,[yans, pizza_marvin, bajas, andreas, chinatown, kabob_n_curry, waterman_grille, dolores, tallulahs, red_stripe, pasta_beach, haruki, heng, mikes, east_side_pocokets, bees, shake_shack, al_forno, lims]).

serves(Kind, Dish) :- 
    servesAll(Kind, Dishes), 
    member(Dish, Dishes).

type(Diet, Dish) :-
    dishesIn(Diet, Dishes),
    member(Dish, Dishes).

eatery(Store, Kind) :-
    restaurant(Store, Kind, Place).

place_to_eat(Store, Place) :-
    restaurant(Store, Kind, Place).

type_location(Kind, Place) :-
    restaurant(Store, Kind, Place).

dr(Type, Restaurant) :-
    dishtype_restuarant(Type, Restaurants),
    member(Restaurant, Restaurants).

