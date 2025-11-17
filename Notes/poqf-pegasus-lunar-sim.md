# pegasus-lunar-sim

Resources for Francesco Spena

Task overview:
For evaluation of VSLAM and Visual Place Recognition tasks, we could make use of lunar-like scenario environments.
The ideal scenario would involve a quadruped with several RGB-D cameras mounted on the four sides (i.e., front, left, back, right) + imu + odometry,
however I doubt this will be feasible.

If quadrupeds are not available, a wheeled rover is also okay, however, **4 RGB-D outputs on all sides is mandatory**.

The output of this task can be embedded on a GitHub repository, which contains:

- **Minimum**: A README describing one or more (more options are better) simulator setups.
- **Preferred**: A directory of assets (i.e., Images), and one directory per simulator. Each directory should be equipped with a Dockerfile (for fast deployment) and corresponding configuration files (if any)

Some references are shown here:

1. [Lunar Autonomy Challenge](https://lunar-autonomy-challenge.jhuapl.edu/Challenge-Documentation/index.php), based on CARLA
2. [Omni LRS](https://github.com/OmniLRS/OmniLRS?tab=readme-ov-file)

## Suggestions

- Take it easy, don't go immediately too deep into the linked simulators. Try to search in the SOTA for other solutions, possibly recent (i.e., published from 2022 onward)
- **Very Important** Keep track of your notes and progresses using a Google Slides presentation (PowerPoint works too). **This is extremely important, even if often overlooked**. Keep relevant images, notes, faced problems, etc. It will make debugging and discussion phases 1000% faster and more informative.
- If you need resources or clarifications, ask us!
