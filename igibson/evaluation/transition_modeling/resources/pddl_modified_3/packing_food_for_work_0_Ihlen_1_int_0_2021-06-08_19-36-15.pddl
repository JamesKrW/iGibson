(define (problem packing_food_for_work)
    (:domain igibson)
    (:objects agent_n_01_1 - agent apple_n_01_1 - apple_n_01 cabinet_n_01_1 - cabinet_n_01 carton_n_02_1 - carton_n_02 countertop_n_01_1 - countertop_n_01 floor_n_01_1 - floor_n_01 juice_n_01_1 - juice_n_01 snack_food_n_01_1 - snack_food_n_01)
    (:init (inside snack_food_n_01_1 cabinet_n_01_1) (onfloor carton_n_02_1 floor_n_01_1) (ontop apple_n_01_1 countertop_n_01_1) (ontop juice_n_01_1 countertop_n_01_1))
    (:goal (and (ontop carton_n_02_1 countertop_n_01_1) (inside snack_food_n_01_1 carton_n_02_1) (inside juice_n_01_1 carton_n_02_1)))
)