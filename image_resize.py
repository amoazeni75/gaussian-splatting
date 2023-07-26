directory = "/NAS/samp8/datasets/TanksAndTemple_colmap/Ignatius/input/"
target_w = 1088
target_h = 640
import os

from PIL import Image

for filename in os.listdir(directory):
    # load images using PIL and resize them to the target size and save them
    # 1. load image
    img = Image.open(directory + filename)
    # 2. resize image
    img = img.resize((target_w, target_h), Image.BICUBIC)
    # # 3. save image
    img.save(directory + filename)
    # assert img.size == (target_w, target_h), "Image size is not correct."
