cd ..
git clone --depth 1 https://github.com/facebookresearch/pytorch3d.git

pip install ninja

pip3 install torch torchvision torchaudio \
  --index-url https://download.pytorch.org/whl/cu128

pip install pillow typing_extensions open3d mediapy lpips \
  scikit-image tqdm trimesh plyfile pymeshlab opencv-python \
  tensorboard

cd pytorch3d
python setup.py install

cd ../fates-gs/submodules/diff-surfel-rasterization
python setup.py install

cd ../simple-knn
python setup.py install
