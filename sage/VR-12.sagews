︠ddd2258c-cf44-4346-bf41-ca95c94842c8i︠
load('mathbook.css')

︡d091296c-1c2c-49a4-948e-14735f0469c4︡︡
︠7e4fb44c-9ffd-44ed-abf9-633a93f8224fi︠
%html
<div>\(\)</div>
︡bea6261f-07ec-437e-9b42-afea06272f41︡{"html":"<div>\\(\\)</div>"}︡
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
︡f37c0006-6ad9-4191-a709-cee2a9595ded︡{"html":"<style></style><div class=\"headerblock\">\n<div class=\"title\">Demo: Section VR</div>\n<div class=\"authorgroup\"><div class=\"author-info\">\n<div class=\"author-name\">Robert Beezer</div>\n<div class=\"author-department\"></div>\n<div class=\"author-institution\"></div>\n<div class=\"author-email\"></div>\n</div></div>\n<div class=\"date\">Math 290, Fall 2013<br>November 21, 2013</div>\n</div>"}︡
︠081a4ed4-f948-4df5-8f27-5a61fbeac1ddi︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">Vector Representations</div>
</div></div>
︡dd087ef5-5e16-4bca-9233-bc239810b687︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">1</div>\n<div class=\"title\">Vector Representations</div>\n</div></div>"}︡
︠d5a20b8b-2b7b-4046-9c71-b02ee444bd80i︠
%html
<p>It is easy to form vector representations of vectors in \(\mathbb{C}^n\).</p>
︡6dc1e65a-0e69-4ab0-9c2e-bde02b9aad09︡{"html":"<p>It is easy to form vector representations of vectors in \\(\\mathbb{C}^n\\).</p>"}︡
︠265ce75c-f8b3-4145-9416-e8ad352bcd39i︠
%html
<p>We get a nonstandard basis quickly from the columns of a nonsingular matrix (square, full rank).</p>
︡fb70bed5-ff42-44d4-ac1a-fc09f7aac955︡{"html":"<p>We get a nonstandard basis quickly from the columns of a nonsingular matrix (square, full rank).</p>"}︡
︠3739f914-12f4-4a8b-8625-5e4e9d84c723︠
n = 6
A = random_matrix(QQ, n, n, algorithm='echelonizable', rank=n, upper_bound=9)
A

︡166285eb-c45f-48c1-af09-c99e7b3d6421︡{"stdout":"[ 0  1 -2 -2 -6 -3]\n[ 0  1 -1 -1 -3  1]\n[ 1  1 -1 -1  0  7]\n[ 1 -1 -2 -1  1  0]\n[-1 -3  3  3  7 -6]\n[ 0  2 -1 -1 -6 -2]\n"}︡
︠08df63f1-1306-4959-87ae-f88f1d3f0b4ai︠
%html
<p>The columns of <tt class="code">A</tt> become the <q>user basis</q> of a vector space.</p>
︡40645043-b47b-4c5a-9e92-3a6ea01460f5︡{"html":"<p>The columns of <tt class=\"code\">A</tt> become the <q>user basis</q> of a vector space.</p>"}︡
︠7b3a88ee-caea-4f8c-923a-427f60cc3157︠
B = A.columns()
V = (QQ^n).subspace_with_basis(B)
V

︡e3a1e85a-f3b4-4ac7-a79f-432f3431757e︡{"stdout":"Vector space of degree 6 and dimension 6 over Rational Field\nUser basis matrix:\n[ 0  0  1  1 -1  0]\n[ 1  1  1 -1 -3  2]\n[-2 -1 -1 -2  3 -1]\n[-2 -1 -1 -1  3 -1]\n[-6 -3  0  1  7 -6]\n[-3  1  7  0 -6 -2]\n"}︡
︠2f46788d-78e0-4215-9fb3-eee0b44db2f1︠
u = random_vector(QQ, n)
u

︡a245400b-faa4-469c-9990-40c4be2ea195︡{"stdout":"(-1/2, 1/2, -5/2, -1, 1/3, 3/17)\n"}︡
︠e84291d5-a4a4-4d8f-9eb7-bf3ae25481c1i︠
%html
<p>Now, we get values of the invertible linear transformation \(\rho_B\) with the Sage method <tt class="code">.coordinate_vector()</tt> method of the vector space.</p>
︡e69fe6e7-9a91-449d-a50b-2d8d487b9f80︡{"html":"<p>Now, we get values of the invertible linear transformation \\(\\rho_B\\) with the Sage method <tt class=\"code\">.coordinate_vector()</tt> method of the vector space.</p>"}︡
︠72e226a4-f44e-4b39-baff-28ae7885fa08︠
c = V.coordinate_vector(u)
c

