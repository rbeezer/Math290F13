︠40563513-3c6e-4862-a68b-517aaa75e69ai︠
load('mathbook.css')

︡9f71a049-caa2-4d63-9e77-27a1651058b0︡{"once":false,"file":{"show":false,"uuid":"db0fa80f-8a2d-4b83-910b-3cc8127f55fc","filename":"mathbook.css"}}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"$.get(\"/blobs/mathbook.css?uuid=db0fa80f-8a2d-4b83-910b-3cc8127f55fc\", function(css) { $('<style type=text/css></style>').html(css).appendTo(\"body\")});"},"once":false}︡
︠ed9b0ea0-1b46-4546-b5c5-b0576ef79af1i︠
%html
<div>\(\)</div>
︡38a434e3-4519-471a-91f9-d5cc4786bfb3︡{"html":"<div>\\(\\)</div>"}︡
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
︡7efff1c8-f990-4afb-9487-ef009f499f17︡{"html":"<style></style><div class=\"headerblock\">\n<div class=\"title\">Demo: Section MISLE</div>\n<div class=\"authorgroup\">\n<div class=\"author-name\">Robert Beezer</div>\n<div class=\"author-department\"></div>\n<div class=\"author-institution\"></div>\n<div class=\"author-email\"><a href=\"mailto:\"></a></div>\n</div>\n<div class=\"date\">Math 290, Fall 2013<br>October 3, 2013</div>\n</div>"}︡
︠b2b71715-31dd-45c8-8758-8e607dc60e90i︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">An invertible matrix</div>
</div></div>
︡0075aa17-8a21-4a39-aa58-215982add132︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">1</div>\n<div class=\"title\">An invertible matrix</div>\n</div></div>"}︡
︠5b4c9379-527b-4d39-8615-64e7a2c899e0i︠
%html
<p>An invertible \(6\times 6\) matrix.</p>
︡36263d77-ecc1-4985-80de-5301060eabe8︡{"html":"<p>An invertible \\(6\\times 6\\) matrix.</p>"}︡
︠544f0c03-0077-4564-af34-604980ab12ad︠
A = matrix(QQ, [[1, 2, -1, -2, -1, -6], [-2, -3, 1, 3, 1, 6], [2, 4, -1, -4, 0, -7], [0, -1, 1, 2, -1, 1], [2, 4, -2, -4, -1, -8], [1, 0, 0, 0, -1, 2]])
A
︡ede7fd4f-bdc6-45eb-ab25-6baee99b66c2︡{"stdout":"[ 1  2 -1 -2 -1 -6]\n[-2 -3  1  3  1  6]\n[ 2  4 -1 -4  0 -7]\n[ 0 -1  1  2 -1  1]\n[ 2  4 -2 -4 -1 -8]\n[ 1  0  0  0 -1  2]\n"}︡
︠f8bfe1ab-e0af-407a-af54-a79293afd684︠
Ainv = A.inverse()
Ainv
︡70c6eeda-667b-4c92-99e3-813a2dcfed93︡{"stdout":"[ -8 -12  -6   0   1  -5]\n[  2   6   3   1   1   2]\n[  5   6   4   0  -2   3]\n[ -5  -5  -3   1   2  -3]\n[ -6  -8  -4   0   1  -4]\n[  1   2   1   0   0   1]\n"}︡
︠97152aa9-6313-440d-905c-9d591e613350︠
Ainv*A
︡e6fae431-47c1-4b9a-a3f0-7efa4c368cd8︡{"stdout":"[1 0 0 0 0 0]\n[0 1 0 0 0 0]\n[0 0 1 0 0 0]\n[0 0 0 1 0 0]\n[0 0 0 0 1 0]\n[0 0 0 0 0 1]\n"}︡
︠db1d8ad8-0685-4a72-8d70-071ce271787d︠
A*Ainv
︡b3a4412a-7d19-4362-8291-f96ab494158a︡{"stdout":"[1 0 0 0 0 0]\n[0 1 0 0 0 0]\n[0 0 1 0 0 0]\n[0 0 0 1 0 0]\n[0 0 0 0 1 0]\n[0 0 0 0 0 1]\n"}︡
︠be6bad81-cec4-45e7-b542-5a9019418d94i︠
%html
<p>Building the inverse, column by column. Use several different columns of the identity matrix.</p>
︡5db6cd05-24e5-43e3-bfe1-acc6f2ba8cbb︡{"html":"<p>Building the inverse, column by column. Use several different columns of the identity matrix.</p>"}︡
︠a3bb1c12-be80-45dc-b496-6f2178570bee︠
y = vector(QQ, [0,0,0,1,0,0])
P = A.augment(y, subdivide=True)
P.rref()
︡19c4e4da-2b2f-4675-862e-1aefda986d50︡{"stdout":"[1 0 0 0 0 0|0]\n[0 1 0 0 0 0|1]\n[0 0 1 0 0 0|0]\n[0 0 0 1 0 0|1]\n[0 0 0 0 1 0|0]\n[0 0 0 0 0 1|0]\n"}︡
︠e6796234-8b8a-42ce-b60a-6bef0d409c01i︠
%html
<p>The following is the approach of Theorem CINM.</p>
︡34e1d6b5-a90d-4810-ace2-d7ab5402c721︡{"html":"<p>The following is the approach of Theorem CINM.</p>"}︡
︠d76a7d68-ec37-49ee-9336-314e5ab01fa6︠
B = A.augment(identity_matrix(6), subdivide=True)
B
︡f743f643-90e6-4f0d-afff-0ec3ce7c4b05︡{"stdout":"[ 1  2 -1 -2 -1 -6| 1  0  0  0  0  0]\n[-2 -3  1  3  1  6| 0  1  0  0  0  0]\n[ 2  4 -1 -4  0 -7| 0  0  1  0  0  0]\n[ 0 -1  1  2 -1  1| 0  0  0  1  0  0]\n[ 2  4 -2 -4 -1 -8| 0  0  0  0  1  0]\n[ 1  0  0  0 -1  2| 0  0  0  0  0  1]\n"}︡
︠34faa7dd-527c-45e9-b2f1-67f687b06f19︠
B.rref()
︡441a9202-858b-492f-88f3-46bf642d7184︡{"stdout":"[  1   0   0   0   0   0| -8 -12  -6   0   1  -5]\n[  0   1   0   0   0   0|  2   6   3   1   1   2]\n[  0   0   1   0   0   0|  5   6   4   0  -2   3]\n[  0   0   0   1   0   0| -5  -5  -3   1   2  -3]\n[  0   0   0   0   1   0| -6  -8  -4   0   1  -4]\n[  0   0   0   0   0   1|  1   2   1   0   0   1]\n"}︡
︠f77c636f-2695-49e8-8d3a-0c79b009be5ai︠
%html
<div class="section"><div class="heading">
<div class="number">2</div>
<div class="title">A matrix without an inverse</div>
</div></div>
︡8c9670f0-4efe-47d7-92ce-5012feeb99e9︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">2</div>\n<div class=\"title\">A matrix without an inverse</div>\n</div></div>"}︡
︠633ae650-31f9-412a-9370-6ee5fe2e00a5i︠
%html
<p>Now, a non-invertible \(6\times 6\) matrix.</p>
︡3048d652-2865-4217-a367-b702f772e0aa︡{"html":"<p>Now, a non-invertible \\(6\\times 6\\) matrix.</p>"}︡
︠2b31a61c-b58b-402e-a9e7-ee9443388a25︠
C = matrix(QQ, [[-1, 0, 2, 8, 8, 0], [-1, -1, 0, 1, 0, 3], [-1, -2, -1, -4, -4, 5], [1, 2, 1, 4, 5, -5], [-1, -1, -1, -1, -8, 4], [0, 1, 0, 3, 5, -1]])
C
︡82c07eca-4a60-4367-834a-e5b86b31f616︡{"stdout":"[-1  0  2  8  8  0]\n[-1 -1  0  1  0  3]\n[-1 -2 -1 -4 -4  5]\n[ 1  2  1  4  5 -5]\n[-1 -1 -1 -1 -8  4]\n[ 0  1  0  3  5 -1]\n"}︡
︠146ca604-ab05-4737-93d2-de130bb2f2c8︠
C.inverse()
︡95a3403d-904c-472b-ab67-6160f00c213e︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/mnt/home/boW082TR/.sagemathcloud/sage_server.py\", line 633, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"matrix2.pyx\", line 7532, in sage.matrix.matrix2.Matrix.inverse (sage/matrix/matrix2.c:40686)\n  File \"matrix_rational_dense.pyx\", line 650, in sage.matrix.matrix_rational_dense.Matrix_rational_dense.__invert__ (sage/matrix/matrix_rational_dense.c:9436)\n  File \"matrix_rational_dense.pyx\", line 756, in sage.matrix.matrix_rational_dense.Matrix_rational_dense.__invert__main (sage/matrix/matrix_rational_dense.c:10031)\n  File \"matrix_rational_dense.pyx\", line 2658, in sage.matrix.matrix_rational_dense.Matrix_rational_dense._invert_pari (sage/matrix/matrix_rational_dense.c:24492)\nZeroDivisionError: input matrix must be nonsingular\n"}︡
︠6f18f728-32d7-43f3-8851-b2a015d24b79i︠
%html
<p>Trying to build the inverse, column by column.  Try different columns.</p>
︡f2e8a9c0-088a-492a-b3ac-645f2241546b︡{"html":"<p>Trying to build the inverse, column by column.  Try different columns.</p>"}︡
︠8a43bf67-07db-4910-8a0d-2a0344d8dcdc︠
y = vector(QQ, [0,0,0,0,1,0])
P = C.augment(y, subdivide=True)
P.rref()
︡72780885-1b3a-4c2e-b73f-311935f05b29︡{"stdout":"[ 1  0  0 -4  0 -2| 0]\n[ 0  1  0  3  0 -1| 0]\n[ 0  0  1  2  0 -1| 0]\n[ 0  0  0  0  1  0| 0]\n[ 0  0  0  0  0  0| 1]\n[ 0  0  0  0  0  0| 0]\n"}︡
︠f4b957d8-2a01-426c-a2eb-c942ff196be9i︠
%html
<p>Any one of these results is enough to conclude that \(C\) does not have an inverse, following the logic of Example MWIAA.</p>
︡1942d195-aa26-4a34-80ea-329f4500ae95︡{"html":"<p>Any one of these results is enough to conclude that \\(C\\) does not have an inverse, following the logic of Example MWIAA.</p>"}︡
︠dde98aa3-5803-48e0-937e-9f6c0e1bab08i︠
%html
<p>It also happens that <em>no</em> column of the identity matrix leads to a
       consistent system (for this matrix).</p>
