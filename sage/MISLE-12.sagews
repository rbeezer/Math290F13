︠40563513-3c6e-4862-a68b-517aaa75e69ai︠
load('mathbook.css')

︡3bad3d9a-0bbc-400a-83ae-7086adead16e︡︡
︠ed9b0ea0-1b46-4546-b5c5-b0576ef79af1i︠
%html
<div>\(\)</div>
︡3a1218bf-608f-4322-bcb9-25f720701f0c︡{"html":"<div>\\(\\)</div>"}︡
︠0b04c1bd-08c8-4b6b-b465-cb1686fc77fdi︠
%html
<style></style><div class="headerblock">
<div class="title">Demo: Section MISLE</div>
<div class="authorgroup">
<div class="author-name">Robert Beezer</div>
<div class="author-department"></div>
<div class="author-institution"></div>
<div class="author-email"><a href="mailto:"></a></div>
</div>
<div class="date">Math 290, Fall 2013<br>October 3, 2013</div>
</div>
︡cc3202dd-8e4d-46ac-839c-570cb536d455︡{"html":"<style></style><div class=\"headerblock\">\n<div class=\"title\">Demo: Section MISLE</div>\n<div class=\"authorgroup\">\n<div class=\"author-name\">Robert Beezer</div>\n<div class=\"author-department\"></div>\n<div class=\"author-institution\"></div>\n<div class=\"author-email\"><a href=\"mailto:\"></a></div>\n</div>\n<div class=\"date\">Math 290, Fall 2013<br>October 3, 2013</div>\n</div>"}︡
︠b2b71715-31dd-45c8-8758-8e607dc60e90i︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">An invertible matrix</div>
</div></div>
︡3e7d1eb8-f6ee-48a6-964c-d01fb1e6cca9︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">1</div>\n<div class=\"title\">An invertible matrix</div>\n</div></div>"}︡
︠5b4c9379-527b-4d39-8615-64e7a2c899e0i︠
%html
<p>An invertible \(6\times 6\) matrix.</p>
︡9062883e-2a02-415b-9b5f-2b9fe806dcc4︡{"html":"<p>An invertible \\(6\\times 6\\) matrix.</p>"}︡
︠544f0c03-0077-4564-af34-604980ab12ad︠
A = matrix(QQ, [[1, 2, -1, -2, -1, -6], [-2, -3, 1, 3, 1, 6], [2, 4, -1, -4, 0, -7], [0, -1, 1, 2, -1, 1], [2, 4, -2, -4, -1, -8], [1, 0, 0, 0, -1, 2]])
A
︡db61b9a5-9631-4439-8929-c2aa8f0f2fca︡{"stdout":"[ 1  2 -1 -2 -1 -6]\n[-2 -3  1  3  1  6]\n[ 2  4 -1 -4  0 -7]\n[ 0 -1  1  2 -1  1]\n[ 2  4 -2 -4 -1 -8]\n[ 1  0  0  0 -1  2]\n"}︡
︠f8bfe1ab-e0af-407a-af54-a79293afd684︠
Ainv = A.inverse()
Ainv
︡5de47314-e4c8-47c7-b3db-bb2e6995d186︡{"stdout":"[ -8 -12  -6   0   1  -5]\n[  2   6   3   1   1   2]\n[  5   6   4   0  -2   3]\n[ -5  -5  -3   1   2  -3]\n[ -6  -8  -4   0   1  -4]\n[  1   2   1   0   0   1]\n"}︡
︠97152aa9-6313-440d-905c-9d591e613350︠
Ainv*A
︡38123bbb-1379-4537-8409-28f23f058f05︡{"stdout":"[1 0 0 0 0 0]\n[0 1 0 0 0 0]\n[0 0 1 0 0 0]\n[0 0 0 1 0 0]\n[0 0 0 0 1 0]\n[0 0 0 0 0 1]"}︡{"stdout":"\n"}︡
︠db1d8ad8-0685-4a72-8d70-071ce271787d︠
A*Ainv
︡695261a6-1053-4a73-8e82-90240f2a09c3︡{"stdout":"[1 0 0 0 0 0]\n[0 1 0 0 0 0]\n[0 0 1 0 0 0]\n[0 0 0 1 0 0]\n[0 0 0 0 1 0]\n[0 0 0 0 0 1]\n"}︡
︠be6bad81-cec4-45e7-b542-5a9019418d94i︠
%html
<p>Building the inverse, column by column. Use several different columns of the identity matrix.</p>
︡331f5d1d-507f-4e8d-9afb-4450b30c0ddc︡{"html":"<p>Building the inverse, column by column. Use several different columns of the identity matrix.</p>"}︡
︠a3bb1c12-be80-45dc-b496-6f2178570bee︠
y = vector(QQ, [0,0,0,0,1,0])
P = A.augment(y, subdivide=True)
P.rref()
︡a89c7174-b432-4ce0-b9c7-8477e0bf9aed︡{"stdout":"[ 1  0  0  0  0  0| 1]\n[ 0  1  0  0  0  0| 1]\n[ 0  0  1  0  0  0|-2]\n[ 0  0  0  1  0  0| 2]\n[ 0  0  0  0  1  0| 1]\n[ 0  0  0  0  0  1| 0]\n"}︡
︠e6796234-8b8a-42ce-b60a-6bef0d409c01i︠
%html
<p>The following is the approach of Theorem CINM.</p>
︡bf3b4446-269d-4d95-917e-40e1033d0756︡{"html":"<p>The following is the approach of Theorem CINM.</p>"}︡
︠d76a7d68-ec37-49ee-9336-314e5ab01fa6︠
B = A.augment(identity_matrix(6), subdivide=True)
B
︡84aee35d-6a96-47c1-9cc6-2664e0057459︡{"stdout":"[ 1  2 -1 -2 -1 -6| 1  0  0  0  0  0]\n[-2 -3  1  3  1  6| 0  1  0  0  0  0]\n[ 2  4 -1 -4  0 -7| 0  0  1  0  0  0]\n[ 0 -1  1  2 -1  1| 0  0  0  1  0  0]\n[ 2  4 -2 -4 -1 -8| 0  0  0  0  1  0]\n[ 1  0  0  0 -1  2| 0  0  0  0  0  1]\n"}︡
︠34faa7dd-527c-45e9-b2f1-67f687b06f19︠
B.rref()
︡b953d3cc-54be-411f-9bf8-b28c721e0a40︡{"stdout":"[  1   0   0   0   0   0| -8 -12  -6   0   1  -5]\n[  0   1   0   0   0   0|  2   6   3   1   1   2]\n[  0   0   1   0   0   0|  5   6   4   0  -2   3]\n[  0   0   0   1   0   0| -5  -5  -3   1   2  -3]\n[  0   0   0   0   1   0| -6  -8  -4   0   1  -4]\n[  0   0   0   0   0   1|  1   2   1   0   0   1]\n"}︡
︠f77c636f-2695-49e8-8d3a-0c79b009be5ai︠
%html
<div class="section"><div class="heading">
<div class="number">2</div>
<div class="title">A matrix without an inverse</div>
</div></div>
︡75036334-4e64-4d37-840b-870e695a2bf2︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">2</div>\n<div class=\"title\">A matrix without an inverse</div>\n</div></div>"}︡
︠633ae650-31f9-412a-9370-6ee5fe2e00a5i︠
%html
<p>Now, a non-invertible \(6\times 6\) matrix.</p>
︡8c71b896-df6e-4095-a2b9-087c304cdc8f︡{"html":"<p>Now, a non-invertible \\(6\\times 6\\) matrix.</p>"}︡
︠2b31a61c-b58b-402e-a9e7-ee9443388a25︠
C = matrix(QQ, [[-1, 0, 2, 8, 8, 0], [-1, -1, 0, 1, 0, 3], [-1, -2, -1, -4, -4, 5], [1, 2, 1, 4, 5, -5], [-1, -1, -1, -1, -8, 4], [0, 1, 0, 3, 5, -1]])
C
︡7b372923-62f3-4080-9c32-f300e60c6bb8︡{"stdout":"[-1  0  2  8  8  0]\n[-1 -1  0  1  0  3]\n[-1 -2 -1 -4 -4  5]\n[ 1  2  1  4  5 -5]\n[-1 -1 -1 -1 -8  4]\n[ 0  1  0  3  5 -1]\n"}︡
︠146ca604-ab05-4737-93d2-de130bb2f2c8︠
C.inverse()
︡bb4f83e4-c111-43f7-a85b-90122c69ea64︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/mnt/home/boW082TR/.sagemathcloud/sage_server.py\", line 633, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"matrix2.pyx\", line 7532, in sage.matrix.matrix2.Matrix.inverse (sage/matrix/matrix2.c:40686)\n  File \"matrix_rational_dense.pyx\", line 650, in sage.matrix.matrix_rational_dense.Matrix_rational_dense.__invert__ (sage/matrix/matrix_rational_dense.c:9436)\n  File \"matrix_rational_dense.pyx\", line 756, in sage.matrix.matrix_rational_dense.Matrix_rational_dense.__invert__main (sage/matrix/matrix_rational_dense.c:10031)\n  File \"matrix_rational_dense.pyx\", line 2658, in sage.matrix.matrix_rational_dense.Matrix_rational_dense._invert_pari (sage/matrix/matrix_rational_dense.c:24492)\nZeroDivisionError: input matrix must be nonsingular\n"}︡
︠6f18f728-32d7-43f3-8851-b2a015d24b79i︠
%html
<p>Trying to build the inverse, column by column.  Try different columns.</p>
︡4fed6455-4bd7-4afa-a8c4-35b47fe92cd2︡{"html":"<p>Trying to build the inverse, column by column.  Try different columns.</p>"}︡
︠8a43bf67-07db-4910-8a0d-2a0344d8dcdc︠
y = vector(QQ, [1,0,0,0,0,0])
P = C.augment(y, subdivide=True)
P.rref()
︡490d49c4-f007-4df1-bddb-f75d6d9514e3︡{"stdout":"[ 1  0  0 -4  0 -2| 0]\n[ 0  1  0  3  0 -1| 0]\n[ 0  0  1  2  0 -1| 0]\n[ 0  0  0  0  1  0| 0]\n[ 0  0  0  0  0  0| 1]\n[ 0  0  0  0  0  0| 0]\n"}︡
︠f4b957d8-2a01-426c-a2eb-c942ff196be9i︠
%html
<p>Any one of these results is enough to conclude that \(C\) does not have an inverse, following the logic of Example MWIAA.</p>
︡8d062acc-eecb-43c5-844e-af8132a1f53c︡{"html":"<p>Any one of these results is enough to conclude that \\(C\\) does not have an inverse, following the logic of Example MWIAA.</p>"}︡
︠dde98aa3-5803-48e0-937e-9f6c0e1bab08i︠
%html
<p>It also happens that <em>no</em> column of the identity matrix leads to a
       consistent system (for this matrix).</p>
