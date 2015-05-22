CodeBook tidy dataset HARUS

Source

The dataset is derived from the dataset "Human Activity Recognition Using Smartphones”.

This data set was originally made avaiable at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The used data was downloaded from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The naming convention for the data variables follows the industry standard Google style guide. In particular a period, ., is used to separate name components. 
To prevent the variable names from becoming too long the following abbreviations are incorporated into the names.
abbreviation	full name
t	            time domain
f	            frequency domain
body	       body fixed reference frame
gravity	     Earth fixed reference frame
acc	         accelerometer reading
gyro	       Gyroscope reading
mag	         Euclidean magnitude
std	         Standard Deviation

NOTE: As usual, features for machine learning algorithms are dimensionless and normalized to the range [-1,1].
Identifiers

There are two identifiers used to indicate the test person and the activity the test person was engaged in.

name	    type	     description
subject	  integer	   id assigned to the test person
activity	character	 activity the test person was performing

The raw data set contained 30 subjects each performing 6 activities.

Time Domain Signals
The time domain signals were captured at a rate of 50 Hz and filtered to remove noise. All time domain signals are prefixed by a single t.

Accelerometer Signals
In the raw data set accelerometer signals were split into a body part and a gravity part. The body part being further split into a smooth part and a jerk part.

Smooth Body Signals
name	                   type	    description
t.body.acc.mean.X	       numeric	mean X component
t.body.acc.std.X	       numeric	standard deviation X component
t.body.acc.mean.Y	       numeric	mean Y component
t.body.acc.std.Y	       numeric	standard deviation Y component
t.body.acc.mean.Z	       numeric	mean Z component
t.body.acc.std.Z	       numeric	standard deviation Z component
t.body.acc.mag.mean	     numeric	mean Euclidean magnitude
t.body.acc.mag.std	     numeric	standard deviation Euclidean magnitude

Jerk Signals
name	                    type	  description
t.body.acc.jerk.mean.X	  numeric	mean X component
t.body.acc.jerk.std.X	    numeric	standard deviation X component
t.body.acc.jerk.mean.Y	  numeric	mean Y component
t.body.acc.jerk.std.Y	    numeric	standard deviation Y component
t.body.acc.jerk.mean.Z	  numeric	mean Z component
t.body.acc.jerk.std.Z	    numeric	standard deviation Z component
t.body.acc.jerk.mag.mean	numeric	mean Euclidean magnitude
t.body.acc.jerk.mag.std	  numeric	standard deviation Euclidean magnitude

Smooth Gravity Signals
name	                    type	  description
t.gravity.acc.mean.X	    numeric	mean X component
t.gravity.acc.std.X	      numeric	standard deviation X component
t.gravity.acc.mean.Y	    numeric	mean Y component
t.gravity.acc.std.Y	      numeric	standard deviation Y component
t.gravity.acc.mean.Z	    numeric	mean Z component
t.gravity.acc.std.Z	      numeric	standard deviation Z component
t.gravity.acc.mag.mean	  numeric	mean Euclidean magnitude
t.gravity.acc.mag.std	    numeric	standard deviation Euclidean magnitude

Gyroscope Signals
The gyroscope signals contains only a body part. Again, the body part is split into a smooth signal and a jerk signal

Smooth Signals
name	                    type	  description
t.body.gyro.mean.X	      numeric	mean X component
t.body.gyro.std.X	        numeric	standard deviation X component
t.body.gyro.mean.Y	      numeric	mean Y component
t.body.gyro.std.Y	        numeric	standard deviation Y component
t.body.gyro.mean.Z	      numeric	mean Z component
t.body.gyro.std.Z	        numeric	standard deviation Z component
t.body.gyro.mag.mean	    numeric	mean Euclidean magnitude
t.body.gyro.mag.std	      numeric	standard deviation Euclidean magnitude

Jerk Signals
name	                    type	  description
t.body.gyro.jerk.mean.X	  numeric	mean X component
t.body.gyro.jerk.std.X	  numeric	standard deviation X component
t.body.gyro.jerk.mean.Y	  numeric	mean Y component
t.body.gyro.jerk.std.Y	  numeric	standard deviation Y component
t.body.gyro.jerk.mean.Z	  numeric	mean Z component
t.body.gyro.jerk.std.Z	  numeric	standard deviation Z component
t.body.gyro.jerk.mag.mean	numeric	mean Euclidean magnitude
t.body.gyro.jerk.mag.std	numeric	standard deviation Euclidean magnitude

Frequency Domain Signals
The frequency domain signals are obtain by apply a Fast Fourier Transform (FFT) to the time domain signals. All frequency domain signals are prefixed by a single f.

Accelerometer Signals
In the raw data set accelerometer signals were split into a smooth part and a jerk part.

Smooth Signals
name	                    type	  description
f.body.acc.mean.X	        numeric	mean X component
f.body.acc.std.X	        numeric	standard deviation X component
f.body.acc.mean.Y	        numeric	mean Y component
f.body.acc.std.Y	        numeric	standard deviation Y component
f.body.acc.mean.Z	        numeric	mean Z component
f.body.acc.std.Z	        numeric	standard deviation Z component
f.body.acc.mag.mean	      numeric	mean Euclidean magnitude
f.body.acc.mag.std	      numeric	standard deviation Euclidean magnitude

Jerk Signals
name	                    type	  description
f.body.acc.jerk.mean.X	  numeric	mean X component
f.body.acc.jerk.std.X	    numeric	standard deviation X component
f.body.acc.jerk.mean.Y	  numeric	mean Y component
f.body.acc.jerk.std.Y	    numeric	standard deviation Y component
f.body.acc.jerk.mean.Z	  numeric	mean Z component
f.body.acc.jerk.std.Z	    numeric	standard deviation Z component

Gyroscope Signals
The gyroscope signals contains only a smooth body part.

Smooth Signals
name	                    type	  description
f.body.gyro.mean.X	      numeric	mean X component
f.body.gyro.std.X	        numeric	standard deviation X component
f.body.gyro.mean.Y	      numeric	mean Y component
f.body.gyro.std.Y	        numeric	standard deviation Y component
f.body.gyro.mean.Z	      numeric	mean Z component
f.body.gyro.std.Z	        numeric	standard deviation Z component


