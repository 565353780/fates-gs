DATA_FOLDER=$HOME/chLi/Dataset/GS/haizei_1/
ITERATIONS=30000

CUDA_VISIBLE_DEVICES=2 \
  python train.py \
  -s ${DATA_FOLDER}/mv_2d3d_match/colmap/ \
  -m ${DATA_FOLDER}/fatesgs/ \
  --iterations ${ITERATIONS} \
  -r 1

python render.py \
  -s ${DATA_FOLDER}/mv_2d3d_match/colmap/ \
  -m ${DATA_FOLDER}/fatesgs/ \
  --iteration ${ITERATIONS} \
  -r 1 \
  --skip_test
