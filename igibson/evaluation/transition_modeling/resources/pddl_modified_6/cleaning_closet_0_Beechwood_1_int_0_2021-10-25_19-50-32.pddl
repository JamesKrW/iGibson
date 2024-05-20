(define (problem cleaning_closet)
    (:domain igibson)
    (:objects agent_n_01_1 - agent cabinet_n_01_1 cabinet_n_01_3 - cabinet_n_01 floor_n_01_1 - floor_n_01 hat_n_01_1 - hat_n_01 jewelry_n_01_1 jewelry_n_01_2 - jewelry_n_01 sandal_n_01_1 sandal_n_01_2 - sandal_n_01 shelf_n_01_1 - shelf_n_01 towel_n_01_1 - towel_n_01 umbrella_n_01_1 - umbrella_n_01)
    (:init (dusty cabinet_n_01_3) (dusty floor_n_01_1) (dusty shelf_n_01_1) (inside towel_n_01_1 cabinet_n_01_1) (onfloor hat_n_01_1 floor_n_01_1) (onfloor jewelry_n_01_1 floor_n_01_1) (onfloor jewelry_n_01_2 floor_n_01_1) (onfloor sandal_n_01_1 floor_n_01_1) (onfloor sandal_n_01_2 floor_n_01_1) (onfloor umbrella_n_01_1 floor_n_01_1))
    (:goal (and (not (dusty cabinet_n_01_3)) (ontop hat_n_01_1 shelf_n_01_1) (not (dusty floor_n_01_1)) (nextto sandal_n_01_1 shelf_n_01_1) (not (dusty shelf_n_01_1)) (inside jewelry_n_01_1 cabinet_n_01_3)))
)