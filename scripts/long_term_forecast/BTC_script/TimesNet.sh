export CUDA_VISIBLE_DEVICES=0,1,2,3

model_name=TimesNet
root_path=/root/autodl-tmp/dataset/BTC/

python -u run.py --task_name long_term_forecast --is_training 1 --root_path $root_path --data_path BTC.csv --model_id BTC_96   --model $model_name --data custom --features MS --target feature --seq_len 96  --label_len 48 --pred_len 48 --e_layers 2 --d_layers 1 --factor 3 --enc_in 43 --dec_in 43 --c_out 1 --d_model 256 --d_ff 512 --top_k 5 --des 'Exp' --itr 1
python -u run.py --task_name long_term_forecast --is_training 1 --root_path $root_path --data_path BTC.csv --model_id BTC_192  --model $model_name --data custom --features MS --target feature --seq_len 192 --label_len 96 --pred_len 48 --e_layers 2 --d_layers 1 --factor 3 --enc_in 43 --dec_in 43 --c_out 1 --d_model 256 --d_ff 512 --top_k 5 --des 'Exp' --itr 1
python -u run.py --task_name long_term_forecast --is_training 1 --root_path $root_path --data_path BTC.csv --model_id BTC_336  --model $model_name --data custom --features MS --target feature --seq_len 336 --label_len 192 --pred_len 48 --e_layers 2 --d_layers 1 --factor 3 --enc_in 43 --dec_in 43 --c_out 1 --d_model 256 --d_ff 512 --top_k 5 --des 'Exp' --itr 1
python -u run.py --task_name long_term_forecast --is_training 1 --root_path $root_path --data_path BTC.csv --model_id BTC_720  --model $model_name --data custom --features MS --target feature --seq_len 720 --label_len 336 --pred_len 48 --e_layers 2 --d_layers 1 --factor 3 --enc_in 43 --dec_in 43 --c_out 1 --d_model 256 --d_ff 512 --top_k 5 --des 'Exp' --itr 1

#python -u run.py --task_name long_term_forecast --is_training 1 --root_path $root_path --data_path BTC.csv --model_id BTC_96_192 --model $model_name --data custom --features MS --target feature --seq_len 96 --label_len 48 --pred_len 192 --e_layers 2 --d_layers 1 --factor 3 --enc_in 43 --dec_in 43 --c_out 43 --d_model 256 --d_ff 512 --top_k 5 --des 'Exp' --itr 1

#python -u run.py --task_name long_term_forecast --is_training 1 --root_path $root_path --data_path BTC.csv --model_id BTC_96_336 --model $model_name --data custom --features MS --target feature --seq_len 96 --label_len 48 --pred_len 336 --e_layers 2 --d_layers 1 --factor 3 --enc_in 43 --dec_in 43 --c_out 43 --d_model 256 --d_ff 512 --top_k 5 --des 'Exp' --itr 1

#python -u run.py --task_name long_term_forecast --is_training 1 --root_path $root_path --data_path BTC.csv --model_id BTC_96_720 --model $model_name --data custom --features MS --target feature --seq_len 96 --label_len 48 --pred_len 720 --e_layers 2 --d_layers 1 --factor 3 --enc_in 43 --dec_in 43 --c_out 43 --d_model 256 --d_ff 512 --top_k 5 --des 'Exp' --itr 1