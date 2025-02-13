# 🚗 Double Lane Change Data Processing in MATLAB

This repository contains a MATLAB script for processing and analyzing **Double Lane Change (DLC) experiment data**.  
The script extracts **vehicle trajectory, velocity, effort, time, and error metrics** from a Simulink simulation and visualizes the results.

---

## 📦 Features

✅ **Reference Path Generation**  
- Generates a reference trajectory for a double lane change.  
- Defines **left and right boundary cones** for the track.

✅ **Vehicle Data Extraction**  
- Loads **vehicle position, velocity, and yaw angle** from Simulink logs.  
- Computes derived metrics such as **velocity change and angular deviation**.

✅ **Performance Analysis**  
- Measures **Root Mean Square Error (RMSE)** from the reference path.  
- Computes **effort** based on steering angle changes.  
- Counts the number of **boundary cone violations**.

✅ **Data Visualization**  
- Plots **vehicle trajectory** along with lane boundaries.  
- Generates **histograms** for error distribution.

✅ **Data Saving**  
- Saves processed experiment results (**Time, Error, Effort, Velocity**) in `.mat` format.

---

📊 Output Data Structure
The script outputs the following variables:

Variable	Description
Time	Elapsed time during the experiment
Error	RMSE (Root Mean Square Error) of the vehicle's path
Effort	Cumulative steering effort
Velocity	Average vehicle speed
conerxcnt	Number of cone boundary violations
