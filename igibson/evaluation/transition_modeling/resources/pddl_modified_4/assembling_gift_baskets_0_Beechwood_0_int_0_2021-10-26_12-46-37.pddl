(define (problem assembling_gift_baskets)
    (:domain igibson)
    (:objects agent_n_01_1 - agent 
    basket_n_01_1 basket_n_01_2 - basket_n_01 
    bow_n_08_2 - bow_n_08 
    candle_n_01_1 - candle_n_01 
    cheese_n_01_1 - cheese_n_01 
    cookie_n_01_1 - cookie_n_01 
    floor_n_01_1 - floor_n_01 
    table_n_02_1 table_n_02_2 - table_n_02)
    (:init (onfloor basket_n_01_1 floor_n_01_1) 
    (onfloor basket_n_01_2 floor_n_01_1) 
    (ontop bow_n_08_2 table_n_02_2) 
    (ontop candle_n_01_1 table_n_02_1) 
    (ontop cheese_n_01_1 table_n_02_2) 
    (ontop cookie_n_01_1 table_n_02_1))
    (:goal (and 
    (inside bow_n_08_2 basket_n_01_2) 
    (inside candle_n_01_1 basket_n_01_2) 
    (inside cheese_n_01_1 basket_n_01_1) 
    (inside cookie_n_01_1 basket_n_01_1)))
)