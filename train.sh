DATA_FOLDER=$HOME/chLi/Dataset/GS/haizei_1/
ITERATIONS=30000

CUDA_VISIBLE_DEVICES=3 \
  python train.py \
  -s ${DATA_FOLDER}/gs/ \
  -m ${DATA_FOLDER}/pgsr/ \
  --iterations ${ITERATIONS} \
  -r 2

python render.py \
  -s ${DATA_FOLDER}/gs/ \
  -m ${DATA_FOLDER}/pgsr/ \
  --iteration ${ITERATIONS} \
  -r 1 \
  --skip_test
