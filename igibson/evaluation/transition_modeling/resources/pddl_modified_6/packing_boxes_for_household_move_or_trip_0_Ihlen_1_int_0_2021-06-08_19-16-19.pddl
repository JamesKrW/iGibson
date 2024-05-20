(define (problem packing_boxes_for_household_move_or_trip)
    (:domain igibson)
    (:objects agent_n_01_1 - agent carton_n_02_1 carton_n_02_2 - carton_n_02 floor_n_01_1 - floor_n_01 plate_n_04_1 plate_n_04_2 plate_n_04_3 plate_n_04_4 - plate_n_04 shirt_n_01_1 - shirt_n_01 sweater_n_01_1 - sweater_n_01 table_n_02_1 - table_n_02)
    (:init (onfloor carton_n_02_1 floor_n_01_1) (onfloor carton_n_02_2 floor_n_01_1) (onfloor plate_n_04_2 floor_n_01_1) (onfloor plate_n_04_3 floor_n_01_1) (onfloor plate_n_04_4 floor_n_01_1) (onfloor shirt_n_01_1 floor_n_01_1) (onfloor sweater_n_01_1 floor_n_01_1) (ontop plate_n_04_1 table_n_02_1))
    (:goal (and (inside plate_n_04_2 carton_n_02_2) (inside shirt_n_01_1 carton_n_02_1) (inside plate_n_04_4 carton_n_02_2) (inside plate_n_04_1 carton_n_02_2) (inside plate_n_04_3 carton_n_02_2) (inside sweater_n_01_1 carton_n_02_1)))
)