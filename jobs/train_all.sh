cd ..
source activate gaussian_splatting

export CUDA_VISIBLE_DEVICES=1

# lego: A5
python pcd_generation.py --dataset_type nerf_synthetic_colmap --root /NAS/samp8/datasets/nerf_synthetic_colmap/lego/ --pcd_size 30000

# allowing to densify and prune without a threshold
# python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/lego/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/lego/random_sphere_points3d.txt --model_path output/lego_densify_prune_indefinite --eval --white_background --width_load 800 --height_load 800

# fixing the point cloud to 30k points
# python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/lego/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/lego/sphere_points3d_30000.txt --model_path output/lego_fix_30K_pcd_from_sphere --eval --white_background --width_load 800 --height_load 800 --percent_dense 0.0 --densification_interval 0 --densify_from_iter -1 --densify_until_iter -1

# allowing densify and pruning with a threshold of 0.1
python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/lego/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/lego/random_30000_points3d.txt --model_path output/lego_around_30K_pcd_from_SFM --eval --white_background --width_load 800 --height_load 800 --pcd_size 30000 --max_densify 0.1

# train with 1k points + fixed pcd size + from sphere
# python pcd_generation.py --dataset_type nerf_synthetic_colmap --root /NAS/samp8/datasets/nerf_synthetic_colmap/lego/ --pcd_size 1000
# python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/lego/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/lego/sphere_points3d_1000.txt --model_path output/lego_fix_1K_pcd_from_sphere_lr_1e-3_1e-5 --eval --white_background --width_load 800 --height_load 800 --percent_dense 0.0 --densification_interval 0 --densify_from_iter -1 --densify_until_iter -1 --pcd_size 1000 --max_densify 0.0 --pcd_save_interval 1 --position_lr_init 1e-3 --position_lr_final 1e-5 

echo "lego done --------------------------------------------------------------------------------------------"

# chair: A5
python pcd_generation.py --dataset_type nerf_synthetic_colmap --root /NAS/samp8/datasets/nerf_synthetic_colmap/chair/ --pcd_size 30000

# allowing to densify and prune without a threshold
# python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/chair/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/chair/random_sphere_points3d.txt --model_path output/chair_densify_prune_indefinite --eval --white_background --width_load 800 --height_load 800

# fixing the point cloud to 30k points
# python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/chair/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/chair/sphere_points3d_30000.txt --model_path output/chair_fix_30K_pcd_from_sphere --eval --white_background --width_load 800 --height_load 800 --percent_dense 0.0 --densification_interval 0 --densify_from_iter -1 --densify_until_iter -1

# allowing densify and pruning with a threshold of 0.1
python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/chair/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/chair/random_30000_points3d.txt --model_path output/chair_around_30K_pcd_from_SFM --eval --white_background --width_load 800 --height_load 800 --pcd_size 30000 --max_densify 0.1
echo "chair done --------------------------------------------------------------------------------------------"

# drums: A5
python pcd_generation.py --dataset_type nerf_synthetic_colmap --root /NAS/samp8/datasets/nerf_synthetic_colmap/drums/ --pcd_size 30000

# allowing to densify and prune without a threshold
# python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/drums/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/drums/random_sphere_points3d.txt --model_path output/drums_densify_prune_indefinite --eval --white_background --width_load 800 --height_load 800

# fixing the point cloud to 30k points
# python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/drums/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/drums/sphere_points3d_30000.txt --model_path output/drums_fix_30K_pcd_from_sphere --eval --white_background --width_load 800 --height_load 800 --percent_dense 0.0 --densification_interval 0 --densify_from_iter -1 --densify_until_iter -1

# allowing densify and pruning with a threshold of 0.1
python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/drums/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/drums/random_30000_points3d.txt --model_path output/drums_around_30K_pcd_from_SFM --eval --white_background --width_load 800 --height_load 800 --pcd_size 30000 --max_densify 0.1
echo "drums done --------------------------------------------------------------------------------------------"

# ficus: A5
python pcd_generation.py --dataset_type nerf_synthetic_colmap --root /NAS/samp8/datasets/nerf_synthetic_colmap/ficus/ --pcd_size 30000