︡2ed80f15-096a-4331-8200-4f7ae265197f︡{"html":"<p>It also happens that <em>no</em> column of the identity matrix leads to a\n       consistent system (for this matrix).</p>"}︡
︠56622fa7-fcb2-40b6-b4b8-14e4ae2331df︠
D = C.augment(identity_matrix(6), subdivide=True)
D
︡abf5b8df-c651-4d54-9bf7-9d0319445245︡{"stdout":"[-1  0  2  8  8  0| 1  0  0  0  0  0]\n[-1 -1  0  1  0  3| 0  1  0  0  0  0]\n[-1 -2 -1 -4 -4  5| 0  0  1  0  0  0]\n[ 1  2  1  4  5 -5| 0  0  0  1  0  0]\n[-1 -1 -1 -1 -8  4| 0  0  0  0  1  0]\n[ 0  1  0  3  5 -1| 0  0  0  0  0  1]\n"}︡
︠221295db-de60-4946-86f6-ffd4596a3ed4︠
D.rref()
︡e4d8dccd-c3ab-4583-9275-62bba4d458fc︡{"stdout":"[    1     0     0    -4     0    -2|    0    -1     0  -5/8  -5/8  -3/8]\n[    0     1     0     3     0    -1|    0     0     0   5/8   5/8   3/8]\n[    0     0     1     2     0    -1|    0     1     0     1     0    -1]\n[    0     0     0     0     1     0|    0     0     0  -1/8  -1/8   1/8]\n[    0     0     0     0     0     0|    1    -3     0 -13/8   3/8   5/8]\n[    0     0     0     0     0     0|    0     0     1   9/8   1/8  -1/8]\n"}︡
︠b8acc018-5cc6-4ead-b887-e70c3c1afa98︠

︡2943917a-d5c2-4841-9487-370245a8b1fe︡︡









