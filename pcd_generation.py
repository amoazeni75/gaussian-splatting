import math
import os

import numpy as np
import open3d as o3d

# dataset = "nerf_synthetic_colmap"
dataset = "tanksandtemples"

if dataset == "nerf_synthetic_colmap":
    root = "/NAS/samp8/datasets/nerf_synthetic_colmap/"
else:
    root = "/NAS/samp8/datasets/TanksAndTemple_colmap/"

# list all directories in root directory
dirs = os.listdir(root)


def load_point_cloud(filename):
    pcd = o3d.io.read_point_cloud(filename)
    return np.asarray(pcd.points)


def save_point_cloud(filename, points):
    # save points to a text file
    # each row is in the format of x y z
    np.savetxt(filename, points, fmt="%f %f %f")


def save_point_cloud_ply(filename, points):
    pcd = o3d.geometry.PointCloud()
    pcd.points = o3d.utility.Vector3dVector(points)
    pcd.paint_uniform_color([1, 0, 0])
    o3d.io.write_point_cloud(filename, pcd)


def sphere_pc(center, num_pts, scale):
    xs, ys, zs = [], [], []
    phi = math.pi * (3.0 - math.sqrt(5.0))  # golden angle in radians
    for i in range(num_pts):
        y = 1 - (i / float(num_pts - 1)) * 2  # y goes from 1 to -1
        radius = math.sqrt(1 - y * y)  # radius at y
        theta = phi * i  # golden angle increment
        x = math.cos(theta) * radius
        z = math.sin(theta) * radius
        xs.append(x * scale[0] + center[0])
        ys.append(y * scale[1] + center[1])
        zs.append(z * scale[2] + center[2])
    points = np.stack([np.array(xs), np.array(ys), np.array(zs)], axis=-1)
    return points


# loop through all directories
for dir in dirs:
    if dataset == "nerf_synthetic_colmap":
        pcd_file = os.path.join(root, dir, "colmap_results/dense/fused.ply")
    else:
        pcd_file = os.path.join(root, dir, "points3d.ply")

    # load point cloud
    points = load_point_cloud(pcd_file)

    # compute center and scale
    center = np.mean(points, axis=0)

    if dataset == "nerf_synthetic_colmap":
        print(np.max(points, axis=0) - np.min(points, axis=0))
        scale = np.ones(3) * 0.7
    else:
        scale = np.max(points, axis=0) - np.min(points, axis=0)
        scale = np.max(scale) * np.ones(3) * 0.04

    # generate sphere point cloud
    sphere_points = sphere_pc(center, 30_000, scale)

    # save sphere point cloud
    save_point_cloud(
        os.path.join(root, dir, "random_sphere_points3d.txt"), sphere_points
    )
    save_point_cloud_ply(
        os.path.join(root, dir, "random_sphere_points3d.ply"), sphere_points
    )

    print(f"Generated sphere point cloud for {dir}")
    print(f"Center: {center}")
    print(f"Scale: {scale}")
    print(f"Number of points: {sphere_points.shape[0]}")
    print("*" * 80)
