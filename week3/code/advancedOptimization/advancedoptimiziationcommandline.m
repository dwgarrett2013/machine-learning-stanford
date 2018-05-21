This is free software; see the source code for copying conditions.
There is ABSOLUTELY NO WARRANTY; not even for MERCHANTABILITY or
FITNESS FOR A PARTICULAR PURPOSE.  For details, type 'warranty'.

Octave was configured for "x86_64-pc-linux-gnu".

Additional information about Octave is available at http://www.octave.org.

Please contribute if you find this software useful.
For more information, visit http://www.octave.org/get-involved.html

Read http://www.octave.org/bugs.html to learn how to submit bug reports.
For information about changes from previous versions, type 'news'.

>> mkdir advancedOptimization
ans = 1
>> cd advancedOptimization/
>> ls
>> options=optimset('GradObj', 'on', 'MaxIter','100');
>> initialTheta=zeroes(2,1)
error: 'zeroes' undefined near line 1 column 14
>> [optTheta,functionVal,exitFlag]=fminunc(@costFunction, initialTheta, options)
error: 'initialTheta' undefined near line 1 column 55
>> [optTheta,functionVal,exitFlag]=fminunc(@costFunction, initialTheta, options)
error: 'initialTheta' undefined near line 1 column 55
>> initialTheta
error: 'initialTheta' undefined near line 1 column 1
>> initialTheta=zeros(2,1)
initialTheta =

   0
   0

>> [optTheta,functionVal,exitFlag]=fminunc(@costFunction, initialTheta, options)
optTheta =

   5.0000
   5.0000

functionVal =    1.5777e-30
exitFlag =  1
>> % this is how we would solve using fminun
>> % you would run your optimization algorithm in the above format for any of the advanced algorithms
>> % note that it must be at least a 2-d vector
>> % note that initial theta must be a 2-d vector