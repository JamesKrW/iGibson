(define (problem preparing_a_shower_for_child)
    (:domain igibson)
    (:objects agent_n_01_1 - agent floor_n_01_1 - floor_n_01 shampoo_n_01_1 - shampoo_n_01 sink_n_01_1 - sink_n_01 soap_n_01_1 - soap_n_01 towel_n_01_1 - towel_n_01)
    (:init (onfloor agent_n_01_1 floor_n_01_1) (onfloor shampoo_n_01_1 floor_n_01_1) (onfloor soap_n_01_1 floor_n_01_1) (onfloor towel_n_01_1 floor_n_01_1))
    (:goal (and (onfloor shampoo_n_01_1 floor_n_01_1) (onfloor towel_n_01_1 floor_n_01_1) (nextto soap_n_01_1 sink_n_01_1)))
)