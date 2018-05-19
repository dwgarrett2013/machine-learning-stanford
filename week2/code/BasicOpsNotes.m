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

>> 5+6
ans =  11
>> 3-2
ans =  1
>> 1/2
ans =  0.50000
>> 2^6
ans =  64
>> 1 == 2
ans = 0
>> 1== 2 % false
ans = 0
>> "those were the elementary ops"
ans = those were the elementary ops
>> "these are the logical ops"
ans = these are the logical ops
>> % means comment
>> 1 ~= 2
ans = 1
>> % ~ equates to not
>> 1 && 0 % AND
ans = 0
>> 1 || 0 % OR
ans = 1
>> 1
ans =  1
>> % 1 is true, 0 is false
>> xor(1,0,1)
ans = 0
>> xor(1,0)
ans = 1
>> % xor is 1 or more inputs is true
>> % PS('>> '); changes the octave prompt from default
>> a=3
a =  3
>> a=3; % semicolon supresses output
>> b='hi';
>> b
b = hi
>> % typing letter prints the output
>> a=pi
a =  3.1416
>> disp(sprintf('2 decimials: %0.2f',a))
2 decimials: 3.14
>> % this allows you to format hte output string
>> a
a =  3.1416
>> format long
>> a
a =  3.14159265358979
>> format short a
error: format: unrecognized option 'short a'
>> format short
>> a
a =  3.1416
>> % format sets the default rules for all strings
>> % such as short and long
>>
>>
>> %now looking at vectors and matrixes
>> A = [ 1 2; 3 4; 5 6]
A =

   1   2
   3   4
   5   6

>> A
A =

   1   2
   3   4
   5   6

>> % spaces indicate left to right movement, semicolons indicate row
>> % you can also incrementally assign values to matrix
>> % by not adding end bracket
>> A= [ 1 2;
3 4;
5 6]
A =

   1   2
   3   4
   5   6

>> A
A =

   1   2
   3   4
   5   6

>> v = [1 2 3]
v =

   1   2   3

>> % this is how to create a vector or a 3x1 matrix
>> v
v =

   1   2   3

>> v=1:0.1:2
v =

 Columns 1 through 6:

    1.0000    1.1000    1.2000    1.3000    1.4000    1.5000

 Columns 7 through 11:

    1.6000    1.7000    1.8000    1.9000    2.0000

>> v
v =

 Columns 1 through 6:

    1.0000    1.1000    1.2000    1.3000    1.4000    1.5000

 Columns 7 through 11:

    1.6000    1.7000    1.8000    1.9000    2.0000

>> % this creates  a matrix with values 1-2 incrementing by .1
>> ones(2,3)
ans =

   1   1   1
   1   1   1

>> % creates a 2x3 matrix of all ones
>> C= 2*ones(2,3) % creates a matrix of 2s
C =

   2   2   2
   2   2   2

>> zeros(2,3)
ans =

   0   0   0
   0   0   0

>> % creates a zeros matrix
>> w=zeroes(1,3)
error: 'zeroes' undefined near line 2 column 3
>> w=zeros(1,3)
w =

   0   0   0

>> w=rand(1,3)
w =

   0.50946   0.32884   0.49253

>> % rand gives a 3 x 3 matrix of random values
>> w=-6+sqrt(10)*(randn(1,10000))
w =

 Columns 1 through 5:

  -2.7844e+00  -1.0931e+01  -6.4948e+00  -4.7169e+00  -4.0210e+00

 Columns 6 through 10:

  -7.2374e+00  -9.4402e+00  -8.2674e+00  -8.7786e+00  -4.4671e+00

 Columns 11 through 15:

  -6.0878e-01  -5.5315e+00  -6.4934e+00  -7.2053e+00  -8.2037e+00

 Columns 16 through 20:

  -3.6002e+00  -8.4506e+00  -5.4267e+00  -5.2396e+00  -5.4436e+00

 Columns 21 through 25:

  -1.5073e+01  -4.4300e+00  -8.2008e+00  -8.3206e+00  -3.9600e+00

 Columns 26 through 30:

  -9.9286e+00  -6.1212e+00  -3.8041e+00  -5.6466e+00  -2.0955e+00

 Columns 31 through 35:

  -1.2348e+01  -5.1929e+00  -6.3632e+00  -4.1373e+00  -1.0616e+01

 Columns 36 through 40:

  -7.0073e+00  -4.2718e+00  -1.4145e+01   2.6069e+00  -3.8421e+00

 Columns 41 through 45:

  -4.3510e+00  -5.0175e+00  -4.4616e+00  -7.0335e+00  -4.8577e+00

 Columns 46 through 50:

  -4.6868e+00  -8.1817e+00  -3.3857e+00  -1.9373e+00  -4.9686e+00

 Columns 51 through 55:

  -1.5920e+01  -6.0334e+00  -6.3432e+00  -9.3843e+00  -1.0026e+01

 Columns 56 through 60:

  -1.2063e+01  -6.0019e+00  -2.4511e+00  -7.3374e+00  -4.8356e+00

 Columns 61 through 65:

  -8.6587e+00  -6.7385e+00  -7.5298e+00  -9.9611e+00  -5.0525e+00

 Columns 66 through 70:

  -9.2083e+00  -3.5489e+00   1.0350e+00  -6.9534e+00  -9.5519e+00

 Columns 71 through 75:

  -8.4876e+00  -4.0922e+00  -2.0045e+00  -6.0798e+00  -6.0866e+00

 Columns 76 through 80:

  -7.3507e+00   1.6176e+00  -1.3649e+01  -4.9831e+00  -1.1772e+01

 Columns 81 through 85:

  -9.0129e+00  -9.3618e+00  -7.0801e+00  -5.4404e+00  -1.1163e+01

 Columns 86 through 90:

  -6.1790e+00  -9.9018e+00  -3.0095e+00  -5.4129e+00  -7.8624e+00

 Columns 91 through 95:

   2.9247e+00  -6.4142e-01  -6.7658e+00  -3.8313e+00  -5.9062e+00

 Columns 96 through 100:

  -7.3530e+00  -3.0568e+00  -6.1908e+00  -3.5398e+00  -6.9869e+00

 Columns 101 through 105:

  -1.1106e+01  -2.7322e+00  -3.3687e+00  -7.9584e+00  -9.0536e+00

 Columns 106 through 110:

  -1.5540e+00  -4.9367e+00  -5.4033e+00  -5.2824e+00  -7.9099e+00

 Columns 111 through 115:

  -8.2588e+00  -7.4379e+00  -1.7473e+00  -3.1691e+00  -1.2791e+00

 Columns 116 through 120:

  -2.5351e+00  -4.9316e+00  -4.4151e+00  -8.4786e+00  -1.1361e+01

 Columns 121 through 125:

  -1.0330e+00  -9.2909e+00  -4.7537e+00  -5.8678e+00  -3.0295e+00

 Columns 126 through 130:

