︠ddd2258c-cf44-4346-bf41-ca95c94842c8i︠
load('mathbook.css')

︡d091296c-1c2c-49a4-948e-14735f0469c4︡︡
︠7e4fb44c-9ffd-44ed-abf9-633a93f8224fx︠
%html
<div>\(\)</div>
︡8eefd596-e95f-48f0-bdbb-0f42c0c47260︡︡
︠d6291159-5cd0-4167-8284-49bfeb50ed33x︠
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
︡823610ff-3ec5-4e3d-bc72-11976b16d3b3︡︡
︠081a4ed4-f948-4df5-8f27-5a61fbeac1ddx︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">Vector Representations</div>
</div></div>
︡12911eef-19c9-450f-ae8a-39815940218f︡︡
︠d5a20b8b-2b7b-4046-9c71-b02ee444bd80x︠
%html
<p>It is easy to form vector representations of vectors in \(\mathbb{C}^n\).</p>
︡64d00a2e-4369-4dad-839e-913b09d7e615︡︡
︠265ce75c-f8b3-4145-9416-e8ad352bcd39x︠
%html
<p>We get a nonstandard basis quickly from the columns of a nonsingular matrix (square, full rank).</p>
︡b4f679b6-a914-44d5-9c9b-d21540ab784f︡︡
︠3739f914-12f4-4a8b-8625-5e4e9d84c723︠
n = 6
A = random_matrix(QQ, n, n, algorithm='echelonizable', rank=n, upper_bound=9)
A

︡5e99876e-2898-48ff-8528-b8f1553471e6︡︡
︠08df63f1-1306-4959-87ae-f88f1d3f0b4ax︠
%html
<p>The columns of <tt class="code">A</tt> become the <q>user basis</q> of a vector space.</p>
︡044ca8d6-e4c0-45f4-a564-486afd765502︡︡
︠7b3a88ee-caea-4f8c-923a-427f60cc3157︠
B = A.columns()
V = (QQ^n).subspace_with_basis(B)
V

︡37773eea-0848-42cb-bffc-e91bb285b1a7︡︡
︠2f46788d-78e0-4215-9fb3-eee0b44db2f1︠
u = random_vector(QQ, n)
u

︡add4c949-c995-4031-85d1-3799d8c331f3︡︡
︠e84291d5-a4a4-4d8f-9eb7-bf3ae25481c1x︠
%html
<p>Now, we get values of the invertible linear transformation \(\rho_B\) with the Sage method <tt class="code">.coordinate_vector()</tt> method of the vector space.</p>
︡cc017d3c-4cb1-4b93-a7ef-9b464b6846a2︡︡
︠72e226a4-f44e-4b39-baff-28ae7885fa08︠
c = V.coordinate_vector(u)
c

︡d11d82e4-9482-4aa1-8e99-61fdf0023b15︡︡
︠71c0875e-3046-464c-8540-6baa177ff9dbx︠
%html
<p>The inverse linear transformation is also available as the <tt class="code">.linear_combination_of_basis()</tt> method of the vector space.</p>
︡2ded3f8f-177c-470b-bc0f-18fe354cf659︡︡
︠b9c91068-6b0f-442a-9e04-418bcf96d85d︠
round_trip = V.linear_combination_of_basis(c)
round_trip

︡2cffc18c-c01c-407a-8ada-df530803618a︡︡
︠ea7ed113-a51e-4703-bf8e-b4abcfe81316x︠
%html
<p>And the automated check:</p>
︡0ef759d1-302e-4476-b640-65b65dec5383︡︡
︠ffd002b6-2197-48fe-8116-c85d104edb87︠
u == round_trip

︡3ac9f9d0-d844-47bd-ad3a-3cf6c392d9e1︡︡
︠dab5757b-a1f8-45a1-b515-fb871f82d61cx︠
%html
<p>Notice that this is something we could do <q>by hand</q> with just reduced row-echelon form. The coordinitization of <tt class="code">u</tt> relative to the basis <tt class="code">B</tt> is just a (unique) solution to a linear system.</p>
︡040d6065-6a9e-4b41-8bed-c66f5d7c7b99︡︡
︠d9237254-ef35-4702-b0ff-15711ec38946︠
aug = column_matrix(B + [u])
aug.rref()

