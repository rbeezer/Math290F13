︠e040340b-2627-49f2-b2e0-c4259f883f88︠

︡8aa14e10-ab96-4b4e-b2d6-22b1ec7d9e1a︡
︠ddd2258c-cf44-4346-bf41-ca95c94842c8i︠
load('mathbook.css')

︡3f904e79-c351-4632-9f7f-53edfe18f740︡{"once":false,"file":{"show":false,"uuid":"db0fa80f-8a2d-4b83-910b-3cc8127f55fc","filename":"mathbook.css"}}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"$.get(\"/blobs/mathbook.css?uuid=db0fa80f-8a2d-4b83-910b-3cc8127f55fc\", function(css) { $('<style type=text/css></style>').html(css).appendTo(\"body\")});"},"once":false}︡
︠7e4fb44c-9ffd-44ed-abf9-633a93f8224fi︠
%html
<div>\(\)</div>
︡fd51a4f6-5551-4f1b-b0a7-90f3508ac8d7︡{"html":"<div>\\(\\)</div>"}︡
︠d6291159-5cd0-4167-8284-49bfeb50ed33i︠
%html
<style></style><div class="headerblock">
<div class="title">Demo: Section VR</div>
<div class="authorgroup"><div class="author-info">
<div class="author-name">Robert Beezer</div>
<div class="author-department"></div>
<div class="author-institution"></div>
<div class="author-email"></div>
</div></div>
<div class="date">Math 290, Fall 2013<br>November 21, 2013</div>
</div>
︡94727175-90b0-40fc-b7b9-193c920fa67d︡{"html":"<style></style><div class=\"headerblock\">\n<div class=\"title\">Demo: Section VR</div>\n<div class=\"authorgroup\"><div class=\"author-info\">\n<div class=\"author-name\">Robert Beezer</div>\n<div class=\"author-department\"></div>\n<div class=\"author-institution\"></div>\n<div class=\"author-email\"></div>\n</div></div>\n<div class=\"date\">Math 290, Fall 2013<br>November 21, 2013</div>\n</div>"}︡
︠081a4ed4-f948-4df5-8f27-5a61fbeac1ddi︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">Vector Representations</div>
</div></div>
︡811acb19-d908-4702-8c74-e5088aa62cdb︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">1</div>\n<div class=\"title\">Vector Representations</div>\n</div></div>"}︡
︠d5a20b8b-2b7b-4046-9c71-b02ee444bd80i︠
%html
<p>It is easy to form vector representations of vectors in \(\mathbb{C}^n\).</p>
︡c159b190-030d-491c-a312-112df58834bb︡{"html":"<p>It is easy to form vector representations of vectors in \\(\\mathbb{C}^n\\).</p>"}︡
︠265ce75c-f8b3-4145-9416-e8ad352bcd39i︠
%html
<p>We get a nonstandard basis quickly from the columns of a nonsingular matrix (square, full rank).</p>
︡3e2afc9c-7540-4733-a68f-f3174b98975a︡{"html":"<p>We get a nonstandard basis quickly from the columns of a nonsingular matrix (square, full rank).</p>"}︡
︠3739f914-12f4-4a8b-8625-5e4e9d84c723︠
n = 6
A = random_matrix(QQ, n, n, algorithm='echelonizable', rank=n, upper_bound=9)
A

︡651ad220-c01a-45b2-9f56-fe27febfb52d︡{"stdout":"[ 1 -5 -7  8  6 -5]\n[ 0  1  1  0  1 -1]\n[ 1 -4 -4  1  0  5]\n[ 0  0  1 -3 -3  4]\n[ 0  3  3 -1  3  2]\n[ 1 -2 -3  3  3  1]\n"}︡
︠08df63f1-1306-4959-87ae-f88f1d3f0b4ai︠
%html
<p>The columns of <tt class="code">A</tt> become the <q>user basis</q> of a vector space.</p>
︡67500d76-ddb2-4120-bc85-274c553b3cc3︡{"html":"<p>The columns of <tt class=\"code\">A</tt> become the <q>user basis</q> of a vector space.</p>"}︡
︠7b3a88ee-caea-4f8c-923a-427f60cc3157︠
B = A.columns()
V = (QQ^n).subspace_with_basis(B)
V

︡fdc518a1-3809-4899-bee9-1cf1e4c733c1︡{"stdout":"Vector space of degree 6 and dimension 6 over Rational Field\nUser basis matrix:\n[ 1  0  1  0  0  1]\n[-5  1 -4  0  3 -2]\n[-7  1 -4  1  3 -3]\n[ 8  0  1 -3 -1  3]\n[ 6  1  0 -3  3  3]\n[-5 -1  5  4  2  1]\n"}︡
︠2f46788d-78e0-4215-9fb3-eee0b44db2f1︠
u = random_vector(QQ, n)
u

