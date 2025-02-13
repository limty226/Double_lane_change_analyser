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

## 📊 Output Data Structure

The script outputs the following variables:

| Variable   | Description                                          |
|------------|------------------------------------------------------|
| `Time`     | Elapsed time during the experiment                  |
| `Error`    | RMSE (Root Mean Square Error) of the vehicle's path |
| `Effort`   | Cumulative steering effort                          |
| `Velocity` | Average vehicle speed                               |
| `conerxcnt` | Number of cone boundary violations                  |

---

📈 Example Visualization

🚀 Trajectory Visualization

📊 Error Distribution Histogram

---

🤝 Acknowledgments
This work was developed as part of a teleoperation performance analysis study. If you find this repository useful, please consider citing or contributing.

---

## 📜 License

Double Lane Change License  

Copyright (c) 2025 limty226 

Permission is hereby granted, free of charge, to any person obtaining a copy  
of this software and associated documentation files (the "Software"), to deal  
in the Software without restriction, including without limitation the rights  
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell  
copies of the Software, and to permit persons to whom the Software is  
furnished to do so, subject to the following conditions:  

The above copyright notice and this permission notice shall be included  
in all copies or substantial portions of the Software.  

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,  
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL  
THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER  
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING  
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER  
DEALINGS IN THE SOFTWARE.

