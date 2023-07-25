
CUDA_VISIBLE_DEVICES=1

# lego: A5
python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/lego/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/lego/random_sphere_points3d.txt --model_path output/lego --eval --white_background --width_load 800 --height_load 800

# chair: A5
python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/chair/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/chair/random_sphere_points3d.txt --model_path output/chair --eval --white_background --width_load 800 --height_load 800

# drums: A5
 python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/drums/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/drums/random_sphere_points3d.txt --model_path output/drums --eval --white_background --width_load 800 --height_load 800

# ficus: A5
python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/ficus/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/ficus/random_sphere_points3d.txt --model_path output/ficus --eval --white_background --width_load 800 --height_load 800

# hotdog
python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/hotdog/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/hotdog/random_sphere_points3d.txt --model_path output/hotdog --eval --white_background --width_load 800 --height_load 800

# materials
python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/materials/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/materials/random_sphere_points3d.txt --model_path output/materials --eval --white_background --width_load 800 --height_load 800

# ship
python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/ship/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/ship/random_sphere_points3d.txt --model_path output/ship --eval --white_background --width_load 800 --height_load 800

# mic
python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/mic/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/mic/random_sphere_points3d.txt --model_path output/mic --eval --white_background --width_load 800 --height_load 800

# Family
python train.py -s /NAS/samp8/datasets/TanksAndTemple_colmap/Family/  --random_pcd_path /NAS/samp8/datasets/TanksAndTemple_colmap/Family/random_sphere_points3d.txt --model_path output/Family --eval --white_background --width_load 1088 --height_load 640

# Barn
python train.py -s /NAS/samp8/datasets/TanksAndTemple_colmap/Barn/  --random_pcd_path /NAS/samp8/datasets/TanksAndTemple_colmap/Barn/random_sphere_points3d.txt --model_path output/Barn --eval --white_background --width_load 1088 --height_load 640

# Catepillar
python train.py -s /NAS/samp8/datasets/TanksAndTemple_colmap/Catepillar/  --random_pcd_path /NAS/samp8/datasets/TanksAndTemple_colmap/Catepillar/random_sphere_points3d.txt --model_path output/Catepillar --eval --white_background --width_load 1088 --height_load 640

# Ignatius
python train.py -s /NAS/samp8/datasets/TanksAndTemple_colmap/Ignatius/  --random_pcd_path /NAS/samp8/datasets/TanksAndTemple_colmap/Ignatius/random_sphere_points3d.txt --model_path output/Ignatius --eval --white_background --width_load 1088 --height_load 640

# Truck
python train.py -s /NAS/samp8/datasets/TanksAndTemple_colmap/Truck/  --random_pcd_path /NAS/samp8/datasets/TanksAndTemple_colmap/Truck/random_sphere_points3d.txt --model_path output/Truck --eval --white_background --width_load 1088 --height_load 640

