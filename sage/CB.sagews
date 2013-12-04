︠2d262483-e525-4028-adc0-330e895ac818i︠
load('mathbook.css')

︡4c67a08b-f9f6-43a6-bb27-02e622efcce5︡︡
︠1d0eef26-eda8-4d0a-9985-af45e0dec72ex︠
%html
<div>\(\)</div>
︡6c764ab1-d458-4d59-87d5-7bde07ec1544︡︡
︠817ce7cb-f7d7-44f8-850e-dd80b4d0d1f7x︠
%html
<style></style><div class="headerblock">
<div class="title">Demo: Section CB</div>
<div class="authorgroup"><div class="author-info">
<div class="author-name">Robert Beezer</div>
<div class="author-department"></div>
<div class="author-institution"></div>
<div class="author-email"></div>
</div></div>
<div class="date">Math 290, Fall 2013<br>November 21, 2013</div>
</div>
︡7a402be6-2d62-43a9-843a-aa837ff9d73a︡︡
︠7a0cd7d4-2ae4-4fef-b200-201aeb66661bx︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">A Linear Transformation, Two Vector Spaces, Four Bases</div>
</div></div>
︡ad3bbaa6-cfae-4090-8eea-35e849a956f6︡︡
︠9678571a-5306-4831-a43b-18858bb01dc0x︠
%html
<p>In this section we deﬁne a linear transformation from \(\mathbb{C}^{3}\) to \(\mathbb{C}^{7}\). The deﬁnition is a \(7\times 3\) matrix of rank \(3\) that we will use to multiply input vectors with a matrix-vector product. It is not important if the linear transformation is injective and/or surjective.</p>
︡a10ee721-cd8f-4095-93ce-e058305c88ae︡︡
︠1b4a881b-6b2d-4947-a2a6-91e31063056fx︠
%html
<p>We will build two representations, using a total of four bases — two for the domain and two for the codomain.</p>
︡0b7fa8b3-c259-4773-a524-854888d3bd07︡︡
︠48d44c21-f97b-45bf-be76-a3ccaec83aaf︠
m, n = 7, 3
A = random_matrix(QQ, m, n, algorithm='echelonizable', rank=n, upper_bound=9)
A

︡99ad9d59-c084-4866-9d4a-093266da2eea︡︡
︠ba00e2ad-31ca-4bfa-b04f-a2d5d9db0e53︠
T = linear_transformation(A, side='right')
T

︡9d5b0bbb-9d69-4406-aa2d-30fe1722602b︡︡
︠349634fb-40f6-4239-ba94-224cd8dfcc6fx︠
%html
<p>The four bases, associated with the two vector spaces.</p>
︡efed83ce-087c-455e-b858-4c25e354be61︡︡
︠2f5d75fa-4775-4a4c-841f-b6e202a05c22︠
D1mat = random_matrix(QQ, n, n, algorithm='unimodular', upper_bound=9)
D1 = D1mat.columns()
D1
VD1 = (QQ^n).subspace_with_basis(D1)
#
D2mat = random_matrix(QQ, n, n, algorithm='unimodular', upper_bound=9)
D2 = D2mat.columns()
D2
VD2 = (QQ^n).subspace_with_basis(D2)
#
C1mat = random_matrix(QQ, m, m, algorithm='unimodular', upper_bound=9)
C1 = C1mat.columns()
C1
VC1 = (QQ^m).subspace_with_basis(C1)
#
C2mat = random_matrix(QQ, m, m, algorithm='unimodular', upper_bound=9)
C2 = C2mat.columns()
C2
VC2 = (QQ^m).subspace_with_basis(C2)

︡f9a874fd-f643-49f9-8bd7-adc50b5aac25︡︡
︠7cf2e472-a239-46cc-94dc-0c62d6a2ad73x︠
%html
<p>Check out a few of these…</p>
︡2f991e2c-14a1-442e-8900-6846a4a61a6e︡︡
︠7adeecbc-1a75-4ba9-ae51-7e09d835b71c︠
X

︡7dc2cf53-dd7c-40f5-969e-28fd4be414bf︡︡
︠818855b1-cc7d-4759-885f-97cc08e29afbx︠
%html
<p>Now we build two <em>different</em> representations.</p>
︡a27dceb3-bc06-43fd-871f-e99ab94b8638︡︡
︠4bbaeb39-608e-430c-9422-b597538ed029︠
rep1 = T.restrict_domain(VD1).restrict_codomain(VC1)
rep1.matrix(side='right')

︡1380680a-a5ec-402e-b0b3-e83a8c894e23︡︡
︠99ecae19-2d43-437c-a3b4-cc184752ab6c︠
rep2 = T.restrict_domain(VD2).restrict_codomain(VC2)
rep2.matrix(side='right')