warning: broken pipe
>> hist(w)
>> % rand gives random distribution between zero and 1
>> % randn gives a gausian dist with mean (first parameters) and stdev (second parameter)
>> w=-6*sqart(10)*randn(1,10000))
parse error:

  syntax error

>>> w=-6*sqart(10)*randn(1,10000))
                                 ^

>> w=-6*sqart(10)*randn(1,10000));
parse error:

  syntax error

>>> w=-6*sqart(10)*randn(1,10000));
                                 ^

>> w=-6*sqart(10)*(randn(1,10000));
error: 'sqart' undefined near line 1 column 6
>> w=-6*sqrt(10)*(randn(1,10000));
>> w
w =

 Columns 1 through 5:

  -1.6921e+01   2.0965e+01  -2.2855e+01   3.1651e+01   2.2971e+00

 Columns 6 through 10:

   2.7229e+01   1.7083e+01   8.5228e+00  -8.4555e+00   1.1632e+01

 Columns 11 through 15:

   8.3009e+00  -1.5070e+01   2.4711e+01  -1.4510e+01  -1.1312e+01

 Columns 16 through 20:

   5.0713e-01   7.2590e+00   1.0135e+01  -1.8608e+01   9.3379e+00

 Columns 21 through 25:

  -2.7539e+01  -3.4634e+00   5.3909e+00   2.1412e+00  -1.4128e+01

 Columns 26 through 30:

  -7.6436e+00   3.5689e+00   1.3073e+01  -1.9322e+00   1.1978e+01

 Columns 31 through 35:

  -3.9778e-01   5.5997e+00   5.4811e+00   1.9718e+01   8.2824e+00

 Columns 36 through 40:

   3.1376e+00  -4.1143e+01  -1.3748e+00   2.0992e+01  -2.8689e+00

 Columns 41 through 45:

  -4.0168e+01  -4.6628e+00   3.3357e+01   1.6244e+01  -5.4430e+00

 Columns 46 through 50:

   1.5438e+01   8.3078e+00  -1.1329e+01  -3.3540e+01   4.3368e+00

 Columns 51 through 55:

  -1.4254e+01  -2.7633e+00  -4.1692e-01   3.6671e+01   6.8724e-01

 Columns 56 through 60:

  -9.9950e+00   1.2516e+01  -2.4906e+01   3.0876e+01   4.1911e+00

 Columns 61 through 65:

warning: broken pipe
>> w=-6*sqrt(10)*(randn(1,10000)); % creates a vector with 10,000 elements with those values  (remember than randn returns a vector with all these values)
>> hist(w) % creates a histogram of the random value
>> hist(w,50) % creates a histogram with buckets of 50
>> eye(4) % creates an identiy matrix with parmater x parameter size
ans =

Diagonal Matrix

   1   0   0   0
   0   1   0   0
   0   0   1   0
   0   0   0   1

>> help eye % just like the man page command
'eye' is a built-in function from the file libinterp/corefcn/data.cc

 -- eye (N)
 -- eye (M, N)
 -- eye ([M N])
 -- eye (..., CLASS)
     Return an identity matrix.

     If invoked with a single scalar argument N, return a square NxN
     identity matrix.

     If supplied two scalar arguments (M, N), 'eye' takes them to bethe
     number of rows and columns.  If given a vector with two elements,
     'eye' uses the values of the elements as the number of rows and
     columns, respectively.  For example:

          eye (3)
           =>  1  0  0
               0  1  0
               0  0  1

     The following expressions all produce the same result:

          eye (2)
          ==
          eye (2, 2)
          ==
          eye (size ([1, 2; 3, 4]))

     The optional argument CLASS, allows 'eye' to return an array ofthe
     specified type, like

          val = zeros (n,m, "uint8")

     Calling 'eye' with no arguments is equivalent to calling it with an
     argument of 1.  Any negative dimensions are treated as zero.  These
     odd definitions are for compatibility with MATLAB.

     See also: speye, ones, zeros.

Additional help for built-in functions and operators is
available in the online version of the manual.  Use the command
'doc <topic>' to search the manual index.

Help and information about Octave is also available on the WWW
at http://www.octave.org and via the help@octave.org
mailing list.
>>