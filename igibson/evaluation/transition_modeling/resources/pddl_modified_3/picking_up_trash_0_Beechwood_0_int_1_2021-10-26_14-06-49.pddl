(define (problem picking_up_trash)
    (:domain igibson)
    (:objects agent_n_01_1 - agent ashcan_n_01_1 - ashcan_n_01 floor_n_01_1 floor_n_01_2 - floor_n_01 pad_n_01_1 pad_n_01_2 pad_n_01_3 - pad_n_01)
    (:init (onfloor ashcan_n_01_1 floor_n_01_2) (onfloor pad_n_01_1 floor_n_01_2) (onfloor pad_n_01_2 floor_n_01_2) (onfloor pad_n_01_3 floor_n_01_1))
    (:goal (and (inside pad_n_01_3 ashcan_n_01_1) (inside pad_n_01_2 ashcan_n_01_1) (inside pad_n_01_1 ashcan_n_01_1)))
)