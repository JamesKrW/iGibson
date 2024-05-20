(define (problem packing_lunches)
    (:domain igibson)
    (:objects agent_n_01_1 - agent apple_n_01_1 - apple_n_01 banana_n_02_1 - banana_n_02 cabinet_n_01_1 - cabinet_n_01 carton_n_02_1 carton_n_02_2 - carton_n_02 chip_n_04_2 - chip_n_04 cookie_n_01_1 cookie_n_01_2 - cookie_n_01 countertop_n_01_1 - countertop_n_01 electric_refrigerator_n_01_1 - electric_refrigerator_n_01 floor_n_01_2 - floor_n_01 salad_n_01_1 - salad_n_01 sandwich_n_01_1 - sandwich_n_01)
    (:init (inside chip_n_04_2 cabinet_n_01_1) (inside salad_n_01_1 electric_refrigerator_n_01_1) (inside sandwich_n_01_1 electric_refrigerator_n_01_1) (onfloor carton_n_02_1 floor_n_01_2) (onfloor carton_n_02_2 floor_n_01_2) (ontop apple_n_01_1 countertop_n_01_1) (ontop banana_n_02_1 countertop_n_01_1) (ontop cookie_n_01_1 countertop_n_01_1) (ontop cookie_n_01_2 countertop_n_01_1))
    (:goal (and (inside cookie_n_01_2 carton_n_02_2) (not (inside salad_n_01_1 carton_n_02_2)) (inside cookie_n_01_1 carton_n_02_1) (inside chip_n_04_2 carton_n_02_2) (inside apple_n_01_1 carton_n_02_2) (inside sandwich_n_01_1 carton_n_02_2) (not (inside sandwich_n_01_1 carton_n_02_1)) (inside banana_n_02_1 carton_n_02_1)))
)