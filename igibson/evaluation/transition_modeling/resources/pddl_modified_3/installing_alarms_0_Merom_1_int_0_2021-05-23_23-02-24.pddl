(define (problem installing_alarms)
    (:domain igibson)
    (:objects agent_n_01_1 - agent alarm_n_02_1 alarm_n_02_2 - alarm_n_02 table_n_02_1 table_n_02_2 - table_n_02)
    (:init (not (toggled_on alarm_n_02_1)) (not (toggled_on alarm_n_02_2)) (ontop alarm_n_02_1 table_n_02_2) (ontop alarm_n_02_2 table_n_02_2))
    (:goal (and (ontop alarm_n_02_2 table_n_02_1) (toggled_on alarm_n_02_1) (toggled_on alarm_n_02_2)))
)