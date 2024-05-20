(define (problem cleaning_sneakers)
    (:domain igibson)
    (:objects agent_n_01_1 - agent brush_n_02_1 - brush_n_02 cabinet_n_01_1 - cabinet_n_01 countertop_n_01_1 - countertop_n_01 floor_n_01_1 floor_n_01_2 - floor_n_01 gym_shoe_n_01_3 gym_shoe_n_01_4 - gym_shoe_n_01 sink_n_01_1 - sink_n_01 soap_n_01_1 - soap_n_01 towel_n_01_1 - towel_n_01)
    (:init (dusty gym_shoe_n_01_3) (dusty gym_shoe_n_01_4) (inside soap_n_01_1 cabinet_n_01_1) (not (stained brush_n_02_1)) (not (stained towel_n_01_1)) (onfloor gym_shoe_n_01_3 floor_n_01_2) (onfloor gym_shoe_n_01_4 floor_n_01_2) (ontop brush_n_02_1 countertop_n_01_1) (ontop towel_n_01_1 countertop_n_01_1))
    (:goal (and (nextto brush_n_02_1 towel_n_01_1) (onfloor gym_shoe_n_01_3 floor_n_01_1) (inside soap_n_01_1 sink_n_01_1) (ontop towel_n_01_1 countertop_n_01_1) (onfloor gym_shoe_n_01_4 floor_n_01_1) (not (stained gym_shoe_n_01_4))))
)