︡46dbc595-4c6c-42b0-89b1-88f481bc23b6︡{"stdout":"(-263/17, 478/17, -17/3, -839/51, 755/51, -181/34)\n"}︡
︠71c0875e-3046-464c-8540-6baa177ff9dbi︠
%html
<p>The inverse linear transformation is also available as the <tt class="code">.linear_combination_of_basis()</tt> method of the vector space.</p>
︡6d6a325c-fa50-47ee-93e1-f76f91907058︡{"html":"<p>The inverse linear transformation is also available as the <tt class=\"code\">.linear_combination_of_basis()</tt> method of the vector space.</p>"}︡
︠b9c91068-6b0f-442a-9e04-418bcf96d85d︠
round_trip = V.linear_combination_of_basis(c)
round_trip

︡e470cb0b-bc67-4132-94ba-2c25e0f2cae4︡{"stdout":"(-1/2, 1/2, -5/2, -1, 1/3, 3/17)\n"}︡
︠ea7ed113-a51e-4703-bf8e-b4abcfe81316i︠
%html
<p>And the automated check:</p>
︡c0fc5239-1d2b-431e-bbcf-e55408f5acf5︡{"html":"<p>And the automated check:</p>"}︡
︠ffd002b6-2197-48fe-8116-c85d104edb87︠
u == round_trip

︡980b7401-dccc-4627-b3e5-381fbf154e07︡{"stdout":"True\n"}︡
︠dab5757b-a1f8-45a1-b515-fb871f82d61ci︠
%html
<p>Notice that this is something we could do <q>by hand</q> with just reduced row-echelon form. The coordinitization of <tt class="code">u</tt> relative to the basis <tt class="code">B</tt> is just a (unique) solution to a linear system.</p>
︡b20d0744-220f-464a-8387-10b85bc7d10b︡{"html":"<p>Notice that this is something we could do <q>by hand</q> with just reduced row-echelon form. The coordinitization of <tt class=\"code\">u</tt> relative to the basis <tt class=\"code\">B</tt> is just a (unique) solution to a linear system.</p>"}︡
︠d9237254-ef35-4702-b0ff-15711ec38946︠
aug = column_matrix(B + [u])
aug.rref()

︡5c7a87b6-a614-4941-8ee3-cb379da65bb2︡{"stdout":"[      1       0       0       0       0       0 -263/17]\n[      0       1       0       0       0       0  478/17]\n[      0       0       1       0       0       0   -17/3]\n[      0       0       0       1       0       0 -839/51]\n[      0       0       0       0       1       0  755/51]\n[      0       0       0       0       0       1 -181/34]\n"}︡
︠989c973b-6734-4846-85d9-77f38fbc8714i︠
%html
<p>The following stanza will always return <tt class="code">True</tt> as we <q>coordinatize</q> and then use the coordinates to form a linear combination of the basis.</p>
︡11307914-540a-487a-bd69-a30ec84a09cd︡{"html":"<p>The following stanza will always return <tt class=\"code\">True</tt> as we <q>coordinatize</q> and then use the coordinates to form a linear combination of the basis.</p>"}︡
︠991e9f79-2252-4821-9114-6b89ae243c96︠
w = random_vector(QQ, n)
x = V.coordinate_vector(w)
y = V.linear_combination_of_basis(x)
y == w

