# TinySurf

TinySurf is a simple movement based video game inspired by CS 1.6 / Source / CS:GO. 

## Download

You can find the latest release of TinySurf [here](https://github.com/m0rsim4rsi/tinysurf/releases).

## Creating your own TinySurf map

You can create a map for TinySurf using **Blender**, or any 3D modeling software with **glTF** support. Follow these instructions before exporting your map:

1. Add an empty 3D object with name `MAP_START` to denote the player spawn point, and `MAP_END` to denote the finish line.

2. Any collision geometry must include the suffix `_col`. This [tells](https://docs.godotengine.org/en/stable/tutorials/assets_pipeline/importing_3d_scenes/node_type_customization.html#create-collisions-col-convcol-colonly-convcolonly) the Godot engine to automatically build a collision mesh from your geometry, including ramps, floors, walls or anything the player cannot move through. 

3. Export your map as a binary glTF container (.glb).

4. (Optional) Create a `metadata.json` to provide additional information about your map.

5. (Optional) Take a screenshot of your map and save it to `screenshot.jpg`. The image should be 1920x1080.

6. Place your new map under `/maps`. See folder layout below.

#### Folder layout example

```text
tinysurf
    /maps
        /my-map
            - MyMap.glb
            - metadata.json
            - screenshot.jpg
```

#### Metadata format (JSON)

```
Field           Type        Description
name            string      The name of the map.
author          string      The map author's name.
description     string      A short description of the map.
difficulty      int         Difficulty level (1-5)
```
