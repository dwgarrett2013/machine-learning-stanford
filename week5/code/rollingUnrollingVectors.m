GNU Octave, version 4.2.2
Copyright (C) 2018 John W. Eaton and others.
This is free software; see the source code for copying conditions.
There is ABSOLUTELY NO WARRANTY; not even for MERCHANTABILITY or
FITNESS FOR A PARTICULAR PURPOSE.  For details, type 'warranty'.

Octave was configured for "x86_64-pc-linux-gnu".

Additional information about Octave is available at http://www.octave.org.

Please contribute if you find this software useful.
For more information, visit http://www.octave.org/get-involved.html

Read http://www.octave.org/bugs.html to learn how to submit bug reports.
For information about changes from previous versions, type 'news'.

>> fminunc help
error: Invalid call to fminunc.  Correct usage is:

 -- fminunc (FCN, X0)
 -- fminunc (FCN, X0, OPTIONS)
 -- [X, FVAL, INFO, OUTPUT, GRAD, HESS] = fminunc (FCN, ...)

Additional help for built-in functions and operators is
available in the online version of the manual.  Use the command
'doc <topic>' to search the manual index.

Help and information about Octave is also available on the WWW
at http://www.octave.org and via the help@octave.org
mailing list.
>> cd ..
>> cd ../..
>> ls
programmingAssignment
>> cd ..
>> ls
code  lectureSlides
>> cd ..
>> cd week5/code
error: week5/code: No such file or directory
>> cd week5
>> ls
>> cd code/
>> ,ls
parse error:

  syntax error

>>> ,ls
      ^

>> clear
>>










>> %This shows us the unrolling exercisee
>> Theta1=ones(10,11)
Theta1 =

   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1

>> Theta2=2*ones(10,11)
Theta2 =

   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2

>> Theta3=3*ones(10,11)
Theta3 =

   3   3   3   3   3   3   3   3   3   3   3
   3   3   3   3   3   3   3   3   3   3   3
   3   3   3   3   3   3   3   3   3   3   3
   3   3   3   3   3   3   3   3   3   3   3
   3   3   3   3   3   3   3   3   3   3   3
   3   3   3   3   3   3   3   3   3   3   3
   3   3   3   3   3   3   3   3   3   3   3
   3   3   3   3   3   3   3   3   3   3   3
   3   3   3   3   3   3   3   3   3   3   3
   3   3   3   3   3   3   3   3   3   3   3

>> thetaVec=[Theta1(:);Theta2(:);Theta3(:)];
>> size(thetaVec )
ans =

   330     1

>> Theta3=3*ones(1,11)
Theta3 =

   3   3   3   3   3   3   3   3   3   3   3

>> thetaVec=[Theta1(:);Theta2(:);Theta3(:)];
>> size(thetaVec )
ans =

   231     1

>> thetaVec
thetaVec =

   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   1
   2
   2
   2
   2
   2
   2
   2
   2
   2
   2
   2
   2
   2
   2
   2
   2
   2
   2
   2
   2
   2
   2
   2
   2
   2
   2
   2
   2
   2
   2
   2
   2
   2
   2
   2
   2
   2
   2
   2
   2
   2
   2
   2
   2
>> %putting back in shape using resdhape
>> reshape(thetaVec(1:110),10,11)
ans =

   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1   1   1

>> reshape(thetaVec(111:220),10,11)
ans =

   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2
   2   2   2   2   2   2   2   2   2   2   2

>> reshape(thetaVec(121:231),10,11)
error: reshape: can't reshape 111x1 array to 10x11 array
>> reshape(thetaVec(121:231),1,11)
error: reshape: can't reshape 111x1 array to 1x11 array
>> reshape(thetaVec(121:231),10,11)
error: reshape: can't reshape 111x1 array to 10x11 array
>> reshape(thetaVec(121:231),1,11)
error: reshape: can't reshape 111x1 array to 1x11 array
>> reshape(thetaVec(221:231),1,11)
ans =

   3   3   3   3   3   3   3   3   3   3   3

>>