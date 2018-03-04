cd ..
# from ../scripts/test_1024p.sh
python3 train_debug.py --name label2city_512p 2>&1 |tee label2city_512p_`date +%Y_%m_%d`.log