︡c5707839-8436-47cd-ac1c-042bde0bcb72︡{"stdout":"(-1, 1, 15, -1, -1/9, -8)\n"}︡
︠e84291d5-a4a4-4d8f-9eb7-bf3ae25481c1i︠
%html
<p>Now, we get values of the invertible linear transformation \(\rho_B\) with the Sage method <tt class="code">.coordinate_vector()</tt> method of the vector space.</p>
︡c4198f7d-ba17-4d72-ab88-caef12484140︡{"html":"<p>Now, we get values of the invertible linear transformation \\(\\rho_B\\) with the Sage method <tt class=\"code\">.coordinate_vector()</tt> method of the vector space.</p>"}︡
︠72e226a4-f44e-4b39-baff-28ae7885fa08︠
c = V.coordinate_vector(u)
c

︡d62ebfb6-f388-410e-a430-04fd9cfb4288︡{"stdout":"(-269/9, 598/3, -3308/9, -2812/9, 955/9, -568/9)\n"}︡
︠71c0875e-3046-464c-8540-6baa177ff9dbi︠
%html
<p>The inverse linear transformation is also available as the <tt class="code">.linear_combination_of_basis()</tt> method of the vector space.</p>
︡a6446fdc-932b-4bdc-a80d-c6854b552b5b︡{"html":"<p>The inverse linear transformation is also available as the <tt class=\"code\">.linear_combination_of_basis()</tt> method of the vector space.</p>"}︡
︠b9c91068-6b0f-442a-9e04-418bcf96d85d︠
round_trip = V.linear_combination_of_basis(c)
round_trip

︡3e4afd12-a5d2-460b-b745-4062f257fdbd︡{"stdout":"(-1, 1, 15, -1, -1/9, -8)\n"}︡
︠ea7ed113-a51e-4703-bf8e-b4abcfe81316i︠
%html
<p>And the automated check:</p>
︡9a9cf59a-6dab-4bf1-8723-88ec957b03bd︡{"html":"<p>And the automated check:</p>"}︡
︠ffd002b6-2197-48fe-8116-c85d104edb87︠
u == round_trip

︡953ff8f5-3331-40ed-8c16-0f39b511ed6a︡{"stdout":"True\n"}︡
︠dab5757b-a1f8-45a1-b515-fb871f82d61ci︠
%html
<p>Notice that this is something we could do <q>by hand</q> with just reduced row-echelon form. The coordinitization of <tt class="code">u</tt> relative to the basis <tt class="code">B</tt> is just a (unique) solution to a linear system.</p>
︡396d1f43-47a3-48ad-8a7b-2e4613e79ec2︡{"html":"<p>Notice that this is something we could do <q>by hand</q> with just reduced row-echelon form. The coordinitization of <tt class=\"code\">u</tt> relative to the basis <tt class=\"code\">B</tt> is just a (unique) solution to a linear system.</p>"}︡
︠d9237254-ef35-4702-b0ff-15711ec38946︠
aug = column_matrix(B + [u])
aug.rref()

︡164d0ec6-6ebc-49e9-875e-5a77f0862367︡{"stdout":"[      1       0       0       0       0       0  -269/9]\n[      0       1       0       0       0       0   598/3]\n[      0       0       1       0       0       0 -3308/9]\n[      0       0       0       1       0       0 -2812/9]\n[      0       0       0       0       1       0   955/9]\n[      0       0       0       0       0       1  -568/9]\n"}︡
︠989c973b-6734-4846-85d9-77f38fbc8714i︠
%html
<p>The following stanza will always return <tt class="code">True</tt> as we <q>coordinatize</q> and then use the coordinates to form a linear combination of the basis.</p>
︡7cd9aff1-6731-420d-81f5-00c4ee885e6d︡{"html":"<p>The following stanza will always return <tt class=\"code\">True</tt> as we <q>coordinatize</q> and then use the coordinates to form a linear combination of the basis.</p>"}︡
︠991e9f79-2252-4821-9114-6b89ae243c96︠
w = random_vector(QQ, n)
x = V.coordinate_vector(w)
y = V.linear_combination_of_basis(x)
y == w

︡074a1d43-1fab-4c07-be53-721c99aed363︡{"stdout":"True\n"}︡
︠904230ca-0a2a-4c0c-80bf-88fa3e040d07i︠
%html
<div class="section"><div class="heading">
<div class="number">2</div>
<div class="title">Abstract Vector Spaces</div>
</div></div>
︡5bfe70ba-dafa-44a9-89f4-57dd48c15bc0︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">2</div>\n<div class=\"title\">Abstract Vector Spaces</div>\n</div></div>"}︡
︠963840b9-08ec-47c5-8fe7-cd93bbe4c5efi︠
%html
<p>Sage does not implement abstract vector spaces.  It presumes we have <q>nice</q> standard bases available and can apply an intermediate coordinatization ourselves.</p>
︡47a60790-8b6e-4a38-a077-9eea428680da︡{"html":"<p>Sage does not implement abstract vector spaces.  It presumes we have <q>nice</q> standard bases available and can apply an intermediate coordinatization ourselves.</p>"}︡
︠2b1256d4-af91-4c36-b226-ed8429236e6di︠
%html
<p>Problem: In \(P_3\), the vector space of polynomials with degree at most \(3\), find the vector representation of \(p = \left(x^{3} + x^{2} + \frac{1}{2} \, x - \frac{33}{14}\right)\) relative to the basis for \(P_3\):

