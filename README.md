# Second-Order Sliding-Mode-Based Frequency Locked Loop (SOSF FLL) for Grid Synchronization (MATLAB/Simulink)

This repository provides a MATLAB/Simulink implementation of a Second-Order Sliding-Mode-Based Frequency Locked Loop (SOSF FLL) for grid synchronization.  This robust control strategy offers improved performance compared to traditional Phase-Locked Loops (PLLs), particularly in the presence of noise and disturbances common in power systems.

## Project Overview

This project delivers a practical and readily understandable Simulink model of an SOSF FLL, suitable for educational and research purposes.  The model is designed to be modular and adaptable, allowing users to easily modify parameters and explore different grid scenarios.  The focus is on providing a clear demonstration of the algorithm's functionality and its advantages in challenging grid conditions.

## Key Features

* **Second-Order Sliding Mode Control:**  Employs a second-order sliding mode controller for robust frequency estimation, even with significant noise and disturbances.
* **Simulink Implementation:**  The algorithm is implemented as a Simulink model for easy simulation and analysis.
* **Parameter Tuning:** The model allows for flexible parameter adjustment to optimize performance based on specific grid conditions and requirements.
* **Detailed Visualization:**  Includes comprehensive visualization capabilities to monitor key signals and system behavior.
* **Robustness Demonstration:**  The model is designed to highlight the SOSF FLL's robustness against common grid disturbances, such as voltage sags and harmonics.

## Requirements

* **MATLAB:** A properly licensed installation of MATLAB is required.
* **Simulink:** The Simulink toolbox is essential for running the provided model.

## Usage Instructions

1. **Open the Simulink Model:** Open the `sosf_fll.slx` (or equivalent) file in MATLAB.
2. **Configure Parameters:** Adjust parameters in the Simulink model as needed.  Detailed descriptions of each parameter will be included within the model and/or documentation.
3. **Run the Simulation:** Start the Simulink simulation.
4. **Analyze Results:** Observe the simulation results displayed in the Simulink scope(s) and/or exported data.  Examine frequency estimation accuracy, response time, and robustness to disturbances.

## Results

The expected simulation results include accurate frequency tracking and phase synchronization under various grid conditions.  The model will demonstrate the SOSF FLL's superior performance in the face of noise and disturbances compared to traditional PLLs.  Quantifiable metrics, such as frequency estimation error and settling time, will be presented and discussed.



