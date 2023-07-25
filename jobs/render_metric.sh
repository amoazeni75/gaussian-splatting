
CUDA_VISIBLE_DEVICES=1

cd ..

# lego: A5
python render.py -m /NAS/samp8/projects/gaussian-splatting/output/lego/
python metrics.py -m /NAS/samp8/projects/gaussian-splatting/output/lego/

echo "lego done --------------------------------------------------------------------------------------------"

# chair: A5
python render.py -m /NAS/samp8/projects/gaussian-splatting/output/chair/
python metrics.py -m /NAS/samp8/projects/gaussian-splatting/output/chair/

echo "chair done --------------------------------------------------------------------------------------------"

# drums: A5
python render.py -m /NAS/samp8/projects/gaussian-splatting/output/drums/
python metrics.py -m /NAS/samp8/projects/gaussian-splatting/output/drums/

echo "drums done --------------------------------------------------------------------------------------------"

# ficus: A5
python render.py -m /NAS/samp8/projects/gaussian-splatting/output/ficus/
python metrics.py -m /NAS/samp8/projects/gaussian-splatting/output/ficus/

echo "ficus done --------------------------------------------------------------------------------------------"

# hotdog
python render.py -m /NAS/samp8/projects/gaussian-splatting/output/hotdog/
python metrics.py -m /NAS/samp8/projects/gaussian-splatting/output/hotdog/

echo "hotdog done --------------------------------------------------------------------------------------------"

# materials
python render.py -m /NAS/samp8/projects/gaussian-splatting/output/materials/
python metrics.py -m /NAS/samp8/projects/gaussian-splatting/output/materials/

echo "materials done --------------------------------------------------------------------------------------------"

# ship
python render.py -m /NAS/samp8/projects/gaussian-splatting/output/ship/
python metrics.py -m /NAS/samp8/projects/gaussian-splatting/output/ship/

echo "ship done --------------------------------------------------------------------------------------------"

# mic
python render.py -m /NAS/samp8/projects/gaussian-splatting/output/mic/
python metrics.py -m /NAS/samp8/projects/gaussian-splatting/output/mic/

echo "mic done --------------------------------------------------------------------------------------------"

# Family
python render.py -m /NAS/samp8/projects/gaussian-splatting/output/Family/
python metrics.py -m /NAS/samp8/projects/gaussian-splatting/output/Family/

echo "Family done --------------------------------------------------------------------------------------------"

# Barn
python render.py -m /NAS/samp8/projects/gaussian-splatting/output/Barn/
python metrics.py -m /NAS/samp8/projects/gaussian-splatting/output/Barn/

echo "Barn done --------------------------------------------------------------------------------------------"

# Catepillar
python render.py -m /NAS/samp8/projects/gaussian-splatting/output/Catepillar/
python metrics.py -m /NAS/samp8/projects/gaussian-splatting/output/Catepillar/

echo "Catepillar done --------------------------------------------------------------------------------------------"

# Ignatius
python render.py -m /NAS/samp8/projects/gaussian-splatting/output/Ignatius/
python metrics.py -m /NAS/samp8/projects/gaussian-splatting/output/Ignatius/

echo "Ignatius done --------------------------------------------------------------------------------------------"

# Truck
python render.py -m /NAS/samp8/projects/gaussian-splatting/output/Truck/
python metrics.py -m /NAS/samp8/projects/gaussian-splatting/output/Truck/

