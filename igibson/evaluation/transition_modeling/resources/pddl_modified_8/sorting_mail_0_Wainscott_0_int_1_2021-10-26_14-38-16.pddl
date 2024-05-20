(define (problem sorting_mail)
    (:domain igibson)
    (:objects agent_n_01_1 - agent envelope_n_01_1 envelope_n_01_2 envelope_n_01_3 envelope_n_01_4 - envelope_n_01 floor_n_01_1 - floor_n_01 newspaper_n_03_1 newspaper_n_03_2 newspaper_n_03_3 newspaper_n_03_4 - newspaper_n_03)
    (:init (onfloor envelope_n_01_1 floor_n_01_1) (onfloor envelope_n_01_2 floor_n_01_1) (onfloor envelope_n_01_3 floor_n_01_1) (onfloor envelope_n_01_4 floor_n_01_1) (onfloor newspaper_n_03_1 floor_n_01_1) (onfloor newspaper_n_03_2 floor_n_01_1) (onfloor newspaper_n_03_3 floor_n_01_1) (onfloor newspaper_n_03_4 floor_n_01_1))
    (:goal (and (ontop envelope_n_01_2 envelope_n_01_2) (ontop envelope_n_01_1 envelope_n_01_1) (ontop envelope_n_01_3 envelope_n_01_2) (ontop newspaper_n_03_3 newspaper_n_03_1) (ontop newspaper_n_03_2 newspaper_n_03_1) (ontop newspaper_n_03_4 newspaper_n_03_1) (ontop newspaper_n_03_1 newspaper_n_03_1) (ontop envelope_n_01_4 envelope_n_01_1)))
)