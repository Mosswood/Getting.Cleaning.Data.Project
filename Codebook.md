<p>Study design:</p>

<p>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. </p>

<p>The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. </p>

<p>The final data set shows the average of each variable for each activity and each subject.</p>

<p>Notes: </p>

<p>======</p>

<p>- Features are normalized and bounded within [-1,1].</p>

<p>Code book: </p>

<p>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAccelerometer-XYZ and timeGyroscope-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAccelerometer-XYZ and timeGravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. </p>

<p>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerometerJerk-XYZ and timeBodyGyroscopeJerk-XYZ). Also the agnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerometerMag, timeGravityAccelerometerMag, timeBodyAccelerometerJerkMag, timeBodyGyrscopeoMag, timeBodyGyroscopeJerkMag). </p>

<p>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAccelerometer-XYZ, frequencyBodyAccelerometerJerk-XYZ, frequencyBodyGyroscope-XYZ, frequencyBodyAccelerometerJerkMag, frequencyBodyGyroscopeMag, frequencyBodyGyroscopeJerkMag. </p>

<p>These signals were used to estimate variables of the feature vector for each pattern:'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.</p>

<p>mean(): Mean value</p>

<p>std(): Standard deviation</p>

<p>Subject.Num: The number corresponding to 1 of 30 subjects</p>

<p>Activity: The activity performed</p>

<p>Column Number Column Name</p>

<p>1 Subject.Num</p>

<p>2 Activity</p>

<p>3 timeBodyAccelerometer-mean()-X</p>

<p>4 timeBodyAccelerometer-mean()-Y</p>

<p>5 timeBodyAccelerometer-mean()-Z</p>

<p>6 timeBodyAccelerometer-std()-X</p>

<p>7 timeBodyAccelerometer-std()-Y</p>

<p>8 timeBodyAccelerometer-std()-Z</p>

<p>9 timeGravityAccelerometer-mean()-X</p>

<p>10 timeGravityAccelerometer-mean()-Y</p>

<p>11 timeGravityAccelerometer-mean()-Z</p>

<p>12 timeGravityAccelerometer-std()-X</p>

<p>13 timeGravityAccelerometer-std()-Y</p>

<p>14 timeGravityAccelerometer-std()-Z</p>

<p>15 timeBodyAccelerometerJerk-mean()-X</p>

<p>16 timeBodyAccelerometerJerk-mean()-Y</p>

<p>17 timeBodyAccelerometerJerk-mean()-Z</p>

<p>18 timeBodyAccelerometerJerk-std()-X</p>

<p>19 timeBodyAccelerometerJerk-std()-Y</p>

<p>20 timeBodyAccelerometerJerk-std()-Z</p>

<p>21 timeBodyGyroscope-mean()-X</p>

<p>22 timeBodyGyroscope-mean()-Y</p>

<p>23 timeBodyGyroscope-mean()-Z</p>

<p>24 timeBodyGyroscope-std()-X</p>

<p>25 timeBodyGyroscope-std()-Y</p>

<p>26 timeBodyGyroscope-std()-Z</p>

<p>27 timeBodyGyroscopeJerk-mean()-X</p>

<p>28 timeBodyGyroscopeJerk-mean()-Y</p>

<p>29 timeBodyGyroscopeJerk-mean()-Z</p>

<p>30 timeBodyGyroscopeJerk-std()-X</p>

<p>31 timeBodyGyroscopeJerk-std()-Y</p>

<p>32 timeBodyGyroscopeJerk-std()-Z</p>

<p>33 timeBodyAccelerometerMagnitude-mean()</p>

<p>34 timeBodyAccelerometerMagnitude-std()</p>

<p>35 timeGravityAccelerometerMagnitude-mean()</p>

<p>36 timeGravityAccelerometerMagnitude-std()</p>

<p>37 timeBodyAccelerometerJerkMagnitude-mean()</p>

<p>38 timeBodyAccelerometerJerkMagnitude-std()</p>

<p>39 timeBodyGyroscopeMagnitude-mean()</p>

<p>40 timeBodyGyroscopeMagnitude-std()</p>

<p>41 timeBodyGyroscopeJerkMagnitude-mean()</p>

<p>42 timeBodyGyroscopeJerkMagnitude-std()</p>

<p>43 frequencyBodyAccelerometer-mean()-X</p>

<p>44 frequencyBodyAccelerometer-mean()-Y</p>

<p>45 frequencyBodyAccelerometer-mean()-Z</p>

<p>46 frequencyBodyAccelerometer-std()-X</p>

<p>47 frequencyBodyAccelerometer-std()-Y</p>

<p>48 frequencyBodyAccelerometer-std()-Z</p>

<p>49 frequencyBodyAccelerometerJerk-mean()-X</p>

<p>50 frequencyBodyAccelerometerJerk-mean()-Y</p>

<p>51 frequencyBodyAccelerometerJerk-mean()-Z</p>

<p>52 frequencyBodyAccelerometerJerk-std()-X</p>

<p>53 frequencyBodyAccelerometerJerk-std()-Y</p>

<p>54 frequencyBodyAccelerometerJerk-std()-Z</p>

<p>55 frequencyBodyGyroscope-mean()-X</p>

<p>56 frequencyBodyGyroscope-mean()-Y</p>

<p>57 frequencyBodyGyroscope-mean()-Z</p>

<p>58 frequencyBodyGyroscope-std()-X</p>

<p>59 frequencyBodyGyroscope-std()-Y</p>

<p>60 frequencyBodyGyroscope-std()-Z</p>

<p>61 frequencyBodyAccelerometerMagnitude-mean()</p>

<p>62 frequencyBodyAccelerometerMagnitude-std()</p>

<p>63 frequencyBodyAccelerometerJerkMagnitude-mean()</p>

<p>64 frequencyBodyAccelerometerJerkMagnitude-std()</p>

<p>65 frequencyBodyGyroscopeMagnitude-mean()</p>

<p>66 frequencyBodyGyroscopeMagnitude-std()</p>

<p>67 frequencyBodyGyroscopeJerkMagnitude-mean()</p>

<p>68 frequencyBodyGyroscopeJerkMagnitude-std()</p>
