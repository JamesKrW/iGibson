(define (problem locking_every_window)
    (:domain igibson)
    (:objects agent_n_01_1 - agent window_n_01_1 window_n_01_2 window_n_01_3 window_n_01_4 - window_n_01)
    (:init (open window_n_01_1) (open window_n_01_2) (open window_n_01_3) (open window_n_01_4))
    (:goal (and (not (open window_n_01_3)) (not (open window_n_01_1)) (not (open window_n_01_4)) (not (open window_n_01_2))))
)