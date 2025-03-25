# MobiVital

## Introduction
MobiVital is a 24-hour large-scale dataset collected from 12 subjects on vital signal sensing using IR-UWB radar. We also provide ground truth waveforms collected from wearable sensors, which are time-synchronized with the radar time series. This study is approved by UCLA IRB under IRB#23-000754. The full anonymized dataset is hosted on Zenodo following the protocol specified in the IRB documents.

## Public Link to the Dataset
https://doi.org/10.5281/zenodo.15022885

## Methodology
We select Ultra-wideband (UWB) radar as the RF media for its low energy consumption, fine-grained resolution, and availability in mobile devices. Volunteers were asked to sit in a private section in our lab, relax, and breathe normally. A laptop may be provided if the volunteers prefer to watch their recreational videos. We used a tripod-mounted or handheld UWB radar facing the volunteer at 1.5 meters away to sense the environment and collect a UWB radar response signal containing information about his/her chest movement, which can be used to extract vital signals like respiration and (maybe) heartbeat. We also collect accelerometer and gyroscope traces to estimate the handheld platform's movement. 

As ground truth, we collected respiration and heartbeat waveforms from wearable chest bands and finger clips. All the data is resampled and time-synchronized to form a dataset for RF-based human vital signal measurements using mobile devices. The final dataset contains no personally identifiable information, and we do not seek to make medical or healthcare inferences from the data. 

For full descriptions, please refer to our technical report on [ArXiv](https://www.arxiv.org/abs/2503.11064 "ArXiv").


## Processing Scripts

Run "read_parsed_data.m" in MATLAB.

Each data entry is a .csv table, with 1500 rows (timestamps) = 30 seconds x 50 Hz and 254 Columns. Columns 1-6 come from the IMU, where columns 1-3 are the x,y, and z axes from the accelerometer, and columns 4-6 are the x,y, and z axes of the gyroscope. Columns 7-12 are obsolete, they were supposed to be the translation and rotation of the sensing platform w.r.t an AprilTag affixed to a wall to the left of the sensor, calculated from a RealSense depth camera. Columns 13-252 are the UWB data, in which the first 120 columns are the in-phase (real part) of the data, and the remaining 120 columns are the quadrature (imagery part) of the data. Column 13 stands for the distance of 0.30 m from the sensor, and each column afterward adds 0.0514 m to the distance. You can typically find the object around bin 26, with a few exceptions. Column 253 is the ground truth respiration waveform, and column 254 is the ground truth blood pulse waveform.

## See Also
We also provide the code that can be used to reproduce some of the results in our published paper in this [GitHub repository](https://github.com/nesl/mobivital-public).

## Citations
> @article{wang2025mobivital,
  title={MobiVital: Self-supervised Time-series Quality Estimation for Contactless Respiration Monitoring Using UWB Radar},
  author={Wang, Ziqi and Hua, Derek and Jiang, Wenjun and Xing, Tianwei and Chen, Xun and Srivastava, Mani},
  journal={arXiv preprint arXiv:2503.11064},
  year={2025}
}

