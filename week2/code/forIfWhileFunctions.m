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

>> % plotting data tutorial
>> % plotting data is a good way to improve algorithms
>> t=[0:0.01:0.98];
>> t
t =

 Columns 1 through 6:

   0.00000   0.01000   0.02000   0.03000   0.04000   0.05000

 Columns 7 through 12:

   0.06000   0.07000   0.08000   0.09000   0.10000   0.11000

 Columns 13 through 18:

   0.12000   0.13000   0.14000   0.15000   0.16000   0.17000

 Columns 19 through 24:

   0.18000   0.19000   0.20000   0.21000   0.22000   0.23000

 Columns 25 through 30:

   0.24000   0.25000   0.26000   0.27000   0.28000   0.29000

 Columns 31 through 36:

   0.30000   0.31000   0.32000   0.33000   0.34000   0.35000

 Columns 37 through 42:

   0.36000   0.37000   0.38000   0.39000   0.40000   0.41000

 Columns 43 through 48:

   0.42000   0.43000   0.44000   0.45000   0.46000   0.47000

 Columns 49 through 54:

   0.48000   0.49000   0.50000   0.51000   0.52000   0.53000

 Columns 55 through 60:

   0.54000   0.55000   0.56000   0.57000   0.58000   0.59000

 Columns 61 through 66:

   0.60000   0.61000   0.62000   0.63000   0.64000   0.65000

 Columns 67 through 72:

   0.66000   0.67000   0.68000   0.69000   0.70000   0.71000

 Columns 73 through 78:

>> % creates a plot with intervals of 0.01 from 0 to 0.98
>> y1= sin(2*pi*4*t);
>> y1
y1 =

 Columns 1 through 6:

   0.00000   0.24869   0.48175   0.68455   0.84433   0.95106

 Columns 7 through 12:

   0.99803   0.98229   0.90483   0.77051   0.58779   0.36812

 Columns 13 through 18:

   0.12533  -0.12533  -0.36812  -0.58779  -0.77051  -0.90483

 Columns 19 through 24:

  -0.98229  -0.99803  -0.95106  -0.84433  -0.68455  -0.48175

 Columns 25 through 30:

  -0.24869  -0.00000   0.24869   0.48175   0.68455   0.84433

 Columns 31 through 36:

   0.95106   0.99803   0.98229   0.90483   0.77051   0.58779

 Columns 37 through 42:

   0.36812   0.12533  -0.12533  -0.36812  -0.58779  -0.77051

 Columns 43 through 48:

  -0.90483  -0.98229  -0.99803  -0.95106  -0.84433  -0.68455

 Columns 49 through 54:

  -0.48175  -0.24869  -0.00000   0.24869   0.48175   0.68455

 Columns 55 through 60:

   0.84433   0.95106   0.99803   0.98229   0.90483   0.77051

 Columns 61 through 66:

   0.58779   0.36812   0.12533  -0.12533  -0.36812  -0.58779

 Columns 67 through 72:

  -0.77051  -0.90483  -0.98229  -0.99803  -0.95106  -0.84433

 Columns 73 through 78:

>> % this equals sin of 2*pi*4*the element values of t
>> plot(t,y1)
>> % creates a plot with T as x values and Y1 as the y values
>> y2=cos(2*pi*4*t);
>> plot(t,y2)
>>
>> % in order to plot them on top of one another
>> plot(t,y1);
>> hold on;
>> plot(t,y2)
>> plot(t,y1);
>> hold on;
>> plot(t,y1);
>> plot(t,y2)
>> % you can specify the color by adding a third parameter 'r' for red
>> % you can also add and y labels
>> hold on;
>> plot(t,y1,'g');
>> plot(t,y2, 'r')
>> xlabel('time')
>> ylabel('value')
>> legend('sin','cos')
>> title('my plot')
>> % you can also export it
>> print -dpng 'myPlot.png'
warning: print.m: fig2dev binary is not available.
Some output formats are not available.
warning: called from
    __print_parse_opts__ at line 388 column 9
    print at line 316 column 8
>> % you can also save files in other formats
>> close % gets rid of a plot
>> % can plot multipel figures
>> figure(1); plot(t,y1);
>> figure(2); plot(t,y2);
>> subplot(1,2,1); % divides plot into a 1x2 grid, access the first element
>> y2
y2 =

 Columns 1 through 6:

   1.000000   0.968583   0.876307   0.728969   0.535827   0.309017

 Columns 7 through 12:

   0.062791  -0.187381  -0.425779  -0.637424  -0.809017  -0.929776

 Columns 13 through 18:

  -0.992115  -0.992115  -0.929776  -0.809017  -0.637424  -0.425779

 Columns 19 through 24:

  -0.187381   0.062791   0.309017   0.535827   0.728969   0.876307

 Columns 25 through 30:

   0.968583   1.000000   0.968583   0.876307   0.728969   0.535827

 Columns 31 through 36:

   0.309017   0.062791  -0.187381  -0.425779  -0.637424  -0.809017

 Columns 37 through 42:

  -0.929776  -0.992115  -0.992115  -0.929776  -0.809017  -0.637424

 Columns 43 through 48:

  -0.425779  -0.187381   0.062791   0.309017   0.535827   0.728969

 Columns 49 through 54:

   0.876307   0.968583   1.000000   0.968583   0.876307   0.728969

 Columns 55 through 60:

   0.535827   0.309017   0.062791  -0.187381  -0.425779  -0.637424

 Columns 61 through 66:

  -0.809017  -0.929776  -0.992115  -0.992115  -0.929776  -0.809017

 Columns 67 through 72:

  -0.637424  -0.425779  -0.187381   0.062791   0.309017   0.535827

 Columns 73 through 78:

>> subplot(1,2,1);
>> plot(t,y1)
>> ;
>> subplot(1,2,2); % divides plot into a 1x2 grid access second element
>> plot(t,y2);
>> axis([0.5 1 -1 1]) % sets axis values
>> clf
>> % clears a plot
>> A=magic(5)
A =

   17   24    1    8   15
   23    5    7   14   16
    4    6   13   20   22
   10   12   19   21    3
   11   18   25    2    9

>> imagesc(A)
>> % different colors correspond to different values
>> imagesc(A), colorbar, colormap gray;
>> % colorbar shows which values correspond to
>> a=1,b=2,c=3
a =  1
b =  2
c =  3
>> a=1; b=2;c=3
c =  3
>> % commas separate commands
>>
>> % for, while, if statements, and functions
>> % for loop
>> v=zeroes(10,1)
error: 'zeroes' undefined near line 3 column 3
>> v=zeros(10,1);
>> for i=1:10,
v(i)=2^i;
end;
>> v
v =

      2
      4
      8
     16
     32
     64
    128
    256
    512
   1024

>> % shows how to do a for loop using for loop sturcture, followed by comma, and end si the block
>> indices=1:10;
>> indices
indices =

    1    2    3    4    5    6    7    8    9   10

>> for i=indicies,
disp(i);
end;
error: 'indicies' undefined near line 1 column 7
>> for i=indices,
disp(i);
end;
 1
 2
 3
 4
 5
 6
 7
 8
 9
 10
>> % shows that you can also use variables
>> i=1;
>> while i<=5,
v(i)=100;
i=i+1;
end;
>> v
v =

    100
    100
    100
    100
    100
     64
    128
    256
    512
   1024

>> % this would make the first 5 elements of i 100
>> i=1;
>> while true,
v(i)=999
i=i+1;
if i == 6,
break;
end;
end;
v =

    999
    100
    100
    100
    100
     64
    128
    256
    512
   1024

v =

    999
    999
    100
    100
    100
     64
    128
    256
    512
   1024

v =

    999
    999
    999
    100
    100
     64
    128
    256
    512
   1024

v =

    999
    999
    999
    999
    100
     64
    128
    256
    512
   1024

>> % if we want to do while loop with a break in it
>> i=1;
>> while true,
v(i)=999;
i=i+1;
if i == 6,
break;
end;
end;
>> v
v =

    999
    999
    999
    999
    999
     64
    128
    256
    512
   1024

>> % general if else syntax
>> v(1)
ans =  999
>> v(1)=2
v =

      2
    999
    999
    999
    999
     64
    128
    256
    512
   1024

>> if v(1)==1,
disp('The value is one');
elseif v(1)==2,
disp('The value is two');
else
disp('The value is not one or two');
end;
The value is two
>> % how to define and use functions
>> % see the squareThatNumber.m function
>> sq
sqp                 sqrtm               squeeze
sqrt                squareThisNumber.m
>> squ
squareThisNumber.m  squeeze
>> squ
squareThisNumber.m  squeeze
>> squareThisNumber(5)
ans =  25
>> % this pulls the function from the current directory
>> % you can also add paths to the octave directory searchpath usingaddpath(pathname)
>>
>> % function that returns 2 values
>> [a,b]=squareAndCubeThisNumber(5);
parse error near line 1 of file /mnt/c/Users/David/Documents/code/machine-learning-stanford/week2/code/squareAndCubeThisNumber.m

  syntax error

>>> function (y1,y2)=squareAndCubeThisNumber(x)
             ^

>> [a,b]=squareAndCubeThisNumber(5);
>> a
a =  25
>> b
b =  125
>>
>>
>> % goal of defining function that computes the cost function J(theta)
>> % data sets as points (1,1),(2,2),(3,3)
>>
>> X=[1 1; 1 2; 1 3]
X =

   1   1
   1   2
   1   3

>> % constants are always 1 and the second values are the x1 inputs
>> Y=[1; 2; 3] % these are the Y-axis values
Y =

   1
   2
   3

>> theta= [0;1];
>> size(X)
ans =

   3   2

>> size(1)
ans =

   1   1

>> size(X,1)
ans =  3
>> X*theta
ans =

   1
   2
   3

>> X
X =

   1   1
   1   2
   1   3

>> theta
theta =

   0
   1

>> j=costFunctionJ(X,y,theta)
error: 'y' undefined near line 1 column 19
>> j=costFunctionJ(X,y,theta)
error: 'y' undefined near line 1 column 19
>> j=costFunctionJ(X,Y,theta)
m =  3
j = 0
>>
>> % if theta had different values
>> theta=[0;0];
>> j=costFunctionJ(X,Y,theta)
m =  3
j =  2.3333
>> (1^2 + 2^2 + 3^2)/(2*3)
ans =  2.3333
>> % shows the same
>>