# allowing to densify and prune without a threshold
# python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/ficus/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/ficus/random_sphere_points3d.txt --model_path output/ficus_densify_prune_indefinite --eval --white_background --width_load 800 --height_load 800

# fixing the point cloud to 30k points
# python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/ficus/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/ficus/sphere_points3d_30000.txt --model_path output/ficus_fix_30K_pcd_from_sphere --eval --white_background --width_load 800 --height_load 800 --percent_dense 0.0 --densification_interval 0 --densify_from_iter -1 --densify_until_iter -1

# allowing densify and pruning with a threshold of 0.1
python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/ficus/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/ficus/random_30000_points3d.txt --model_path output/ficus_around_30K_pcd_from_SFM --eval --white_background --width_load 800 --height_load 800 --pcd_size 30000 --max_densify 0.1
echo "ficus done --------------------------------------------------------------------------------------------"

# hotdog
python pcd_generation.py --dataset_type nerf_synthetic_colmap --root /NAS/samp8/datasets/nerf_synthetic_colmap/hotdog/ --pcd_size 30000

# allowing to densify and prune without a threshold
# python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/hotdog/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/hotdog/random_sphere_points3d.txt --model_path output/hotdog_densify_prune_indefinite --eval --white_background --width_load 800 --height_load 800

# fixing the point cloud to 30k points
# python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/hotdog/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/hotdog/sphere_points3d_30000.txt --model_path output/hotdog_fix_30K_pcd_from_sphere --eval --white_background --width_load 800 --height_load 800 --percent_dense 0.0 --densification_interval 0 --densify_from_iter -1 --densify_until_iter -1

# allowing densify and pruning with a threshold of 0.1
python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/hotdog/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/hotdog/random_30000_points3d.txt --model_path output/hotdog_around_30K_pcd_from_SFM --eval --white_background --width_load 800 --height_load 800 --pcd_size 30000 --max_densify 0.1
echo "hotdog done --------------------------------------------------------------------------------------------"

# materials
python pcd_generation.py --dataset_type nerf_synthetic_colmap --root /NAS/samp8/datasets/nerf_synthetic_colmap/materials/ --pcd_size 30000

# allowing to densify and prune without a threshold
# python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/materials/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/materials/random_sphere_points3d.txt --model_path output/materials_densify_prune_indefinite --eval --white_background --width_load 800 --height_load 800

# fixing the point cloud to 30k points
# python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/materials/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/materials/sphere_points3d_30000.txt --model_path output/materials_fix_30K_pcd_from_sphere --eval --white_background --width_load 800 --height_load 800 --percent_dense 0.0 --densification_interval 0 --densify_from_iter -1 --densify_until_iter -1

# allowing densify and pruning with a threshold of 0.1
python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/materials/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/materials/random_30000_points3d.txt --model_path output/materials_around_30K_pcd_from_SFM --eval --white_background --width_load 800 --height_load 800 --pcd_size 30000 --max_densify 0.1
echo "materials done --------------------------------------------------------------------------------------------"

# ship
python pcd_generation.py --dataset_type nerf_synthetic_colmap --root /NAS/samp8/datasets/nerf_synthetic_colmap/ship/ --pcd_size 30000

# allowing to densify and prune without a threshold
# python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/ship/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/ship/random_sphere_points3d.txt --model_path output/ship_densify_prune_indefinite --eval --white_background --width_load 800 --height_load 800

# fixing the point cloud to 30k points
# python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/ship/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/ship/sphere_points3d_30000.txt --model_path output/ship_fix_30K_pcd_from_sphere --eval --white_background --width_load 800 --height_load 800 --percent_dense 0.0 --densification_interval 0 --densify_from_iter -1 --densify_until_iter -1

# allowing densify and pruning with a threshold of 0.1
python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/ship/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/ship/random_30000_points3d.txt --model_path output/ship_around_30K_pcd_from_SFM --eval --white_background --width_load 800 --height_load 800 --pcd_size 30000 --max_densify 0.1
python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/ship/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/ship/random_30000_points3d.txt --model_path output/ship_around_30K_pcd_from_SFM_less_prune --eval --white_background --width_load 800 --height_load 800 --pcd_size 30000 --max_densify 0.1 --min_opacity 0.001

echo "ship done --------------------------------------------------------------------------------------------"