︡c48f8cfe-83b4-4885-a864-64546c553bc5︡︡
︠e4f337ae-8695-4df0-b837-e845fb37dc55x︠
%html
<div class="section"><div class="heading">
<div class="number">2</div>
<div class="title">Change of Basis Matrices</div>
</div></div>
︡27510675-a3e2-49db-aff6-66e71ddb9108︡︡
︠6796891f-a277-48ec-9e33-f223d84b1d28x︠
%html
<p>A natural way to build a change-of-basis matrix in Sage is to adjust the bases for the identity linear transformation.</p>
︡8143e709-e047-49e9-bc40-493f7d4a286d︡︡
︠6225ab2c-d914-4d24-a182-c7feb258efb3︠
identity_domain = linear_transformation(QQ^n, QQ^n, identity_matrix(n))
identity_domain

︡e168fc79-7fdb-4385-bd4d-eed3169872b7︡︡
︠3f0ee205-0959-4b62-ba3b-41811332c60b︠
CBdom = identity_domain.restrict_domain(VD1).restrict_codomain(VD2)
CBdom_mat = CBdom.matrix(side='right')
CBdom_mat

︡79f277da-f67b-4ca5-8dd8-b7913bdb49b6︡︡
︠2171371b-a54e-4153-8261-5df13c31da3cx︠
%html
<p>This matrix should convert between the two bases for the domain.  Here's a check of Theorem CB.</p>
︡dc53fb38-8200-47f6-8c7a-b87b7212d95e︡︡
︠565f1591-9b62-47bb-90b7-85c6e975e85d︠
u = random_vector(QQ, n)
u1 = VD1.coordinate_vector(u)
u2 = VD2.coordinate_vector(u)
u, u1, u2, u2 == CBdom_mat*u1

︡21bae5a1-65ae-4556-96d2-29ebc282d7cf︡︡
︠18e214de-2e54-4335-bb05-25477355b800x︠
%html
<p>Same drill in the codomain.</p>
︡256ac75d-29fb-48ed-abed-f4d3877fb2e5︡︡
︠ce300bd6-7ce6-4e5f-bbd2-9e576e109c87︠
identity_codomain = linear_transformation(QQ^m, QQ^m, identity_matrix(m))
identity_codomain

︡8355296a-be6e-4cbc-bb36-7a72323109f4︡︡
︠f354ad84-6d97-4cbc-849d-8fe175d5b325︠
CBcodom = identity_codomain.restrict_domain(VC1).restrict_codomain(VC2)
CBcodom_mat = CBcodom.matrix(side='right')
CBcodom_mat

︡55d0b557-cec7-4c1a-a520-999f703af644︡︡
︠27a34eb4-da1e-435a-bdbf-0198a11cd97bx︠
%html
<p>And here is the check on Theorem MRCB.  Convert from domain basis 1 to domain basis 2, use the second representation, then convert back from codomain basis 2 to codomain basis 1 and get as a result the representation relative to the first bases.</p>
︡5703f3d7-04b9-4eca-98c9-20fdd44267f9︡︡
︠55ad8a7d-5cb0-4425-a024-eaadeb686463︠
rep1.matrix(side='right') == CBcodom_mat.inverse()*rep2.matrix(side='right')*CBdom_mat

︡dcf57e08-5e0e-4887-8d89-d4a3d010a7e2︡︡
︠95595172-ca6a-4169-83b9-69396a7c6b1bx︠
%html
<div class="section"><div class="heading">
<div class="number">3</div>
<div class="title">A Diagonal Representation</div>
</div></div>
︡d698b98d-9a18-49f5-bde0-b2de8073d0d1︡︡
︠bcf7a520-4a82-459c-979d-61a982f66392x︠
%html
<p>We specialize to linear transformations with equal domain and codomain.</p>
︡00b6d944-6687-41c0-87a1-b55ca4a7abd7︡︡
︠7290c3d7-bc64-4f88-ba81-548144702fecx︠
%html
<p>First a matrix representation using a square matrix.</p>
︡9bdf761c-ba5d-44d4-90be-4eb1fae56db9︡︡
︠770d7f70-dc9d-4dea-b941-c37fa20ae54e︠
A = matrix(QQ,
[[-2, 3, -20, 15, 1, 30, -5, 17],
[-27, -38, -30, -50, 268, -73, 210, -273],
[-12, -24, -7, -30, 142, -48, 100, -160],
[-3, -15, 35, -32, 35, -57, 20, -71],
[-9, -9, -10, -10, 65, -11, 50, -59],
[-3, -6, -20, 0, 58, 1, 40, -55],
[3, 0, 5, 0, -10, -3, -12, 1],
[0, 3, 0, 5, -19, 10, -15, 25]])
T = linear_transformation(A, side='right')
T

