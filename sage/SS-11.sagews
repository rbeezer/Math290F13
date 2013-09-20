︠82b3332e-68ac-48b5-93ed-4125fada6e78i︠
load('mathbook.css')

︡af4c09c1-0aac-4724-8bd1-4999da3d54cc︡{"file":{"show":false,"uuid":"978cc70e-26ea-4f13-bf36-77a27615ee1c","filename":"mathbook.css"}}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"$.get(\"/blobs/mathbook.css?uuid=978cc70e-26ea-4f13-bf36-77a27615ee1c\", function(css) { $('<style type=text/css></style>').html(css).appendTo(\"body\")});"},"once":true}︡
︠face0f76-5041-455e-986e-0f5f67ad2465i︠
%html
<div>\(\)</div>
︡ea8041f8-c83c-4fe5-862d-ee7f34c786e3︡{"html":"<div>\\(\\)</div>"}︡
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
︡ee2e05ac-82d7-4536-b196-d445c96af7ac︡{"html":"<style></style><div class=\"headerblock\">\n<div class=\"title\">Demo: Section SS</div>\n<div class=\"authorgroup\">\n<div class=\"author-name\">Robert Beezer</div>\n<div class=\"author-department\"></div>\n<div class=\"author-institution\"></div>\n<div class=\"author-email\"><a href=\"mailto:\"></a></div>\n</div>\n<div class=\"date\">Math 290, Fall 2013<br>September 19, 2013</div>\n</div>"}︡
︠a2c168f2-e867-4bc1-93d2-a95128786d39i︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">Vector Spaces</div>
</div></div>
︡861aa9ed-c826-48b5-8109-3219f792db1e︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">1</div>\n<div class=\"title\">Vector Spaces</div>\n</div></div>"}︡
︠cff20336-aa4e-4ba7-81d9-29998bb64f94i︠
%html
<p>It is easy in Sage to make a reasonable facsimile of \(\mathbf{C}^n\).  We just restrict our attention to rational entries rather than complex entries.</p>
︡c0c7c683-c156-4434-8c75-c64397b984d8︡{"html":"<p>It is easy in Sage to make a reasonable facsimile of \\(\\mathbf{C}^n\\).  We just restrict our attention to rational entries rather than complex entries.</p>"}︡
︠0957666c-2d92-4731-b466-da7d160fde8d︠
V = QQ^4
V
︡f5dcb3d4-9730-449a-a31b-04efc3a5962f︡{"stdout":"Vector space of dimension 4 over Rational Field\n"}︡
︠aab7b6c3-5f42-441d-90e6-60ea77b51b2ei︠
%html
<p>We can test membership using the word/command <tt class="code">in</tt>.</p>
︡9860bbf9-5f3c-48d3-9ea1-e5d49ea63484︡{"html":"<p>We can test membership using the word/command <tt class=\"code\">in</tt>.</p>"}︡
︠42fef802-e40a-4539-8415-0db47a71d2c3︠
x = vector([1,2,3,4])
x
︡7ab259da-41ee-4d9d-a6e6-50ed43f3cd5f︡{"stdout":"(1, 2, 3, 4)\n"}︡
︠2af38896-911f-4028-9049-402680c80c97︠
x in V
︡8f3921fb-8970-4d2a-b3fd-4f3ad7b60ae8︡{"stdout":"True\n"}︡
︠e940926a-55f8-4283-a73e-adf7daec621c︠
u = vector([1,2,3])
u
︡f509c353-c5e6-483b-802e-4ce08708440f︡{"stdout":"(1, 2, 3)\n"}︡
︠a4879874-2f89-47e4-8980-cfece31189f1︠
u in V
︡a2360134-be73-46f7-9867-9a8a3dae4ae1︡{"stdout":"False\n"}︡
︠df82209c-7bff-495c-aa64-3b2ab67b1fd4i︠
%html
<div class="section"><div class="heading">
<div class="number">2</div>
<div class="title">Vector Form of Solutions to Homogeneous Systems</div>
</div></div>
︡2a59f3c8-a30d-4eb1-a762-63466485735a︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">2</div>\n<div class=\"title\">Vector Form of Solutions to Homogeneous Systems</div>\n</div></div>"}︡
︠4e6f872c-1f0e-4d70-968a-9197892c675di︠
%html
<p>These are the coefficient matrix and vector of constants from yesterday's big system that led to a colored matrix in reduced row-echelon form matrix.</p>
︡57b421bd-aa2e-48a3-b339-6fcd4bde0ab3︡{"html":"<p>These are the coefficient matrix and vector of constants from yesterday's big system that led to a colored matrix in reduced row-echelon form matrix.</p>"}︡
︠86844839-3cb7-4920-ab37-703d77c6868ai︠
%html
<p>The <tt class="code">.right_kernel()</tt> method will give the vectors of the vector form of the solutions to a homogeneous system when used with the <tt class="code">basis='pivot'</tt> option.</p>
︡7bd9ffe4-951a-4d58-bea6-c591423c4878︡{"html":"<p>The <tt class=\"code\">.right_kernel()</tt> method will give the vectors of the vector form of the solutions to a homogeneous system when used with the <tt class=\"code\">basis='pivot'</tt> option.</p>"}︡
︠d759e85b-a808-4e44-a865-3dd716ecc82b︠
A = matrix(QQ, [[ 1, 2, 12, 1, 13, 5, 2],[ -2, -3, -21, 0, -13, 2, -5],[ 1, 3, 15, 4, 28, 25, 0],[ -2, -3, -21, -1, -15, -6, -3],[ 1, 1, 9, 1, 4, 9, 1]])
b = vector(QQ, [8, -15, 7, -10, 3])
︡bc0e81c2-5ba1-478a-882c-b4b7b74d4acb︡
︠aca5e3a0-1dd1-4834-9ce0-01b818bfc7ea︠
A
︡3f9163dc-f285-409e-ae4a-57530d469014︡{"stdout":"[  1   2  12   1  13   5   2]\n[ -2  -3 -21   0 -13   2  -5]\n[  1   3  15   4  28  25   0]\n[ -2  -3 -21  -1 -15  -6  -3]\n[  1   1   9   1   4   9   1]\n"}︡
︠7166a386-13b7-44a1-b15b-247cdab85d24︠
b
︡07e64153-ca7f-4b98-af18-3a76575d5d69︡{"stdout":"(8, -15, 7, -10, 3)\n"}︡
︠d632702b-cf7b-4c11-ae54-8af46a9a787b︠
A.right_kernel(basis='pivot')
︡f8a1f017-dd0d-40ee-b12b-8f8c473df4a9︡{"stdout":"Vector space of degree 7 and dimension 3 over Rational Field\nUser basis matrix:\n[-6 -3  1  0  0  0  0]\n[ 7 -9  0 -2  1  0  0]\n[-5  4  0 -8  0  1  0]"}︡{"stdout":"\n"}︡
︠c0fab892-af4c-4e17-866f-ebdc7f0fa165i︠
%html
<p>Rows of the <q>basis matrix</q> are vectors in yesterday's linear combination (with scalars \(x_3\), \(x_5\), \(x_6\)).  This is a spanning set for null space of the matrix \(A\).</p>
︡5c9609f7-fad2-45f9-a28b-15dba8c54d8a︡{"html":"<p>Rows of the <q>basis matrix</q> are vectors in yesterday's linear combination (with scalars \\(x_3\\), \\(x_5\\), \\(x_6\\)).  This is a spanning set for null space of the matrix \\(A\\).</p>"}︡
︠a65c696b-062a-4d36-969f-bb76e9552a13i︠
%html
<p>Theorem PSPHS can explain how to use a single solution to the non-homogeneous system and the spanning set of the null space of the coefficient matrix to arrive at all solutions to the system.  Here is a single solution to the system.</p>
︡6c7dc89f-97d3-4623-a906-29fa37c69b3f︡{"html":"<p>Theorem PSPHS can explain how to use a single solution to the non-homogeneous system and the spanning set of the null space of the coefficient matrix to arrive at all solutions to the system.  Here is a single solution to the system.</p>"}︡
︠3227f90f-41c4-4a27-b42a-4a9ac2bcc0a3︠
A.solve_right(b)
︡636cff06-b5d2-4689-9b63-e3dc6f4f3ef1︡{"stdout":"(-3, 2, 0, 1, 0, 0, 3)\n"}︡
︠e98849f2-340a-4637-8ead-b546b07bc32bi︠
%html
<div class="section"><div class="heading">
<div class="number">3</div>
<div class="title">Spanning Sets</div>
</div></div>
︡4fdef64b-8cbf-494f-ac8f-88ad0f0f2451︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">3</div>\n<div class=\"title\">Spanning Sets</div>\n</div></div>"}︡
︠5b0545f0-8fbc-4470-a504-e0eae1781435i︠
%html
<p>Example ABS from FCLA.</p>
︡0023c1d6-d8f6-463e-b1e9-595e5be0abee︡{"html":"<p>Example ABS from FCLA.</p>"}︡
︠7d889fd5-d3b8-4d7e-9e62-3e5bc5a26491︠
x1 = vector(QQ,[1,1,3,1])
x2 = vector(QQ,[2,1,2,-1])
x3 = vector(QQ,[7,3,5,-5])
x4 = vector(QQ,[1,1,-1,2])
x5 = vector(QQ,[-1,0,9,0])
W = span([x1,x2,x3,x4,x5])
W
︡be36f3ff-e1c2-4b49-8c59-82b22aeaca78︡{"stdout":"Vector space of degree 4 and dimension 3 over Rational Field\nBasis matrix:\n[   1    0    0 -9/4]\n[   0    1    0    4]\n[   0    0    1 -1/4]\n"}︡
︠72d27b8a-8772-4219-ae33-738c3c491b9fi︠
%html
<p>Make a <q>random</q> linear combination and test for membership (which will be trivially true).  There are more like this.</p>
︡6ca315bd-4a31-4f42-9566-13a8856c3e00︡{"html":"<p>Make a <q>random</q> linear combination and test for membership (which will be trivially true).  There are more like this.</p>"}︡
︠ec59588f-2099-4aca-b340-2850258922cc︠
w = 2*x1 +7*x2+8*x3+(-9)*x4 +12*x5
w
︡be84a5fc-64f0-4875-9a4a-64362f3cbadb︡{"stdout":"(51, 24, 177, -63)\n"}︡
︠9d32e0f4-0e50-4966-be98-624470903e5f︠
w in W
︡ec1d0c69-8813-4cce-8475-066c22fab17f︡{"stdout":"True"}︡{"stdout":"\n"}︡
︠f544be3b-15cb-4d6f-90c4-eabb4a1f2098i︠
%html
<p>But not any old vector is in \(W\).</p>
︡3272e117-f754-4c2b-b50b-40d47aeadc43︡{"html":"<p>But not any old vector is in \\(W\\).</p>"}︡
︠0f7a7b61-6ca2-46e2-a3c7-183bd0045e6e︠
v = vector(QQ, [1, 1, -3, 2])
v in W
︡81af5805-ab95-40db-898d-bda8bf873ae0︡{"stdout":"False\n"}︡
︠32c5f9f1-fc75-4bf1-8d9e-83368cf5d3d9︠









