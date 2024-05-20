(define (problem cleaning_up_after_a_meal)
    (:domain igibson)
    (:objects agent_n_01_1 - agent bowl_n_01_2 - bowl_n_01 cup_n_01_1 - cup_n_01 detergent_n_02_1 - detergent_n_02 dishwasher_n_01_1 - dishwasher_n_01 floor_n_01_1 - floor_n_01 hamburger_n_01_2 - hamburger_n_01 plate_n_04_2 plate_n_04_3 plate_n_04_4 - plate_n_04 sack_n_01_1 - sack_n_01 sink_n_01_1 - sink_n_01 table_n_02_1 - table_n_02)
    (:init (onfloor detergent_n_02_1 floor_n_01_1) (onfloor hamburger_n_01_2 floor_n_01_1) (ontop bowl_n_01_2 table_n_02_1) (ontop cup_n_01_1 table_n_02_1) (ontop plate_n_04_2 table_n_02_1) (ontop plate_n_04_3 table_n_02_1) (ontop plate_n_04_4 table_n_02_1) (ontop sack_n_01_1 table_n_02_1) (stained bowl_n_01_2) (stained cup_n_01_1) (stained plate_n_04_2) (stained plate_n_04_3) (stained plate_n_04_4))
    (:goal (and (not (stained plate_n_04_2)) (not (stained bowl_n_01_2)) (onfloor sack_n_01_1 floor_n_01_1) (not (stained plate_n_04_3)) (not (stained plate_n_04_4)) (not (stained cup_n_01_1))))
)