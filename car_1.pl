go :- hypothesize(Car),
      write('The best car for you is '),
	  write(Car),
	  nl,
      undo.

/* hypotheses to be tested */
hypothesize(audi_a1) :- audi_a1, !.

hypothesize(unknown).             /* no idea... */

/* Car list */

/* With low price */

/* mini */
ford_ka :- low_price_mini, american.
peugeot_107 :- low_price_mini, french.

/* hatchback */
chevrolet_aveo :- low_price_hatchback, american.
peugeot_308 :- low_price_hatchback, french.
opel_astra :- low_price_hatchback, german.
toyota_auris :- low_price_hatchback, japan.

/* sedan */
ford_focus :- low_price_sedan, american.
peugeot_408 :- low_price_sedan, french.
volkswagen_jetta :- low_price_sedan, german.
toyota_corolla :- low_price_sedan, japan.

/* wagon */
chevrolet_cruze :- low_price_wagon, american.
peugeot_407 :- low_price_wagon, french.
opel_vectra :- low_price_wagon, german.
toyota_prius :- low_price_wagon, japan.

/* crossover */
ford_escape :- low_price_crossover, american.
citroen_cactus :- low_price_crossover, french.
opel_mokka :- low_price_crossover, german.
nissan_juke :- low_price_crossover, japan.

/* suv */
renault_duster :- low_price_suv, french.

/* With medium price */

/* mini */
mini_cooper :- medium_price_mini, british.
smart_for_two :- medium_price_mini, german.
toyota_iq :- medium_price_mini, japan.

/* hatchback */
audi_a1 :- medium_price_hatchback, german.
subaru_impreza :- medium_price_hatchback, japan.
volvo_c30 :- medium_price_hatchback, swedish.

/* sedan */
ford_mondeo :- medium_price_sedan, american.
peugeot_607 :- medium_price_sedan, french.
bmw_3er :- medium_price_sedan, german.
toyota_camry :- medium_price_sedan, japan.

/* wagon */
mercedes_c_klasse :- medium_price_wagon, german.
toyota_avensis :- medium_price_wagon, japan.
volvo_xc_70 :- medium_price_wagon, swedish.

/* crossover */
jeep_compass :- medium_price_crossover, american.
land_rover_freelander :- medium_price_crossover, british.
bmw_x3 :- medium_price_crossover, german.
mitsubishi_outlander :- medium_price_crossover, japan.

/* suv */
jeep_grand_cherokee :- medium_price_suv, american.
land_rover_discovery :- medium_price_suv, british.
mercedes_ml_klasse :- medium_price_suv, japan.

/* With high price */

/* mini */
aston_martin_cygnet :- high_price_mini, british.

/* hatchback */
lexus_ct :- high_price_hatchback, japan.

/* sedan */
dodge_charger :- high_price_sedan, american.
bmw_5er :- high_price_sedan, german.
lexus_gs :- high_price_sedan, japan.
volvo_s80 :- high_price_sedan, swedish.

/* wagon */
chrysler_300c :- high_price_wagon, american.
jaguar_xf :- high_price_wagon, british.
mercedes_e_klasse :- high_price_wagon, german.

/* crossover */
porsche_maccan :- high_price_crossover, german.
infiniti_ex :- high_price_crossover, german.

/* suv */
dodge_ram :- high_price_suv, american.
bmw_x6 :- high_price_suv, german.
toyota_land_cruiser :- high_price_suv, japan.

/* With very high price */

/* sedan */
tesla_model_s :- very_high_price_sedan, american.
mercedes_s_klasse :- very_high_price_sedan, german.
lexus_ls :- very_high_price_sedan, japan.

/* suv */
porsche_cayenne :- very_high_price_suv, german.
infiniti_qx :- very_high_price_suv, japan.

/* coupe */
chevrolet_camaro :- very_high_price_coupe, american.
jaguar_f_type :- very_high_price_coupe, british.
bentley_continental :- very_high_price_coupe, german.
nissan_gtr :- very_high_price_coupe, japan.


/* Classification by manufacturer country */
american :- confirmed(american).
british :- confirmed(british).
french :- confirmed(french).
german :- confirmed(german).
japan :- confirmed(japan).
swedish :- confirmed(swedish).

/* Classification by price */
low_price :- confirmed(low_price).
medium_price :- confirmed(medium_price).
high_price :- confirmed(high_price).
very_high_price :- confirmed(very_high_price).


/* Classification by price and body type */
/* low price body type */
low_price_mini :- low_price, mini.
low_price_hatchback :- low_price, hatchback.
low_price_sedan :- low_price, sedan.
low_price_wagon :- low_price, wagon.
low_price_crossover :- low_price, crossover.
low_price_suv :- low_price, suv.

/* medium price body type */
medium_price_mini :- medium_price, mini.
medium_price_hatchback :- medium_price, hatchback.
medium_price_sedan :- medium_price, sedan.
medium_price_wagon :- medium_price, wagon.
medium_price_crossover :- medium_price, crossover.
medium_price_suv :- medium_price, suv.

/* high price body type */
high_price_mini :- high_price, mini.
high_price_hatchback :- high_price, hatchback.
high_price_sedan :- high_price, sedan.
high_price_wagon :- high_price, wagon.
high_price_crossover :- high_price, crossover.
high_price_suv :- high_price, suv.

/* very high price body type */
very_high_price_mini :- very_high_price, mini.
very_high_price_hatchback :- very_high_price, hatchback.
very_high_price_sedan :- very_high_price, sedan.
very_high_price_wagon :- very_high_price, wagon.
very_high_price_crossover :- very_high_price, crossover.
very_high_price_suv :- very_high_price, suv.
very_high_price_coupe :- very_high_price, coupe.


/* Body type classification */

mini :- confirmed(very_small_size),
        confirmed(for_every_day),
        not(confirmed(for_family)).

hatchback :- confirmed(small_size),
             confirmed(for_every_day),
             confirmed(for_family).

sedan :- confirmed(medium_size),
         confirmed(for_every_day).

wagon :- confirmed(medium_size),
         confirmed(for_family).

crossover :- confirmed(large),
             confirmed(for_every_day).

suv :- confirmed(very_large_size),
       confirmed(for_off_road),
       confirmed(for_big_family).

pickup :- confirmed(very_large_size),
          confirmed(for_off_road),
          confirmed(big_trunk).

coupe :- confirmed(small_size),
         not(confirmed(for_every_day)).


/* how to ask questions */
ask(Question) :-
    write('Do you want a car with feature '),
    write(Question),
    write('?'),
    read(Response),
    nl,
    ((Response == yes ; Response == y) ->
       assert(yes(Question)) ;
       assert(no(Question)), fail).

:- dynamic yes/1,no/1.

confirmed(Feature) :-
   (yes(Feature) -> true;
    (no(Feature) -> fail;
    ask(Feature))).

/* undo all yes/no assertions */
undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.