# Power System Analysis: Gauss-Seidel and Newton-Raphson Methods

This repository contains MATLAB codes and Simulink models demonstrating power flow analysis using the Gauss-Seidel and Newton-Raphson iterative methods.  The implementations are applied to the standard IEEE 14-bus and 30-bus test systems, providing practical examples of these fundamental power system analysis techniques.


## Project Overview

This project aims to provide a clear and accessible implementation of two common power flow solution methods.  It's designed to be educational, allowing users to understand the underlying algorithms and their application to real-world power systems.  Both MATLAB scripts and Simulink models are included for a comprehensive learning experience.

## Requirements

* **MATLAB:**  A properly licensed installation of MATLAB is required to run the code and Simulink models.
* **Simulink:** The Simulink toolbox is necessary for executing the Simulink models.
* **[Optional Toolboxes]:** List any additional toolboxes needed (if any).


## Usage Instructions

Detailed instructions on how to use the MATLAB scripts and Simulink models are provided within the code comments and model documentation.  Generally, you will need to run the appropriate script or open the relevant Simulink model within the MATLAB environment.  The scripts may require input data files specifying the network topology and parameters which, if not included directly, will be referenced in the comments.


## Results & Output

The scripts and models produce standard power flow analysis results, including:

* **Bus Voltages:** Magnitude and phase angle of voltage at each bus.
* **Real and Reactive Power:**  Real and reactive power injections at each bus.
* **Line Flows:** Real and reactive power flow on each transmission line.
* **Line Losses:** Total power losses in the transmission network.

