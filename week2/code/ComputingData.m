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

>> A =[1 2; 3 4; 5 6]
A =

   1   2
   3   4
   5   6

>> B=[11 12; 13 14; 15 16]
B =

   11   12
   13   14
   15   16

>> C= [1 1; 2 2]
C =

   1   1
   2   2

>> A*C
ans =

    5    5
   11   11
   17   17

>> % multiplies the 2 matrices
>> A .* B % multiplies each element of A by the element of B, this is not the typical method for multiplying matrices
ans =

   11   24
   39   56
   75   96

>> % explained 1,1 times 1,1 and so on ad so forth
>> A .^ 2 % elements squaring of A, squares each element of A
ans =

    1    4
    9   16
   25   36

>> v=[1; 2; 3]
v =

   1
   2
   3

>> 1 ./ v
ans =

   1.00000
   0.50000
   0.33333

>> % give the element division of A
>> % can also do the log or exponentiation of v
>> log(v)
ans =

   0.00000
   0.69315
   1.09861

>> exp(v)
ans =

    2.7183
    7.3891
   20.0855

>> v
v =

   1
   2
   3

>> abs(v)
ans =

   1
   2
   3

>> abs([-1;2;-3]) % gives the elementwise absolute value
ans =

   1
   2
   3

>> -v % gives the negative elementwise value of v
ans =

  -1
  -2
  -3

>> abs(-v)
ans =

   1
   2
   3

>> % for fun
>> % to increment each element of v by 1
>> v+ones(length(v),1)
ans =

   2
   3
   4

>> length(v)
ans =  3
>> ones(3,1)
ans =

   1
   1
   1

>> % so it adds the 2 vectors
>> % you could also do v+1
>> v+1
ans =

   2
   3
   4

>> % to do transpose
>> A'
ans =

   1   3   5
   2   4   6

>> (A')'
ans =

   1   2
   3   4
   5   6

>> % double transpose
>> a=[1 15 2 0.5]
a =

    1.00000   15.00000    2.00000    0.50000

>> max(a) % returns the maximum element of A
ans =  15
>> a < 3 % does the elementwise comparison operation
ans =

  1  0  1  1

>> find (a<3) % tells which elements in a ar e less than 3
ans =

   1   3   4

>> magic(3) % creates an nxn matrix where all rows and columns add up to each other
ans =

   8   1   6
   3   5   7
   4   9   2

>> % this is just a convienet way to make a matrix
>> [r,c]=find(a>=7) % sets r and c equal to the indexes in a that are greater than 7
r =  1
c =  2
>> [r,c]=find(A>=7) % sets r and c equal to the indexes in a that are greater than 7
r = [](0x1)
c = [](0x1)
>> [r,c]=find(a>=7) % sets r and c equal to the indexes in a that are greater than 7
r =  1
c =  2
>> [r,c]=find(a>=7) % sets r and c equal to the indexes in a that are greater than 7
r =  1
c =  2
>> A=magic(3)
A =

   8   1   6
   3   5   7
   4   9   2

>> [r,c]=find(A>=7) % sets r and c equal to the indexes in a that are greater than 7
r =

   1
   3
   2

c =

   1
   2
   3

>> % can always use help if you need
>> sum(a) % takes the sum of elements of a
ans =  18.500
>> prod (a) takes product of elements in A
parse error:

  syntax error

>>> prod (a) takes product of elements in A
                 ^

>> prod (a) takes product of elements in a
parse error:

  syntax error

>>> prod (a) takes product of elements in a
                 ^

>> % prod (a) takes product of elements in a
>> prod(a)
ans =  15
>> [r,c]=find(a>=7) % sets r and c equal to the indexes in a that are greater than 7
r =  1
c =  2
>> a
a =

    1.00000   15.00000    2.00000    0.50000

>> a=magic(3)
a =

   8   1   6
   3   5   7
   4   9   2

>> [r,c]=find(a>=7) % sets r and c equal to the indexes in a that are greater than 7
r =

   1
   3
   2

c =

   1
   2
   3

>> floor(a)
ans =

   8   1   6
   3   5   7
   4   9   2

>> a=[1 15 2 0.5]
a =

    1.00000   15.00000    2.00000    0.50000

>> floor(a)
ans =

    1   15    2    0

>> % returns the floor of each element in matrix
>> ceil(a) % returns the ceiling of each element rounded up
ans =

    1   15    2    1

>> rand(3)
ans =

   0.185543   0.042802   0.980059
   0.467701   0.990796   0.303671
   0.048029   0.287584   0.147903

>> % generates a 3x3 matrix of random numbers between 1 and 0
>> max(rand(3),rand(3)) % takes the max of 2 arrays
ans =

   0.84607   0.38947   0.56704
   0.25872   0.56306   0.99888
   0.42713   0.90725   0.23239

>> % correction matrices not arrays
>> max(A,[],1)
ans =

   8   9   7

>> A
A =

   8   1   6
   3   5   7
   4   9   2

>> max(A,[],1) % takes the columnwise maxium max of each column
ans =

   8   9   7

>> max(A,[],2) % takes the rowwise maxium max of each column
ans =

   8
   7
   9

>> max(A)
ans =

   8   9   7

>> max(max(A))
ans =  9