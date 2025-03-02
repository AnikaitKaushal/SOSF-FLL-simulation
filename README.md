# Second-Order Sequence Filter-Based Frequency Locked Loop (SOSF FLL) for Grid Synchronization (MATLAB/Simulink)

This repository provides a MATLAB/Simulink implementation of a Frequency Locked Loop (FLL) based on a second-order sequence filter for grid synchronization. This approach offers improved performance and robustness compared to traditional PLLs, especially in the presence of noise and disturbances frequently encountered in power systems.

## Project Overview

This project delivers a comprehensive and user-friendly Simulink model of the SOSF FLL, suitable for both educational and research purposes. The model is modular and designed for adaptability, allowing users to easily modify parameters and explore various grid scenarios.  The primary goal is to clearly demonstrate the algorithm's capabilities and its advantages over simpler synchronization techniques.

## Key Features

* **Second-Order Sequence Filter:**  Utilizes a second-order sequence filter for robust and accurate frequency estimation. This filter effectively suppresses noise and harmonics.
* **Simulink Implementation:** The entire algorithm is implemented within a well-structured and documented Simulink model for ease of simulation and analysis.
* **Parameter Tuning:**  The model allows for flexible parameter adjustment, enabling optimization for specific grid conditions and application requirements.
* **Comprehensive Visualization:**  Includes detailed visualization features to monitor key signals (e.g., grid voltage, frequency estimate, phase angle) and assess the system's dynamic behavior.
* **Robustness to Disturbances:**  The model is designed to showcase the FLL's robustness against various disturbances, such as voltage sags, harmonics, and noise, commonly present in real-world power grids.

## Requirements

* **MATLAB:** A licensed installation of MATLAB is required to run the Simulink model.
* **Simulink:** The Simulink toolbox is essential for executing the provided model.

## Results

The expected results will demonstrate accurate frequency tracking and phase synchronization under various grid conditions, including those with significant noise and disturbances.  The model will highlight the SOSF FLL's superior performance compared to less robust synchronization methods.  Quantitative metrics, such as frequency estimation error and settling time, will be presented and discussed.

