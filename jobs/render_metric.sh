cd ..
# activate conda environment 
source activate gaussian_splatting


export CUDA_VISIBLE_DEVICES=1

# lego: A5
python render.py -m output/lego_around_30K_pcd_from_SFM/
python metrics.py -m output/lego_around_30K_pcd_from_SFM/
echo "lego done --------------------------------------------------------------------------------------------"

# chair: A5
python render.py -m output/chair_around_30K_pcd_from_SFM/
python metrics.py -m output/chair_around_30K_pcd_from_SFM/
echo "chair done --------------------------------------------------------------------------------------------"

# drums: A5
python render.py -m output/drums_around_30K_pcd_from_SFM/
python metrics.py -m output/drums_around_30K_pcd_from_SFM/
echo "drums done --------------------------------------------------------------------------------------------"

# ficus: A5
python render.py -m output/ficus_around_30K_pcd_from_SFM/
python metrics.py -m output/ficus_around_30K_pcd_from_SFM/
echo "ficus done --------------------------------------------------------------------------------------------"

# hotdog
python render.py -m output/hotdog_around_30K_pcd_from_SFM/
python metrics.py -m output/hotdog_around_30K_pcd_from_SFM/
echo "hotdog done --------------------------------------------------------------------------------------------"

# materials
python render.py -m output/materials_around_30K_pcd_from_SFM/
python metrics.py -m output/materials_around_30K_pcd_from_SFM/
echo "materials done --------------------------------------------------------------------------------------------"

# ship
python render.py -m output/ship_around_30K_pcd_from_SFM/
python metrics.py -m output/ship_around_30K_pcd_from_SFM/
echo "ship done --------------------------------------------------------------------------------------------"

# mic
python render.py -m output/mic_around_30K_pcd_from_SFM/
python metrics.py -m output/mic_around_30K_pcd_from_SFM/
echo "mic done --------------------------------------------------------------------------------------------"

# Family
python render.py -m output/Family_around_30K_pcd_from_SFM/
python metrics.py -m output/Family_around_30K_pcd_from_SFM/
echo "Family done --------------------------------------------------------------------------------------------"

# Barn
python render.py -m output/Barn_around_30K_pcd_from_SFM/
python metrics.py -m output/Barn_around_30K_pcd_from_SFM/
echo "Barn done --------------------------------------------------------------------------------------------"

# Caterpillar
python render.py -m output/Caterpillar_around_30K_pcd_from_SFM/
python metrics.py -m output/Caterpillar_around_30K_pcd_from_SFM/
echo "Caterpillar done --------------------------------------------------------------------------------------------"

# Ignatius
python render.py -m output/Ignatius_around_30K_pcd_from_SFM/
python metrics.py -m output/Ignatius_around_30K_pcd_from_SFM/
echo "Ignatius done --------------------------------------------------------------------------------------------"

# Truck
python render.py -m output/Truck_around_30K_pcd_from_SFM/
python metrics.py -m output/Truck_around_30K_pcd_from_SFM/
echo "Truck done --------------------------------------------------------------------------------------------"


Here is an update about the missing part of the microphone in 3DGS.
In the first experiment set, I only played with the minimum threshold of pruning points.
5e-3 (default value): we see the microphone wire has some missing parts (PSNR = 19.9792385)
1e-3: Still, we see the missing parts in the wire (PSNR = 19.9495735)