# mic
python pcd_generation.py --dataset_type nerf_synthetic_colmap --root /NAS/samp8/datasets/nerf_synthetic_colmap/mic/ --pcd_size 30000

# allowing to densify and prune without a threshold
# python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/mic/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/mic/random_sphere_points3d.txt --model_path output/mic_densify_prune_indefinite --eval --white_background --width_load 800 --height_load 800

# fixing the point cloud to 30k points
# python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/mic/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/mic/sphere_points3d_30000.txt --model_path output/mic_fix_30K_pcd_from_sphere --eval --white_background --width_load 800 --height_load 800 --percent_dense 0.0 --densification_interval 0 --densify_from_iter -1 --densify_until_iter -1

# allowing densify and pruning with a threshold of 0.1
python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/mic/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/mic/random_30000_points3d.txt --model_path output/mic_around_30K_pcd_from_SFM --eval --white_background --width_load 800 --height_load 800 --pcd_size 30000 --max_densify 0.1
python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/mic/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/mic/random_30000_points3d.txt --model_path output/mic_around_30K_pcd_from_SFM_less_prune_1e-3 --eval --white_background --width_load 800 --height_load 800 --pcd_size 30000 --max_densify 0.1 --min_opacity 0.001

echo "mic done --------------------------------------------------------------------------------------------"

# Family
python pcd_generation.py --dataset_type tanksandtemples --root /NAS/samp8/datasets/TanksAndTemple_colmap/Family/ --pcd_size 30000

# allowing to densify and prune without a threshold
# python train.py -s /NAS/samp8/datasets/TanksAndTemple_colmap/Family/  --random_pcd_path /NAS/samp8/datasets/TanksAndTemple_colmap/Family/random_sphere_points3d.txt --model_path output/Family_densify_prune_indefinite --eval --white_background

# fixing the point cloud to 30k points
# python train.py -s /NAS/samp8/datasets/TanksAndTemple_colmap/Family/  --random_pcd_path /NAS/samp8/datasets/TanksAndTemple_colmap/Family/sphere_points3d_30000.txt --model_path output/Family_fix_30K_pcd_from_sphere --eval --white_background --percent_dense 0.0 --densification_interval 0 --densify_from_iter -1 --densify_until_iter -1

# allowing densify and pruning with a threshold of 0.1
python train.py -s /NAS/samp8/datasets/TanksAndTemple_colmap/Family/  --random_pcd_path /NAS/samp8/datasets/TanksAndTemple_colmap/Family/random_30000_points3d.txt --model_path output/Family_around_30K_pcd_from_SFM --eval --white_background --pcd_size 30000 --max_densify 0.1
echo "Family done --------------------------------------------------------------------------------------------"

# Barn
python pcd_generation.py --dataset_type tanksandtemples --root /NAS/samp8/datasets/TanksAndTemple_colmap/Barn/ --pcd_size 30000

# allowing to densify and prune without a threshold
# python train.py -s /NAS/samp8/datasets/TanksAndTemple_colmap/Barn/  --random_pcd_path /NAS/samp8/datasets/TanksAndTemple_colmap/Barn/random_sphere_points3d.txt --model_path output/Barn_densify_prune_indefinite --eval --white_background

# fixing the point cloud to 30k points
# python train.py -s /NAS/samp8/datasets/TanksAndTemple_colmap/Barn/  --random_pcd_path /NAS/samp8/datasets/TanksAndTemple_colmap/Barn/sphere_points3d_30000.txt --model_path output/Barn_fix_30K_pcd_from_sphere --eval --white_background --percent_dense 0.0 --densification_interval 0 --densify_from_iter -1 --densify_until_iter -1

# allowing densify and pruning with a threshold of 0.1
python train.py -s /NAS/samp8/datasets/TanksAndTemple_colmap/Barn/  --random_pcd_path /NAS/samp8/datasets/TanksAndTemple_colmap/Barn/random_30000_points3d.txt --model_path output/Barn_around_30K_pcd_from_SFM --eval --white_background --pcd_size 30000 --max_densify 0.1
echo "Barn done --------------------------------------------------------------------------------------------"

# Caterpillar
python pcd_generation.py --dataset_type tanksandtemples --root /NAS/samp8/datasets/TanksAndTemple_colmap/Caterpillar/ --pcd_size 30000

