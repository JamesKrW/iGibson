(define (problem unpacking_suitcase)
    (:domain igibson)
    (:objects agent_n_01_1 - agent carton_n_02_1 - carton_n_02 floor_n_01_1 - floor_n_01 notebook_n_01_1 - notebook_n_01 perfume_n_02_1 - perfume_n_02 sock_n_01_1 sock_n_01_2 - sock_n_01 sofa_n_01_1 - sofa_n_01 toothbrush_n_01_1 - toothbrush_n_01)
    (:init (inside notebook_n_01_1 carton_n_02_1) (inside perfume_n_02_1 carton_n_02_1) (inside sock_n_01_1 carton_n_02_1) (inside sock_n_01_2 carton_n_02_1) (inside toothbrush_n_01_1 carton_n_02_1) (onfloor agent_n_01_1 floor_n_01_1) (onfloor carton_n_02_1 floor_n_01_1))
    (:goal (and (ontop perfume_n_02_1 sofa_n_01_1) (ontop notebook_n_01_1 sofa_n_01_1) (ontop sock_n_01_2 sofa_n_01_1) (onfloor carton_n_02_1 floor_n_01_1) (ontop sock_n_01_1 sofa_n_01_1) (ontop toothbrush_n_01_1 sofa_n_01_1)))
)