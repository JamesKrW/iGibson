(define (problem organizing_boxes_in_garage)
    (:domain igibson)
    (:objects agent_n_01_1 - agent ball_n_01_1 ball_n_01_2 - ball_n_01 carton_n_02_1 carton_n_02_2 - carton_n_02 floor_n_01_1 - floor_n_01 plate_n_04_1 plate_n_04_2 plate_n_04_3 - plate_n_04 saucepan_n_01_1 - saucepan_n_01 shelf_n_01_1 - shelf_n_01)
    (:init (inside plate_n_04_1 shelf_n_01_1) (inside plate_n_04_2 shelf_n_01_1) (inside plate_n_04_3 shelf_n_01_1) (inside saucepan_n_01_1 shelf_n_01_1) (onfloor agent_n_01_1 floor_n_01_1) (onfloor ball_n_01_1 floor_n_01_1) (onfloor ball_n_01_2 floor_n_01_1) (onfloor carton_n_02_1 floor_n_01_1) (onfloor carton_n_02_2 floor_n_01_1))
    (:goal (and (inside plate_n_04_1 carton_n_02_2) (onfloor carton_n_02_1 floor_n_01_1) (inside plate_n_04_3 carton_n_02_2) (inside ball_n_01_1 carton_n_02_2) (onfloor carton_n_02_2 floor_n_01_1) (inside ball_n_01_2 carton_n_02_2) (inside plate_n_04_2 carton_n_02_2) (inside saucepan_n_01_1 carton_n_02_2)))
)