# allowing to densify and prune without a threshold
# python train.py -s /NAS/samp8/datasets/TanksAndTemple_colmap/Caterpillar/  --random_pcd_path /NAS/samp8/datasets/TanksAndTemple_colmap/Caterpillar/random_sphere_points3d.txt --model_path output/Caterpillar_densify_prune_indefinite --eval --white_background

# fixing the point cloud to 30k points
# python train.py -s /NAS/samp8/datasets/TanksAndTemple_colmap/Caterpillar/  --random_pcd_path /NAS/samp8/datasets/TanksAndTemple_colmap/Caterpillar/sphere_points3d_30000.txt --model_path output/Caterpillar_fix_30K_pcd_from_sphere --eval --white_background --percent_dense 0.0 --densification_interval 0 --densify_from_iter -1 --densify_until_iter -1

# allowing densify and pruning with a threshold of 0.1
python train.py -s /NAS/samp8/datasets/TanksAndTemple_colmap/Caterpillar/  --random_pcd_path /NAS/samp8/datasets/TanksAndTemple_colmap/Caterpillar/random_30000_points3d.txt --model_path output/Caterpillar_around_30K_pcd_from_SFM --eval --white_background --pcd_size 30000 --max_densify 0.1
echo "Caterpillar done --------------------------------------------------------------------------------------------"

# Ignatius
python pcd_generation.py --dataset_type tanksandtemples --root /NAS/samp8/datasets/TanksAndTemple_colmap/Ignatius/ --pcd_size 30000

# allowing to densify and prune without a threshold
# python train.py -s /NAS/samp8/datasets/TanksAndTemple_colmap/Ignatius/  --random_pcd_path /NAS/samp8/datasets/TanksAndTemple_colmap/Ignatius/random_sphere_points3d.txt --model_path output/Ignatius_densify_prune_indefinite --eval --white_background

# fixing the point cloud to 30k points
# python train.py -s /NAS/samp8/datasets/TanksAndTemple_colmap/Ignatius/  --random_pcd_path /NAS/samp8/datasets/TanksAndTemple_colmap/Ignatius/sphere_points3d_30000.txt --model_path output/Ignatius_fix_30K_pcd_from_sphere --eval --white_background --percent_dense 0.0 --densification_interval 0 --densify_from_iter -1 --densify_until_iter -1

# allowing densify and pruning with a threshold of 0.1
python train.py -s /NAS/samp8/datasets/TanksAndTemple_colmap/Ignatius/  --random_pcd_path /NAS/samp8/datasets/TanksAndTemple_colmap/Ignatius/random_30000_points3d.txt --model_path output/Ignatius_around_30K_pcd_from_SFM --eval --white_background --pcd_size 30000 --max_densify 0.1
echo "Ignatius done --------------------------------------------------------------------------------------------"

# Truck
python pcd_generation.py --dataset_type tanksandtemples --root /NAS/samp8/datasets/TanksAndTemple_colmap/Truck/ --pcd_size 30000

# allowing to densify and prune without a threshold
# python train.py -s /NAS/samp8/datasets/TanksAndTemple_colmap/Truck/  --random_pcd_path /NAS/samp8/datasets/TanksAndTemple_colmap/Truck/random_sphere_points3d.txt --model_path output/Truck_densify_prune_indefinite --eval --white_background

# fixing the point cloud to 30k points
# python train.py -s /NAS/samp8/datasets/TanksAndTemple_colmap/Truck/  --random_pcd_path /NAS/samp8/datasets/TanksAndTemple_colmap/Truck/sphere_points3d_30000.txt --model_path output/Truck_fix_30K_pcd_from_sphere --eval --white_background --percent_dense 0.0 --densification_interval 0 --densify_from_iter -1 --densify_until_iter -1

# allowing densify and pruning with a threshold of 0.1
python train.py -s /NAS/samp8/datasets/TanksAndTemple_colmap/Truck/  --random_pcd_path /NAS/samp8/datasets/TanksAndTemple_colmap/Truck/random_30000_points3d.txt --model_path output/Truck_around_30K_pcd_from_SFM --eval --white_background --pcd_size 30000 --max_densify 0.1
echo "Truck done --------------------------------------------------------------------------------------------"

