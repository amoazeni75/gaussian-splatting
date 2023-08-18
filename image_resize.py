directory = "/NAS/samp8/datasets/TanksAndTemple_colmap/Ignatius/input/"
target_w = 1088
target_h = 640
import os

from PIL import Image

force_white_background = True
for filename in os.listdir(directory):
    # load images using PIL and resize them to the target size and save them
    # 1. load image
    img = Image.open(directory + filename)
    # 2. resize image
    img = img.resize((target_w, target_h), Image.BICUBIC)
    # 3. force white background
    if force_white_background:
        img = img.convert("RGB")
        pixels = img.load()
        for i in range(img.size[0]):
            for j in range(img.size[1]):
                if pixels[i, j] == (0, 0, 0):
                    pixels[i, j] = (255, 255, 255)

    # # 3. save image
    img.save(directory + filename)
    # assert img.size == (target_w, target_h), "Image size is not correct."