︡639c776e-29c5-469f-bcd3-5ccbb805d16d︡︡
︠83b0859b-1916-4965-bf41-8c8784abba6cx︠
%html
<p>A basis of \(\mathbb{C}^8\). And a vector space with this basis.</p>
︡e9ea355f-a467-4595-b2a5-670827576bc9︡︡
︠07fb0992-58ff-4ac0-9b2d-095c3cae847e︠
v1 = vector(QQ, [-4, -6, -1, 7, -2, -4, 1, 0])
v2 = vector(QQ, [3, -10, -6, -6, -2, 0, 0, 1])
v3 = vector(QQ, [0, -9, -4, -1, -3, -1, 1, 0])
v4 = vector(QQ, [1, -12, -8, -5, -3, -2, 0, 1])
v5 = vector(QQ, [0, 3, 2, 2, 1, 0, 0, 0])
v6 = vector(QQ, [1, 0, 0, -2, 0, 1, 0, 0])
v7 = vector(QQ, [0, 0, 2, 3, 0, 0, 1, 0])
v8 = vector(QQ, [3, -4, -2, -3, 0, 0, 0, 1])
B = [v1, v2, v3, v4, v5, v6, v7, v8]
V = (QQ^8).subspace_with_basis(B)

︡796260ea-6b6d-4e16-8940-6ffcb6e4c2d0︡︡
︠506aa702-f515-4d49-9e7c-462af2620212︠
S = T.restrict_domain(V).restrict_codomain(V)
S.matrix(side='right')

︡9bc35d80-702d-4831-bf45-c67ef6c93cca︡︡
︠e5fc1812-2630-4b57-adb1-44f6dfc8388ax︠
%html
<p>That's a nice representation!  Where did the basis come from?</p>
︡12cc08be-a546-451b-b1cd-3388d067ae6d︡︡
︠047727b4-6cb9-4c18-a6f8-045a719b5bac︠
A.eigenvalues()

︡4308d3eb-d0d8-419c-bacf-dfa5172156a1︡︡
︠ce618844-777b-4400-8e4a-169542b30f95x︠
%html
<p>Some (right) eigenvectors.</p>
︡d2b5e4ce-6589-4471-8477-83eebb89b1d8︡︡
︠79a8a8e9-8990-4e35-9e7d-8a60594f5357︠
(A - 3).right_kernel(basis='pivot').basis()

︡7a272074-0f33-48f1-a64f-ba5ab6c66f70︡︡
︠d1767dce-9576-4deb-a7f4-882248012257x︠
%html
<p>Eigenvalues are a property of the linear transformation.</p>
︡120670fe-443b-4790-bdd5-99ced345de39︡︡
︠1f961dcd-e09d-4063-8d73-27862d4f44bb︠
T.eigenvalues()

︡17313c33-e536-4584-adb1-c6d61f126628︡︡
︠b730d36d-b641-411b-b3e0-9ed23bca0f25x︠
%html
<p>Bases for the eigenspaces depend on the representation, but the actual eigenvectors are also a property of the linear transformation.</p>
︡4840b943-be47-4633-9f59-16dae4329c8e︡︡
︠a0353a02-ba0b-4b1a-9783-979efa808bb9︠
S.eigenvectors()

︡1eb4ed07-0bb0-497c-87be-fce58fd379d9︡︡
︠436141db-c538-4e65-98f2-8bada192b9aa︠
T.eigenvectors()

︡2344c3e0-fbb1-497b-ac4d-a9f103240e43︡︡
︠e98ea494-73a5-4b67-a84d-3c13a49946c9x︠
%html
<p>We could do the same thing, but in the style of Section SD, using a change-of-basis matrix.</p>
︡97fb9e04-af23-4acb-8bb9-f5c04941c4a1︡︡
︠c766d1d4-124c-4009-b60e-81cd31e966fb︠
identity = linear_transformation(QQ^8, QQ^8, identity_matrix(8))
identity

︡404dfe15-fa10-4df4-9370-f48dec950421︡︡
︠b06f9c89-fe96-436c-badf-17634e8ecaa4︠
CB = identity.restrict_domain(V).restrict_codomain(QQ^8)
CB

︡86204428-390d-4a79-bbd9-39eb1cf79d9d︡︡
︠c6ae2139-72f2-4bc2-920d-341675e55798x︠
%html
<p>Here is similarity, in disguise.</p>
︡97de4acd-4bae-460b-8b2f-6aaa7396e029︡︡
︠5611a4b1-f679-4a77-a9a2-c59ec35d1d41︠
CBmat = CB.matrix(side='right')
CBmat.inverse()*T.matrix(side='right')*CBmat

︡34c3ef3d-5658-40e1-aae7-b6bae88ec6c8︡︡