︡e50033c9-10cd-4788-b012-ebad411c95ac︡︡
︠989c973b-6734-4846-85d9-77f38fbc8714x︠
%html
<p>The following stanza will always return <tt class="code">True</tt> as we <q>coordinatize</q> and then use the coordinates to form a linear combination of the basis.</p>
︡5cbbbcb3-c6d9-44bf-97d2-2b4202d5cd10︡︡
︠991e9f79-2252-4821-9114-6b89ae243c96︠
w = random_vector(QQ, n)
x = V.coordinate_vector(w)
y = V.linear_combination_of_basis(x)
y == w

︡8f89058c-f115-4f3a-8368-fb1837cc3a74︡︡
︠904230ca-0a2a-4c0c-80bf-88fa3e040d07x︠
%html
<div class="section"><div class="heading">
<div class="number">2</div>
<div class="title">Abstract Vector Spaces</div>
</div></div>
︡2069c2ea-09c6-43e7-9902-9c67724278b7︡︡
︠963840b9-08ec-47c5-8fe7-cd93bbe4c5efx︠
%html
<p>Sage does not implement abstract vector spaces.  It presumes we have <q>nice</q> standard bases available and can apply an intermediate coordinatization ourselves.</p>
︡99c6628b-fee2-453e-94c9-24527dc4af1b︡︡
︠2b1256d4-af91-4c36-b226-ed8429236e6dx︠
%html
<p>Problem: In \(P_3\), the vector space of polynomials with degree at most \(3\), find the vector representation of \(p = \left(x^{3} + x^{2} + \frac{1}{2} \, x - \frac{33}{14}\right)\) relative to the basis for \(P_3\):
        
\[B = \left\{
        5 \, x^{3} + 2 \, x^{2} + x + 1,\,
        -8 \, x^{3} - 3 \, x^{2} - x - 2,\,
        7 \, x^{3} + 4 \, x^{2} + x + 2,\,
        -7 \, x^{3} + 3 \, x^{2} + x - 2
        \right\}\]
</p>
︡ebe70ce5-39a3-4a88-acc6-620e45c10e24︡︡
︠d7cbf66a-c520-4be6-bb1c-fa58d2c6229ex︠
%html
<p>Solution:  Coordinatize with respect to the basis \(\left\{1, x, x^2, x^3\right\}\).</p>
︡068135ce-d88c-440d-8045-45955f54b2da︡︡
︠9916c732-e772-4ba0-a7c2-7c28d4de68f6︠
A = matrix(QQ, [[1, -2, 2, -2], [1, -1, 1, 1], [2, -3, 4, 3], [5, -8, 7, -7]])
B = A.columns()
B

︡a808a311-a890-4755-b7ac-fc4c8f1749c9︡︡
︠6db1f42d-dd21-4518-9c43-e0720f4ab923x︠
%html
<p><tt class="code">B</tt> is a basis, since <tt class="code">A</tt> is nonsingular.</p>
︡b1e62402-949e-419c-8cd8-e952b6f051fa︡︡
︠a626365b-00ab-44a0-a65a-950100e20a82︠
A.is_singular()

︡6ebbacff-494e-4728-9d7e-a6ee147bcbe2︡︡
︠7e65da7e-3845-4c21-b906-f75d19efc3f2x︠
%html
<p>Now coordinatize <tt class="code">p</tt>.</p>
︡b1cf8af6-3fe3-43b8-8b14-d44bc1b9f360︡︡
︠415898be-6daf-4b7f-9354-a90eeadf5463︠
p = vector(QQ, [-33/14, 1/2, 1, 1])
p

︡7ebccf54-dd76-48c4-b6e1-ce4d26899205︡︡
︠e04791a7-7a4d-410c-b062-bdcb521d584bx︠
%html
<p>We'll get a coordinatization old-style.</p>
︡d141274b-ba55-4ea9-913d-a766ed6ac3eb︡︡
︠f8fb6818-7664-40f7-a73d-f4f716cdfb09︠
aug = column_matrix(B + [p])
r = aug.rref()
r

︡6f9fc628-5bbd-400a-8ed6-9edb37731e3c︡︡
︠d13819e1-ae7d-4323-b5f8-4d8807ea2f84x︠
%html
<p>Let's check to see if this is right and we can recover <tt class="code">p</tt>.</p>
︡e3ab0190-c3d7-4f71-89d9-01e38549f743︡︡
︠6a08e4cc-dfe9-47ab-91bc-1a41c74cc569︠
soln = r.column(4)
round_trip = sum([soln[i]*B[i] for i in range(4)])
round_trip, round_trip == p

︡8632adeb-822f-4511-83b5-da76b057aca9︡︡

