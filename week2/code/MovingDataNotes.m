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

>> A=
parse error:

  syntax error

>>> A=
     ^

>> A
error: 'A' undefined near line 1 column 1
>> A= [1 2
3 4;

>> A
error: 'A' undefined near line 1 column 1
>>
>> A= [1 2;
3 4;
5 6;
}
parse error:

  syntax error

>>> }
    ^

>> ]
parse error:

  syntax error

>>> ]
    ^

>> clear
>> A
error: 'A' undefined near line 1 column 1
>> A=[1 2;
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

>> size(A) % gives me the size of A
ans =

   3   2

>> % update the dimensions of A
>> sz=size(A) % you can set this to be a variable
sz =

   3   2

>> sz
sz =

   3   2

>> size(sz)
ans =

   1   2

>> size(A,1)
ans =  3
>> % this give the 1st dimention of matrix
>> v=[1 2 3 4]
v =

   1   2   3   4

>> length(v) % gives you the size of the largest dimension
ans =  4
>>  % note, we usually only apply length only to vectors
>> pwd
ans = /mnt/c/Users/David/Documents/code/machine-learning-stanford/week2/code
>> % pwd shows current directory
>> %cd changes director
>> %ls lists directories
>> ls
BasicOpsNotes.m
>> ls
BasicOpsNotes.m  featuresX.dat  priceY.dat
>> load featuresX.dat
>> load pr
prctile                      print_usage
prefdir                      prism
preferences                  probit
prepad                       prod
priceY.dat                   profexplore
primes                       profexport
print                        profile
printd                       profshow
print_empty_dimensions       program_invocation_name
printf                       program_name
print_struct_array_contents  prop_test_2
>> load pr
prctile                      print_usage
prefdir                      prism
preferences                  probit
prepad                       prod
priceY.dat                   profexplore
primes                       profexport
print                        profile
printd                       profshow
print_empty_dimensions       program_invocation_name
printf                       program_name
print_struct_array_contents  prop_test_2
>> load priceY.dat
>> ls
BasicOpsNotes.m  featuresX.dat  priceY.dat
>> %this laods the files, can also do via load('filename')
>> who
Variables in the current scope:

A          ans        featuresX  priceY     sz         v

>> % who command shows the variables in memory
>> X
error: 'X' undefined near line 2 column 1
>> x
error: 'x' undefined near line 1 column 1
>> priceY
priceY =

   3999
   3299
   3690
   2320
   5399
   2999
   3149
   1989
   2120
   2425
   2399
   3470
   3299
   6999
   2599
   4499
   1509
   1667
   5948
   4718
   3932
   2011
   4538
   2251
   2617
   4084
   3523

>> featuresX
featuresX =

   2104      3
   1600      3
   2400      3
   1416      2
   3000      4
   1985      4
   1534      3
   1427      3
   1380      3
   1494      3
   1940      4
   2000      3
   1890      3
   4478      5
   1268      3
   1437      3
   1239      3
   2132      4
   4215      4
   2162      4
   1664      2
   2238      3
   2567      4
   1200      3
    852      2
   1852      4
   1203      3

>> % once you load, the variables will be available in memory
>> whos % shows stats about the in memory variables
Variables in the current scope:

   Attr Name           Size                     Bytes  Class
   ==== ====           ====                     =====  =====
        A              3x2                         48  double
        ans            1x70                        70  char
        featuresX     27x2                        432  double
        priceY        27x1                        216  double
        sz             1x2                         16  double
        v              1x4                         32  double

Total is 163 elements using 814 bytes

>> clear featuresX % clear the variable
>> whos
Variables in the current scope:

   Attr Name        Size                     Bytes  Class
   ==== ====        ====                     =====  =====
        A           3x2                         48  double
        ans         1x70                        70  char
        priceY     27x1                        216  double
        sz          1x2                         16  double
        v           1x4                         32  double

Total is 109 elements using 382 bytes

>> load featuresX.dat
>> featuresX
featuresX =

   2104      3
   1600      3
   2400      3
   1416      2
   3000      4
   1985      4
   1534      3
   1427      3
   1380      3
   1494      3
   1940      4
   2000      3
   1890      3
   4478      5
   1268      3
   1437      3
   1239      3
   2132      4
   4215      4
   2162      4
   1664      2
   2238      3
   2567      4
   1200      3
    852      2
   1852      4
   1203      3

>> v=priceY(1:10) % sets v to be the first 10 elements of priceY
v =

   3999
   3299
   3690
   2320
   5399
   2999
   3149
   1989
   2120
   2425

>> v
v =

   3999
   3299
   3690
   2320
   5399
   2999
   3149
   1989
   2120
   2425

>> save hello.mat v; %saves variable v into file called hello.mat
>> clear % deletes all variables in workspace
>> whos
>> load hel
hello.mat  help       helpdlg
>> load hel
hello.mat  help       helpdlg
>> load hello.mat
>> whos
Variables in the current scope:

   Attr Name        Size                     Bytes  Class
   ==== ====        ====                     =====  =====
        v          10x1                         80  double

Total is 10 elements using 80 bytes

>> save hello.txt v -ascii % save as text file
>> A(3,2)
error: 'A' undefined near line 1 column 1
>> A=[1 2; 3 4; 5 6]
A =

   1   2
   3   4
   5   6

>> A(3,2)
ans =  6
>> % this gives me the element with index 3 and 2
>> A(2,:) % gives every element in the row and column
ans =

   3   4

>> % corretion row or column
>> A(:,2)
ans =

   2
   4
   6

>> A([1 3],:) % give all ements with in 1st and 3rd row and everything in 2nd column
ans =

   1   2
   5   6

>> A(:,2)=[10,11,12] % assigns the values of 10, 11, and 12 to the second column of A
A =

    1   10
    3   11
    5   12

>> A=[A,[100; 101; 102]]; % appends a column vector to right of A
>> A
A =

     1    10   100
     3    11   101
     5    12   102

>> size(A)
ans =

   3   3

>> A(:) % put all ements of A into a single vector
ans =

     1
     3
     5
    10
    11
    12
   100
   101
   102

>> A = [1 2; 3 4; 56]
error: vertical dimensions mismatch (2x2 vs 1x1)
>> A = [1 2; 3 4; 5 6]
A =

   1   2
   3   4
   5   6

>> B=[11 12; 13 14; 15 16]
B =

   11   12
   13   14
   15   16

>> C=[A B]
C =

    1    2   11   12
    3    4   13   14
    5    6   15   16

>> %this concatentates 2 matrices
>> C=[A;B] % puts matrices on top of on another
C =

    1    2
    3    4
    5    6
   11   12
   13   14
   15   16

>> size(C)
ans =

   6   2

>> [A B]
ans =

    1    2   11   12
    3    4   13   14
    5    6   15   16

>> [A,B]
ans =

    1    2   11   12
    3    4   13   14
    5    6   15   16

>>
