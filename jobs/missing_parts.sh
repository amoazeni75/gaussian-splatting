cd ..
# activate conda environment 
source activate gaussian_splatting


export CUDA_VISIBLE_DEVICES=1
python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/mic/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/mic/random_30000_points3d.txt --model_path output/mic_around_30K_pcd_from_SFM_less_prune_1e-3 --eval --white_background --width_load 800 --height_load 800 --pcd_size 30000 --max_densify 0.1 --min_opacity 1e-3
python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/mic/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/mic/random_30000_points3d.txt --model_path output/mic_around_30K_pcd_from_SFM_less_prune_1e-4 --eval --white_background --width_load 800 --height_load 800 --pcd_size 30000 --max_densify 0.1 --min_opacity 1e-4
python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/mic/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/mic/random_30000_points3d.txt --model_path output/mic_around_30K_pcd_from_SFM_less_prune_5e-4 --eval --white_background --width_load 800 --height_load 800 --pcd_size 30000 --max_densify 0.1 --min_opacity 5e-4
python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/mic/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/mic/random_30000_points3d.txt --model_path output/mic_around_30K_pcd_from_SFM_less_prune_9e-4 --eval --white_background --width_load 800 --height_load 800 --pcd_size 30000 --max_densify 0.1 --min_opacity 9e-4
python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/mic/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/mic/random_30000_points3d.txt --model_path output/mic_around_30K_pcd_from_SFM_no_prune --eval --white_background --width_load 800 --height_load 800 --pcd_size 30000 --max_densify 0.1 --min_opacity 0.0
python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/mic/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/mic/random_30000_points3d.txt --model_path output/mic_around_30K_pcd_from_SFM_less_prune_5e-3 --eval --white_background --width_load 800 --height_load 800 --pcd_size 30000 --max_densify 0.1 --min_opacity 5e-3
python train.py -s /NAS/samp8/datasets/nerf_synthetic_colmap/mic/  --random_pcd_path /NAS/samp8/datasets/nerf_synthetic_colmap/mic/random_30000_points3d.txt --model_path output/mic_around_30K_pcd_from_SFM_less_prune_1e-2 --eval --white_background --width_load 800 --height_load 800 --pcd_size 30000 --max_densify 0.1 --min_opacity 1e-2


python render.py -m output/mic_around_30K_pcd_from_SFM_less_prune_1e-3/
python render.py -m output/mic_around_30K_pcd_from_SFM_less_prune_1e-4/
python render.py -m output/mic_around_30K_pcd_from_SFM_less_prune_5e-4/
python render.py -m output/mic_around_30K_pcd_from_SFM_less_prune_9e-4/
python render.py -m output/mic_around_30K_pcd_from_SFM_no_prune/
python render.py -m output/mic_around_30K_pcd_from_SFM_less_prune_5e-3/
python render.py -m output/mic_around_30K_pcd_from_SFM_less_prune_1e-2/

python metrics.py -m output/mic_around_30K_pcd_from_SFM_less_prune_1e-3/
python metrics.py -m output/mic_around_30K_pcd_from_SFM_less_prune_1e-4/
python metrics.py -m output/mic_around_30K_pcd_from_SFM_less_prune_5e-4/
python metrics.py -m output/mic_around_30K_pcd_from_SFM_less_prune_9e-4/
python metrics.py -m output/mic_around_30K_pcd_from_SFM_no_prune/
python metrics.py -m output/mic_around_30K_pcd_from_SFM_less_prune_5e-3/
python metrics.py -m output/mic_around_30K_pcd_from_SFM_less_prune_1e-2/