\[B = \left\{
        5 \, x^{3} + 2 \, x^{2} + x + 1,\,
        -8 \, x^{3} - 3 \, x^{2} - x - 2,\,
        7 \, x^{3} + 4 \, x^{2} + x + 2,\,
        -7 \, x^{3} + 3 \, x^{2} + x - 2
        \right\}\]
</p>
︡2be923c8-ba35-4768-b75a-a8f3afd1b4c0︡{"html":"<p>Problem: In \\(P_3\\), the vector space of polynomials with degree at most \\(3\\), find the vector representation of \\(p = \\left(x^{3} + x^{2} + \\frac{1}{2} \\, x - \\frac{33}{14}\\right)\\) relative to the basis for \\(P_3\\):\n        \n\\[B = \\left\\{\n        5 \\, x^{3} + 2 \\, x^{2} + x + 1,\\,\n        -8 \\, x^{3} - 3 \\, x^{2} - x - 2,\\,\n        7 \\, x^{3} + 4 \\, x^{2} + x + 2,\\,\n        -7 \\, x^{3} + 3 \\, x^{2} + x - 2\n        \\right\\}\\]\n</p>"}︡
︠d7cbf66a-c520-4be6-bb1c-fa58d2c6229ei︠
%html
<p>Solution:  Coordinatize with respect to the basis \(\left\{1, x, x^2, x^3\right\}\).</p>
︡63dda58b-a256-4c76-af5c-07138a0f013f︡{"html":"<p>Solution:  Coordinatize with respect to the basis \\(\\left\\{1, x, x^2, x^3\\right\\}\\).</p>"}︡
︠9916c732-e772-4ba0-a7c2-7c28d4de68f6︠
A = matrix(QQ, [[1, -2, 2, -2], [1, -1, 1, 1], [2, -3, 4, 3], [5, -8, 7, -7]])
B = A.columns()
B

︡1d157767-0692-45a0-91e5-1465f912736a︡{"stdout":"[(1, 1, 2, 5), (-2, -1, -3, -8), (2, 1, 4, 7), (-2, 1, 3, -7)]\n"}︡
︠6db1f42d-dd21-4518-9c43-e0720f4ab923i︠
%html
<p><tt class="code">B</tt> is a basis, since <tt class="code">A</tt> is nonsingular.</p>
︡ea497131-f5c8-43e3-a8bf-da20d8d2c46a︡{"html":"<p><tt class=\"code\">B</tt> is a basis, since <tt class=\"code\">A</tt> is nonsingular.</p>"}︡
︠a626365b-00ab-44a0-a65a-950100e20a82︠
A.is_singular()

︡72ac7fd7-646b-41ad-b81d-bdc44b8af7f2︡{"stdout":"False\n"}︡
︠7e65da7e-3845-4c21-b906-f75d19efc3f2i︠
%html
<p>Now coordinatize <tt class="code">p</tt>.</p>
︡c7fdd396-ffc8-4009-896d-56c51506fce6︡{"html":"<p>Now coordinatize <tt class=\"code\">p</tt>.</p>"}︡
︠415898be-6daf-4b7f-9354-a90eeadf5463︠
p = vector(QQ, [-33/14, 1/2, 1, 1])
p

︡247b6910-34e7-490c-b40c-c3df144ed1bd︡{"stdout":"(-33/14, 1/2, 1, 1)\n"}︡
︠e04791a7-7a4d-410c-b062-bdcb521d584bi︠
%html
<p>We'll get a coordinatization old-style.</p>
︡5372c905-0542-4a2e-a654-d19d8af8892e︡{"html":"<p>We'll get a coordinatization old-style.</p>"}︡
︠f8fb6818-7664-40f7-a73d-f4f716cdfb09︠
aug = column_matrix(B + [p])
r = aug.rref()
r

︡f951d51b-c445-4fb0-bf6b-8fc2d42c1e82︡{"stdout":"[      1       0       0       0 -509/14]\n[      0       1       0       0 -893/14]\n[      0       0       1       0  -258/7]\n[      0       0       0       1  139/14]\n"}︡
︠d13819e1-ae7d-4323-b5f8-4d8807ea2f84i︠
%html
<p>Let's check to see if this is right and we can recover <tt class="code">p</tt>.</p>
︡cfcca3e3-2364-426c-82e8-66ef6222a90b︡{"html":"<p>Let's check to see if this is right and we can recover <tt class=\"code\">p</tt>.</p>"}︡
︠6a08e4cc-dfe9-47ab-91bc-1a41c74cc569︠
soln = r.column(4)
round_trip = sum([soln[i]*B[i] for i in range(4)])
round_trip, round_trip == p

︡286b7c85-c4c3-4092-9b1b-0e7026ea0947︡{"stdout":"((-33/14, 1/2, 1, 1), True)\n"}︡
︠fde3685b-de5e-4318-907c-63847783d271︠









