︠82b3332e-68ac-48b5-93ed-4125fada6e78i︠
load('mathbook.css')

︡215255c1-284d-45af-9b77-167fbfb0d2ef︡︡
︠face0f76-5041-455e-986e-0f5f67ad2465i︠
%html
<div>\(\)</div>
︡dbb7857a-e4ff-49b3-aa46-587d359e53ef︡{"html":"<div>\\(\\)</div>"}︡
︠e65f5ebf-6a8e-495a-88a8-6b424a83c639i︠
%html
<style></style><div class="headerblock">
<div class="title">Demo: Section SS</div>
<div class="authorgroup">
<div class="author-name">Robert Beezer</div>
<div class="author-department"></div>
<div class="author-institution"></div>
<div class="author-email"><a href="mailto:"></a></div>
</div>
<div class="date">Math 290, Fall 2013<br>September 19, 2013</div>
</div>
︡28177594-d55d-4274-805c-f5b17e126e93︡{"html":"<style></style><div class=\"headerblock\">\n<div class=\"title\">Demo: Section SS</div>\n<div class=\"authorgroup\">\n<div class=\"author-name\">Robert Beezer</div>\n<div class=\"author-department\"></div>\n<div class=\"author-institution\"></div>\n<div class=\"author-email\"><a href=\"mailto:\"></a></div>\n</div>\n<div class=\"date\">Math 290, Fall 2013<br>September 19, 2013</div>\n</div>"}︡
︠a2c168f2-e867-4bc1-93d2-a95128786d39i︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">Vector Spaces</div>
</div></div>
︡ccf4e1dd-ddc3-49ca-af65-0cdf5dd42afb︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">1</div>\n<div class=\"title\">Vector Spaces</div>\n</div></div>"}︡
︠cff20336-aa4e-4ba7-81d9-29998bb64f94i︠
%html
<p>It is easy in Sage to make a reasonable facsimile of \(\mathbf{C}^n\).  We just restrict our attention to rational entries rather than complex entries.</p>
︡182b41d5-3196-4aac-9094-f46050d70217︡{"html":"<p>It is easy in Sage to make a reasonable facsimile of \\(\\mathbf{C}^n\\).  We just restrict our attention to rational entries rather than complex entries.</p>"}︡
︠0957666c-2d92-4731-b466-da7d160fde8d︠
V = QQ^4
V
︡4e75e025-2520-4928-aaf2-83dd4e9c29e5︡{"stdout":"Vector space of dimension 4 over Rational Field\n"}︡
︠aab7b6c3-5f42-441d-90e6-60ea77b51b2ei︠
%html
<p>We can test membership using the word/command <tt class="code">in</tt>.</p>
︡cf2e5fa4-5a0c-42b3-8ff7-a4cf81d5dd4e︡{"html":"<p>We can test membership using the word/command <tt class=\"code\">in</tt>.</p>"}︡
︠fd947223-7034-4375-9d4d-1861c4eec090︠
v=vector([1,2,3,4])
v
︡9f72b216-cbd5-4dfd-a89e-877b998a6c07︡{"stdout":"(1, 2, 3, 4)\n"}︡
︠2af38896-911f-4028-9049-402680c80c97︠
v in V
︡cf3ff2b2-408a-4f99-9a3a-fa8d0d36560a︡{"stdout":"True\n"}︡
︠39d6b818-57b2-4726-8434-da7558acb89d︠
w=vector([1,2,3])
w
︡10984446-264a-49ce-9470-abaa3abd4046︡{"stdout":"(1, 2, 3)\n"}︡
︠357d82f4-4afc-4b05-94db-c08098941115︠
w in V
︡e923d07d-4542-4077-b870-cb00e01dce84︡{"stdout":"False\n"}︡
︠df82209c-7bff-495c-aa64-3b2ab67b1fd4i︠
%html
<div class="section"><div class="heading">
<div class="number">2</div>
<div class="title">Vector Form of Solutions to Homogeneous Systems</div>
</div></div>
w
=
︡80b6a9da-3a1a-41ff-b732-92edec2e9ffb︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">2</div>\n<div class=\"title\">Vector Form of Solutions to Homogeneous Systems</div>\n</div></div>"}︡
︠4e6f872c-1f0e-4d70-968a-9197892c675di︠
%html
<p>These are the coefficient matrix and vector of constants from yesterday's big system that led to a colored matrix in reduced row-echelon form matrix.</p>
︡3bc3145b-3a91-428b-97ed-032a1d909b26︡{"html":"<p>These are the coefficient matrix and vector of constants from yesterday's big system that led to a colored matrix in reduced row-echelon form matrix.</p>"}︡
︠86844839-3cb7-4920-ab37-703d77c6868ai︠
%html
<p>The <tt class="code">.right_kernel()</tt> method will give the vectors of the vector form of the solutions to a homogeneous system when used with the <tt class="code">basis='pivot'</tt> option.</p>
︡884f152b-3b17-4864-acb7-769333d68939︡{"html":"<p>The <tt class=\"code\">.right_kernel()</tt> method will give the vectors of the vector form of the solutions to a homogeneous system when used with the <tt class=\"code\">basis='pivot'</tt> option.</p>"}︡
︠d759e85b-a808-4e44-a865-3dd716ecc82b︠
A = matrix(QQ, [[ 1, 2, 12, 1, 13, 5, 2],[ -2, -3, -21, 0, -13, 2, -5],[ 1, 3, 15, 4, 28, 25, 0],[ -2, -3, -21, -1, -15, -6, -3],[ 1, 1, 9, 1, 4, 9, 1]])
b = vector(QQ, [8, -15, 7, -10, 3])
︡ca9f76e4-d68d-4557-a6eb-25f1de9b423a︡
︠ecfb8e10-d138-4c5c-998e-c634e9b6acbb︠
b
︡2e380e4f-03c9-4093-8410-6360cee862fe︡{"stdout":"(8, -15, 7, -10, 3)\n"}︡
︠b79d36ba-b4c3-4c56-af50-95ce2846c621︠
A
︡cc1993a2-0646-4155-a4d4-ea8ef072216e︡{"stdout":"[  1   2  12   1  13   5   2]\n[ -2  -3 -21   0 -13   2  -5]\n[  1   3  15   4  28  25   0]\n[ -2  -3 -21  -1 -15  -6  -3]\n[  1   1   9   1   4   9   1]\n"}︡
︠d632702b-cf7b-4c11-ae54-8af46a9a787b︠
A.right_kernel(basis='pivot')
︡f7a9a499-2655-4382-83ba-457ca7b0b610︡{"stdout":"Vector space of degree 7 and dimension 3 over Rational Field\nUser basis matrix:\n[-6 -3  1  0  0  0  0]\n[ 7 -9  0 -2  1  0  0]\n[-5  4  0 -8  0  1  0]\n"}︡
︠c0fab892-af4c-4e17-866f-ebdc7f0fa165i︠
%html
<p>Rows of the <q>basis matrix</q> are vectors in yesterday's linear combination (with scalars \(x_3\), \(x_5\), \(x_6\)).  This is a spanning set for null space of the matrix \(A\).</p>
︡9de3672a-b90d-41e1-b1ee-5977e44af5dc︡{"html":"<p>Rows of the <q>basis matrix</q> are vectors in yesterday's linear combination (with scalars \\(x_3\\), \\(x_5\\), \\(x_6\\)).  This is a spanning set for null space of the matrix \\(A\\).</p>"}︡
︠a65c696b-062a-4d36-969f-bb76e9552a13i︠
%html
<p>Theorem PSPHS can explain how to use a single solution to the non-homogeneous system and the spanning set of the null space of the coefficient matrix to arrive at all solutions to the system.  Here is a single solution to the system.</p>
︡ae68d289-d714-4649-ad93-f41c78206c3d︡{"html":"<p>Theorem PSPHS can explain how to use a single solution to the non-homogeneous system and the spanning set of the null space of the coefficient matrix to arrive at all solutions to the system.  Here is a single solution to the system.</p>"}︡
︠3227f90f-41c4-4a27-b42a-4a9ac2bcc0a3︠
A.solve_right(b)
︡2d28f36a-de8d-4d87-b306-4fbccfb9a8db︡{"stdout":"(-3, 2, 0, 1, 0, 0, 3)\n"}︡
︠e98849f2-340a-4637-8ead-b546b07bc32bi︠
%html
<div class="section"><div class="heading">
<div class="number">3</div>
<div class="title">Spanning Sets</div>
</div></div>
︡26889b01-50cc-4296-b71b-07ae812ed440︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">3</div>\n<div class=\"title\">Spanning Sets</div>\n</div></div>"}︡
︠5b0545f0-8fbc-4470-a504-e0eae1781435i︠
%html
<p>Example ABS from FCLA.</p>
︡978dde42-a2d4-48f6-b953-f04e0e4a3c08︡{"html":"<p>Example ABS from FCLA.</p>"}︡
︠7d889fd5-d3b8-4d7e-9e62-3e5bc5a26491︠
x1 = vector(QQ,[1,1,3,1])
x2 = vector(QQ,[2,1,2,-1])
x3 = vector(QQ,[7,3,5,-5])
x4 = vector(QQ,[1,1,-1,2])
x5 = vector(QQ,[-1,0,9,0])
W = span([x1,x2,x3,x4,x5])
W
︡e7f77dbb-9a23-4da7-a66e-370a80e7db0a︡{"stdout":"Vector space of degree 4 and dimension 3 over Rational Field\nBasis matrix:\n[   1    0    0 -9/4]\n[   0    1    0    4]\n[   0    0    1 -1/4]\n"}︡
︠72d27b8a-8772-4219-ae33-738c3c491b9fi︠
%html
<p>Make a <q>random</q> linear combination and test for membership (which will be trivially true).  There are more like this.</p>
︡ffbed6e5-c548-40ee-854d-e056b6e62d69︡{"html":"<p>Make a <q>random</q> linear combination and test for membership (which will be trivially true).  There are more like this.</p>"}︡
︠d6be927d-74dc-4853-912c-83bdf8054031︠
x  = 2*x1 +5*x2 +(-6)*x3 +123*x4 + 2*x5
x
︡f8769525-280a-4f83-af9c-6256632acd25︡{"stdout":"(91, 112, -119, 273)\n"}︡
︠9d32e0f4-0e50-4966-be98-624470903e5f︠
x in W
︡d31c2ea7-53b9-4523-b79b-af8f49d55e21︡{"stdout":"True\n"}︡
︠f544be3b-15cb-4d6f-90c4-eabb4a1f2098i︠
%html
<p>But not any old vector is in \(W\).</p>
︡4209e917-89c2-44d9-9134-09ffbed38270︡{"html":"<p>But not any old vector is in \\(W\\).</p>"}︡
︠0f7a7b61-6ca2-46e2-a3c7-183bd0045e6e︠
v = vector(QQ, [1, 1, -3, 2])
v in W
︡36b259ae-fd25-4581-baee-4053fbf59219︡{"stdout":"False\n"}︡
︠cf1dd010-14c6-491d-86a6-c691adfde3d6︠