︡fae9b8fa-85ea-49cc-b19c-c9d7db123b65︡{"stdout":"True\n"}︡
︠904230ca-0a2a-4c0c-80bf-88fa3e040d07i︠
%html
<div class="section"><div class="heading">
<div class="number">2</div>
<div class="title">Abstract Vector Spaces</div>
</div></div>
︡65cf55fe-77c1-498b-a0f0-dad9c8619ae0︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">2</div>\n<div class=\"title\">Abstract Vector Spaces</div>\n</div></div>"}︡
︠963840b9-08ec-47c5-8fe7-cd93bbe4c5efi︠
%html
<p>Sage does not implement abstract vector spaces.  It presumes we have <q>nice</q> standard bases available and can apply an intermediate coordinatization ourselves.</p>
︡0b055f0c-396b-4463-8a28-030cc9059ee9︡{"html":"<p>Sage does not implement abstract vector spaces.  It presumes we have <q>nice</q> standard bases available and can apply an intermediate coordinatization ourselves.</p>"}︡
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
︡3f8766e5-2e52-4fc8-ad70-0e44faddb2ae︡{"html":"<p>Problem: In \\(P_3\\), the vector space of polynomials with degree at most \\(3\\), find the vector representation of \\(p = \\left(x^{3} + x^{2} + \\frac{1}{2} \\, x - \\frac{33}{14}\\right)\\) relative to the basis for \\(P_3\\):\n        \n\\[B = \\left\\{\n        5 \\, x^{3} + 2 \\, x^{2} + x + 1,\\,\n        -8 \\, x^{3} - 3 \\, x^{2} - x - 2,\\,\n        7 \\, x^{3} + 4 \\, x^{2} + x + 2,\\,\n        -7 \\, x^{3} + 3 \\, x^{2} + x - 2\n        \\right\\}\\]\n</p>"}︡
︠d7cbf66a-c520-4be6-bb1c-fa58d2c6229ei︠
%html
<p>Solution:  Coordinatize with respect to the basis \(\left\{1, x, x^2, x^3\right\}\).</p>
︡8582daf9-f1ed-4950-9b7e-abc7455c1b6c︡{"html":"<p>Solution:  Coordinatize with respect to the basis \\(\\left\\{1, x, x^2, x^3\\right\\}\\).</p>"}︡
︠9916c732-e772-4ba0-a7c2-7c28d4de68f6︠
A = matrix(QQ, [[1, -2, 2, -2], [1, -1, 1, 1], [2, -3, 4, 3], [5, -8, 7, -7]])
B = A.columns()
A

︡b521bf87-d4f3-4b4d-9208-1b557b2c8f2b︡{"stdout":"[ 1 -2  2 -2]\n[ 1 -1  1  1]\n[ 2 -3  4  3]\n[ 5 -8  7 -7]\n"}︡
︠6db1f42d-dd21-4518-9c43-e0720f4ab923i︠
%html
<p><tt class="code">B</tt> is a basis, since <tt class="code">A</tt> is nonsingular.</p>
︡d90b1e53-bf9d-442a-8361-2ea3a8339819︡{"html":"<p><tt class=\"code\">B</tt> is a basis, since <tt class=\"code\">A</tt> is nonsingular.</p>"}︡
︠a626365b-00ab-44a0-a65a-950100e20a82︠
A.is_singular()

︡ad0b7597-30ca-4589-8314-32acfc0df010︡{"stdout":"False\n"}︡
︠7e65da7e-3845-4c21-b906-f75d19efc3f2i︠
%html
<p>Now coordinatize <tt class="code">p</tt>.</p>
︡04552843-ca78-4fd0-b8fc-e8e5e0dd65cb︡{"html":"<p>Now coordinatize <tt class=\"code\">p</tt>.</p>"}︡
︠415898be-6daf-4b7f-9354-a90eeadf5463︠
p = vector(QQ, [-33/14, 1/2, 1, 1])
p

︡2ec31780-4414-462e-b129-03aade99d788︡{"stdout":"(-33/14, 1/2, 1, 1)\n"}︡
︠e04791a7-7a4d-410c-b062-bdcb521d584bi︠
%html
<p>We'll get a coordinatization old-style.</p>
︡cdbd910f-4d50-4858-a98c-62c909a1ae77︡{"html":"<p>We'll get a coordinatization old-style.</p>"}︡
︠f8fb6818-7664-40f7-a73d-f4f716cdfb09︠
aug = column_matrix(B + [p])
r = aug.rref()
r

︡40c29797-bcd9-4687-8592-a4babbfb9de2︡{"stdout":"[      1       0       0       0 -509/14]\n[      0       1       0       0 -893/14]\n[      0       0       1       0  -258/7]\n[      0       0       0       1  139/14]\n"}︡
︠d13819e1-ae7d-4323-b5f8-4d8807ea2f84i︠
%html
<p>Let's check to see if this is right and we can recover <tt class="code">p</tt>.</p>
︡51b90244-e2ce-4667-a49c-793f8fc07021︡{"html":"<p>Let's check to see if this is right and we can recover <tt class=\"code\">p</tt>.</p>"}︡
︠6a08e4cc-dfe9-47ab-91bc-1a41c74cc569︠
soln = r.column(4)
round_trip = sum([soln[i]*B[i] for i in range(4)])
round_trip, round_trip == p

︡f61fa71b-acb8-437e-a61d-520c55aec5f5︡{"stdout":"((-33/14, 1/2, 1, 1), True)\n"}︡
︠6deac2de-7598-48da-a8f2-902d80e0eded︠









