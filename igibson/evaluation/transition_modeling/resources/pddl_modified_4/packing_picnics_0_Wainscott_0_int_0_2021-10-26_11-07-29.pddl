(define (problem packing_picnics)
    (:domain igibson)
    (:objects agent_n_01_1 - agent carton_n_02_2 carton_n_02_3 - carton_n_02 electric_refrigerator_n_01_1 - electric_refrigerator_n_01 floor_n_01_2 - floor_n_01 grape_n_01_3 - grape_n_01 pop_n_02_2 - pop_n_02 strawberry_n_01_1 strawberry_n_01_4 - strawberry_n_01)
    (:init (inside grape_n_01_3 electric_refrigerator_n_01_1) (inside pop_n_02_2 electric_refrigerator_n_01_1) (inside strawberry_n_01_1 electric_refrigerator_n_01_1) (inside strawberry_n_01_4 electric_refrigerator_n_01_1) (onfloor carton_n_02_2 floor_n_01_2) (onfloor carton_n_02_3 floor_n_01_2))
    (:goal (and (inside strawberry_n_01_1 carton_n_02_2) (inside grape_n_01_3 carton_n_02_2) (inside pop_n_02_2 carton_n_02_3) (inside strawberry_n_01_4 carton_n_02_2)))
)