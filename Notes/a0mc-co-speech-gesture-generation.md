# co-speech-gesture-generation

## Ideas

1. :Easy: Structured random (i.e., Perlin noise) joint-space motion modulated by speech intensity.
2. :Medium: Motion-captured gestures modulated by speech intensity.
3. :Harder: Generative text-voice to motion network for best results
4. `:Most immediate solution: Hardcode some animations grouped by emotion. During speech, run single animation from emotion pool`

## TODO Steps

<!-- 1. Understand steps to make the robot move. -->
<!-- 2. Learn how to fit a skeleton to the robot (does it need inverse kinematics ? hopefully not) -->
<!-- 3. Find resources for producing a trained neural model for text-voice to motion. -->
1. Dig unitree\_sdk2 robot client to understand how locomotion is performed

## References

1. Liu et. Al., [SemGes: Semantics-aware Co-Speech Gesture Generation using Semantic Coherence and Relevance Learning](https://arxiv.org/html/2507.19359v1https://arxiv.org/html/2507.19359v1)
2. [unitree_sdk2 high level locomotion client example](https://github.com/unitreerobotics/unitree_sdk2/blob/main/example/g1/high_level/g1_loco_client_example.cpp)

## [Unitree G1 Educational](https://www.unitree.com/g1)

Sensors:

- 3D LiDAR : Livox-Mid360
- Depth camera: RealSense D435i

Actuators:

- 23-43 (of which 7 per arm)
- TODO

## unitree_sdk2 client study

Main entrypoint of interest is [example/g1/high_level/g1_loco_client_example.cpp](https://github.com/unitreerobotics/unitree_sdk2/blob/main/example/g1/high_level/g1_loco_client_example.cpp)
Most important take-away is that most of the actions (or, more specifically, `tasks`) are not
explicitly shown.
Specifically, the robot state is modulated by a Finite State Machine (FSM) which can be queried via
`unitree::robot::g1::LocoClient::GetFsmId` or set via `unitree::robot::g1::LocoClient::SetFsmId`.
Notice that these functions just call an underlying method `unitree::robot::Client::Call` which directly interacts with the robot. The main point here is that **how the robot achieves such tasks is not documented nor described**.
