export CUDA_VISIBLE_DEVICES=0,1,2,3
root_path=/root/autodl-tmp/dataset

#python -u run.py  --task_name classification  --is_training 1  --root_path /root/autodl-tmp/dataset/EthanolConcentration/  --model_id EthanolConcentration     --model TimesNet  --data UEA  --e_layers 3  --batch_size 16  --d_model 32  --d_ff 32   --top_k 3  --des 'Exp'  --itr 1  --learning_rate 0.001  --train_epochs 30  --patience 10

#python -u run.py  --task_name classification  --is_training 1  --root_path $root_path/FaceDetection/         --model_id FaceDetection            --model TimesNet  --data UEA  --e_layers 3  --batch_size 16  --d_model 64  --d_ff 256  --top_k 3  --num_kernels 4  --des 'Exp'  --itr 1  --learning_rate 0.001  --train_epochs 30  --patience 10

#python -u run.py  --task_name classification --is_training 1 --root_path   $root_path/Handwriting/           --model_id Handwriting              --model TimesNet  --data UEA  --e_layers 2  --batch_size 16 --enc_in 3 --dec_in  3 --c_out 3 --d_model 32  --d_ff 64   --top_k 3 --des 'Exp' --itr 1 --learning_rate 0.001 --train_epochs 30 --patience 10
#
#python -u run.py  --task_name classification  --is_training 1  --root_path ./dataset/Heartbeat/             --model_id Heartbeat                --model TimesNet  --data UEA  --e_layers 2  --batch_size 16  --d_model 64  --d_ff 64  --top_k 1  --des 'Exp'  --itr 1  --learning_rate 0.001  --train_epochs 30  --patience 10
#
#python -u run.py  --task_name classification  --is_training 1  --root_path ./dataset/JapaneseVowels/        --model_id JapaneseVowels           --model TimesNet  --data UEA  --e_layers 2  --batch_size 16  --d_model 64  --d_ff 64  --top_k 3  --des 'Exp'  --itr 1  --learning_rate 0.001  --train_epochs 30  --patience 10
#
#python -u run.py  --task_name classification  --is_training 1  --root_path ./dataset/PEMS-SF/               --model_id PEMS-SF                  --model TimesNet  --data UEA  --e_layers 3  --batch_size 16  --d_model 32  --d_ff 32  --top_k 3  --des 'Exp'  --itr 1  --learning_rate 0.001  --train_epochs 30  --patience 10
#
#python -u run.py  --task_name classification  --is_training 1  --root_path ./dataset/SelfRegulationSCP1/    --model_id SelfRegulationSCP1       --model TimesNet  --data UEA  --e_layers 3  --batch_size 16  --d_model 32  --d_ff 32  --top_k 3  --des 'Exp'  --itr 1  --learning_rate 0.001  --train_epochs 30  --patience 10
#
#python -u run.py  --task_name classification  --is_training 1  --root_path ./dataset/SelfRegulationSCP2/    --model_id SelfRegulationSCP2       --model TimesNet  --data UEA  --e_layers 3  --batch_size 16  --d_model 64  --d_ff 64  --top_k 3  --des 'Exp'  --itr 1  --learning_rate 0.001  --train_epochs 10  --patience 10
#
#python -u run.py  --task_name classification  --is_training 1  --root_path ./dataset/SpokenArabicDigits/    --model_id SpokenArabicDigits       --model TimesNet  --data UEA  --e_layers 2  --batch_size 16  --d_model 32  --d_ff 32  --top_k 2  --des 'Exp'  --itr 1  --learning_rate 0.001  --train_epochs 30  --patience 10
#
#python -u run.py  --task_name classification  --is_training 1  --root_path ./dataset/UWaveGestureLibrary/   --model_id UWaveGestureLibrary       --model TimesNet --data UEA  --e_layers 2  --batch_size 16  --d_model 32  --d_ff 64  --top_k 3  --des 'Exp'  --itr 1  --learning_rate 0.001  --train_epochs 30  --patience 10

#python -u run.py --task_name classification --is_training 1 --root_path $root_path/BTC/  --model_id BTC --model TimesNet --data UEA --e_layers 3 --batch_size 32 --d_model 64 --d_ff 32 --top_k 5 --des 'Exp' --itr 1 --learning_rate 0.001 --train_epochs 30 --patience 10
python -u run.py --task_name classification --is_training 1 --root_path $root_path/BTC/ --data_path BTC.csv --model_id BTC --model TimesNet --data BTC_CUSTOM --features MS --target label --seq_len 96 --label_len 43 --e_layers 3 --batch_size 32 --enc_in 42 --dec_in 42 --c_out 42 --d_model 32 --d_ff 32 --top_k 5 --des 'Exp' --itr 1 --learning_rate 0.001 --train_epochs 10 --patience 5