︡92996172-42e6-4fa2-aa2b-280a0eed0484︡{"html":"<p>It also happens that <em>no</em> column of the identity matrix leads to a\n       consistent system (for this matrix).</p>"}︡
︠56622fa7-fcb2-40b6-b4b8-14e4ae2331df︠
D = C.augment(identity_matrix(6), subdivide=True)
D
︡1c37e31d-1d3f-4da2-b05f-61399312abaf︡{"stdout":"[-1  0  2  8  8  0| 1  0  0  0  0  0]\n[-1 -1  0  1  0  3| 0  1  0  0  0  0]\n[-1 -2 -1 -4 -4  5| 0  0  1  0  0  0]\n[ 1  2  1  4  5 -5| 0  0  0  1  0  0]\n[-1 -1 -1 -1 -8  4| 0  0  0  0  1  0]\n[ 0  1  0  3  5 -1| 0  0  0  0  0  1]\n"}︡
︠221295db-de60-4946-86f6-ffd4596a3ed4︠
D.rref()
︡276ccaab-b07e-4260-adab-a49dcebe6447︡{"stdout":"[    1     0     0    -4     0    -2|    0    -1     0  -5/8  -5/8  -3/8]\n[    0     1     0     3     0    -1|    0     0     0   5/8   5/8   3/8]\n[    0     0     1     2     0    -1|    0     1     0     1     0    -1]\n[    0     0     0     0     1     0|    0     0     0  -1/8  -1/8   1/8]\n[    0     0     0     0     0     0|    1    -3     0 -13/8   3/8   5/8]\n[    0     0     0     0     0     0|    0     0     1   9/8   1/8  -1/8]\n"}︡
︠b8acc018-5cc6-4ead-b887-e70c3c1afa98︠

︡2943917a-d5c2-4841-9487-370245a8b1fe︡︡









