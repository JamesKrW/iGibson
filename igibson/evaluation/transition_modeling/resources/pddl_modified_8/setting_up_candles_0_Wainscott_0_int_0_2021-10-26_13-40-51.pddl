(define (problem setting_up_candles)
    (:domain igibson)
    (:objects agent_n_01_1 - agent candle_n_01_1 candle_n_01_2 candle_n_01_3 candle_n_01_5 candle_n_01_6 - candle_n_01 carton_n_02_1 carton_n_02_2 - carton_n_02 table_n_02_1 table_n_02_2 - table_n_02)
    (:init (inside candle_n_01_1 carton_n_02_1) (inside candle_n_01_2 carton_n_02_1) (inside candle_n_01_3 carton_n_02_1) (inside candle_n_01_5 carton_n_02_2) (inside candle_n_01_6 carton_n_02_2))
    (:goal (and (ontop candle_n_01_2 table_n_02_1) (ontop candle_n_01_3 table_n_02_2) (ontop candle_n_01_5 table_n_02_2) (ontop candle_n_01_1 table_n_02_1) (ontop candle_n_01_5 table_n_02_1) (ontop candle_n_01_6 table_n_02_2)))
)