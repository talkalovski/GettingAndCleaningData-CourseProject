This code book will explain  all the variables and summaries I calculated, along with units, and any other relevant information.

## The ID Variable
There are two ID variables in this data set:
- subject is a numerical variable that indicate which subject is being measured (1-30).
- Activity is a charcter variable that describes what was the activity the subject was performing while the measurment where recorded.

Those varibles were originaly given seperatly from the the raw measures data set and I merged them into the data set using the merge function

Notice, that this data is combined from two data set groups of the experiment.
The seperate data set were created by randomly devidin the subject to a test group (30%) and a train group (70%)
The final data set does not indicate the original group of the subject.

## The measure Variable.
The origianl data contained 561 defernet measurments for each record
The final data set was filtered to show only the 79 mean and standard deviation mesure varibales.
Those varibles measured diferent acceleration of the subject waring the Samsung device.
All those Varibles are numeric and and were normalized to a value between -1 to 1.

The final data set calculated the mean of all the measure values for a spesific subject in a specific activity.

### List of the measure Variables in the data set.
#### Time domain Varibles
tBodyAcc-mean()-X      ,         tBodyAcc-mean()-Y       ,        tBodyAcc-mean()-Z              
tBodyAcc-std()-X        ,        tBodyAcc-std()-Y         ,       tBodyAcc-std()-Z               
tGravityAcc-mean()-X     ,       tGravityAcc-mean()-Y      ,      tGravityAcc-mean()-Z           
tGravityAcc-std()-X       ,      tGravityAcc-std()-Y        ,     tGravityAcc-std()-Z            
tBodyAccJerk-mean()-X       ,    tBodyAccJerk-mean()-Y       ,    tBodyAccJerk-mean()-Z          
tBodyAccJerk-std()-X    ,        tBodyAccJerk-std()-Y     ,       tBodyAccJerk-std()-Z           
tBodyGyro-mean()-X       ,       tBodyGyro-mean()-Y        ,      tBodyGyro-mean()-Z             
tBodyGyro-std()-X         ,      tBodyGyro-std()-Y          ,     tBodyGyro-std()-Z              
tBodyGyroJerk-mean()-X     ,     tBodyGyroJerk-mean()-Y      ,    tBodyGyroJerk-mean()-Z         
tBodyGyroJerk-std()-X       ,    tBodyGyroJerk-std()-Y        ,   tBodyGyroJerk-std()-Z          
tBodyAccMag-mean()      ,        tBodyAccMag-std()               
tGravityAccMag-mean()    ,       tGravityAccMag-std()            
tBodyAccJerkMag-mean()    ,      tBodyAccJerkMag-std()          
tBodyGyroMag-mean()        ,     tBodyGyroMag-std()              
tBodyGyroJerkMag-mean()     ,    tBodyGyroJerkMag-std()          

#### Frequency domain Varibles
fBodyAcc-mean()-X        ,       fBodyAcc-mean()-Y      ,         fBodyAcc-mean()-Z               
fBodyAcc-std()-X          ,      fBodyAcc-std()-Y        ,        fBodyAcc-std()-Z                
fBodyAcc-meanFreq()-X      ,     fBodyAcc-meanFreq()-Y    ,       fBodyAcc-meanFreq()-Z           
fBodyAccJerk-mean()-X       ,    fBodyAccJerk-mean()-Y     ,      fBodyAccJerk-mean()-Z           
fBodyAccJerk-std()-X         ,   fBodyAccJerk-std()-Y       ,     fBodyAccJerk-std()-Z              
fBodyAccJerk-meanFreq()-X     ,  fBodyAccJerk-meanFreq()-Y   ,    fBodyAccJerk-meanFreq()-Z       
fBodyGyro-mean()-X             , fBodyGyro-mean()-Y           ,   fBodyGyro-mean()-Z              
fBodyGyro-std()-X       ,        fBodyGyro-std()-Y             ,  fBodyGyro-std()-Z               
fBodyGyro-meanFreq()-X   ,       fBodyGyro-meanFreq()-Y   ,       fBodyGyro-meanFreq()-Z          
fBodyAccMag-mean()        ,      fBodyAccMag-std()         ,      fBodyAccMag-meanFreq()          
BodyBodyAccJerkMag-mean()  ,     fBodyBodyAccJerkMag-std()  ,     fBodyBodyAccJerkMag-meanFreq()  
fBodyBodyGyroMag-mean()     ,    fBodyBodyGyroMag-std()      ,    fBodyBodyGyroMag-meanFreq()     
fBodyBodyGyroJerkMag-mean()  ,   fBodyBodyGyroJerkMag-std()   ,   fBodyBodyGyroJerkMag-meanFreq()


