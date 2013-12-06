︠2d262483-e525-4028-adc0-330e895ac818i︠
load('mathbook.css')

︡0df55b77-78bb-4477-a6c4-898bef6ad987︡{"once":false,"file":{"show":false,"uuid":"db0fa80f-8a2d-4b83-910b-3cc8127f55fc","filename":"mathbook.css"}}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"$.get(\"/blobs/mathbook.css?uuid=db0fa80f-8a2d-4b83-910b-3cc8127f55fc\", function(css) { $('<style type=text/css></style>').html(css).appendTo(\"body\")});"},"once":false}︡
︠1d0eef26-eda8-4d0a-9985-af45e0dec72ei︠
%html
<div>\(\)</div>
︡8a9dd54f-d464-4f80-8f32-201ff3fff58d︡{"html":"<div>\\(\\)</div>"}︡
︠817ce7cb-f7d7-44f8-850e-dd80b4d0d1f7i︠
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
︡3927d276-fcc4-44de-a4e0-cc31a0568ab3︡{"html":"<style></style><div class=\"headerblock\">\n<div class=\"title\">Demo: Section CB</div>\n<div class=\"authorgroup\"><div class=\"author-info\">\n<div class=\"author-name\">Robert Beezer</div>\n<div class=\"author-department\"></div>\n<div class=\"author-institution\"></div>\n<div class=\"author-email\"></div>\n</div></div>\n<div class=\"date\">Math 290, Fall 2013<br>November 21, 2013</div>\n</div>"}︡
︠7a0cd7d4-2ae4-4fef-b200-201aeb66661bi︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">A Linear Transformation, Two Vector Spaces, Four Bases</div>
</div></div>
︡1b47aafb-397c-431d-bd42-3ae0a3fa1280︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">1</div>\n<div class=\"title\">A Linear Transformation, Two Vector Spaces, Four Bases</div>\n</div></div>"}︡
︠9678571a-5306-4831-a43b-18858bb01dc0i︠
%html
<p>In this section we deﬁne a linear transformation from \(\mathbb{C}^{3}\) to \(\mathbb{C}^{7}\). The deﬁnition is a \(7\times 3\) matrix of rank \(3\) that we will use to multiply input vectors with a matrix-vector product. It is not important if the linear transformation is injective and/or surjective.</p>
︡45752b9b-ee93-4e6a-96d0-2703fb68b1b6︡{"html":"<p>In this section we deﬁne a linear transformation from \\(\\mathbb{C}^{3}\\) to \\(\\mathbb{C}^{7}\\). The deﬁnition is a \\(7\\times 3\\) matrix of rank \\(3\\) that we will use to multiply input vectors with a matrix-vector product. It is not important if the linear transformation is injective and/or surjective.</p>"}︡
︠1b4a881b-6b2d-4947-a2a6-91e31063056fi︠
%html
<p>We will build two representations, using a total of four bases — two for the domain and two for the codomain.</p>
︡b626cf72-1b14-4f47-9a06-01f2d061c03b︡{"html":"<p>We will build two representations, using a total of four bases — two for the domain and two for the codomain.</p>"}︡
︠48d44c21-f97b-45bf-be76-a3ccaec83aaf︠
m, n = 7, 3
A = random_matrix(QQ, m, n, algorithm='echelonizable', rank=n, upper_bound=9)
A

︡944fcc48-d61d-4826-9dfc-2fff7065c7e3︡{"stdout":"[-1  0 -1]\n[ 0  1  5]\n[ 2  1  6]\n[-2 -1 -3]\n[ 0 -2 -8]\n[ 0  0  5]\n[-1 -1 -5]\n"}︡
︠ba00e2ad-31ca-4bfa-b04f-a2d5d9db0e53︠
T = linear_transformation(A, side='right')
T

︡fc925249-dc5b-4f46-8d5d-b47fa8806a50︡{"stdout":"Vector space morphism represented by the matrix:\n[-1  0  2 -2  0  0 -1]\n[ 0  1  1 -1 -2  0 -1]\n[-1  5  6 -3 -8  5 -5]\nDomain: Vector space of dimension 3 over Rational Field\nCodomain: Vector space of dimension 7 over Rational Field\n"}︡
︠349634fb-40f6-4239-ba94-224cd8dfcc6fi︠
%html
<p>The four bases, associated with the two vector spaces.</p>
︡96f30047-021e-46a1-a65e-1a745b62a534︡{"html":"<p>The four bases, associated with the two vector spaces.</p>"}︡
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

︡545eeb87-4aa8-485f-b6c2-638a2cd6f0c1︡{"stdout":"[(1, 0, 0), (4, 1, 1), (4, 2, 3)]\n"}︡{"stdout":"[(1, 0, 2), (1, 1, 8), (-3, 0, -5)]\n"}︡{"stdout":"[(2, -1, 2, -1, -2, 3, 1), (-7, 4, -7, 1, 6, -6, -4), (0, 0, 1, 0, 0, -2, 0), (-6, 0, -5, 4, 7, 0, -5), (5, 0, 4, -4, -6, 2, 4), (5, -4, 8, -1, -3, 5, 2), (5, -6, 2, 5, -4, 7, 2)]\n"}︡{"stdout":"[(0, 0, 1, -2, 0, 2, -1), (0, 1, -3, 6, 0, -7, 4), (-1, 0, -2, 8, -1, -8, 2), (-1, -1, 2, -3, 0, 2, -4), (2, 1, -1, -2, 2, 2, 3), (0, 3, -5, 7, 4, -8, 7), (-7, 1, 1, 1, 4, -1, -7)]\n"}︡
︠7cf2e472-a239-46cc-94dc-0c62d6a2ad73i︠
%html
<p>Check out a few of these…</p>
︡5c674d25-4982-48bc-ad3f-f93916f8a78c︡{"html":"<p>Check out a few of these…</p>"}︡
︠7adeecbc-1a75-4ba9-ae51-7e09d835b71c︠
VC2

︡78228421-986a-4368-bd00-aeaf60b0f1e9︡{"stdout":"Vector space of degree 7 and dimension 7 over Rational Field\nUser basis matrix:\n[ 0  0  1 -2  0  2 -1]\n[ 0  1 -3  6  0 -7  4]\n[-1  0 -2  8 -1 -8  2]\n[-1 -1  2 -3  0  2 -4]\n[ 2  1 -1 -2  2  2  3]\n[ 0  3 -5  7  4 -8  7]\n[-7  1  1  1  4 -1 -7]\n"}︡
︠818855b1-cc7d-4759-885f-97cc08e29afbi︠
%html
<p>Now we build two <em>different</em> representations.</p>
︡80cf228c-82c7-4b14-8ff5-16d9953abb55︡{"html":"<p>Now we build two <em>different</em> representations.</p>"}︡
︠4bbaeb39-608e-430c-9422-b597538ed029︠
rep1 = T.restrict_domain(VD1).restrict_codomain(VC1)
rep1.matrix(side='right')

︡2add14ab-2ddc-4f8c-ae4a-2a44899ea587︡{"stdout":"[  -6  144  455]\n[  -6  -47  -96]\n[   9   40   50]\n[  11  -48 -216]\n[  11 -109 -393]\n[  -3  -50 -124]\n[  -1  -23  -60]\n"}︡
︠99ecae19-2d43-437c-a3b4-cc184752ab6c︠
rep2 = T.restrict_domain(VD2).restrict_codomain(VC2)
rep2.matrix(side='right')

︡a9dbf305-f003-4186-a105-6937b8bd5785︡{"stdout":"[  482  2174 -1174]\n[ 1045  4785 -2534]\n[  490  2244 -1188]\n[  -68  -310   165]\n[ 1473  6755 -3570]\n[ -979 -4488  2373]\n[  361  1655  -875]\n"}︡
︠e4f337ae-8695-4df0-b837-e845fb37dc55i︠
%html
<div class="section"><div class="heading">
<div class="number">2</div>
<div class="title">Change of Basis Matrices</div>
</div></div>
︡9e27e8b2-3edf-491b-8c93-e071d10c5852︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">2</div>\n<div class=\"title\">Change of Basis Matrices</div>\n</div></div>"}︡
︠6796891f-a277-48ec-9e33-f223d84b1d28i︠
%html
<p>A natural way to build a change-of-basis matrix in Sage is to adjust the bases for the identity linear transformation.</p>
︡93638044-a688-4278-b152-73de1ae3ca56︡{"html":"<p>A natural way to build a change-of-basis matrix in Sage is to adjust the bases for the identity linear transformation.</p>"}︡
︠6225ab2c-d914-4d24-a182-c7feb258efb3︠
identity_domain = linear_transformation(QQ^n, QQ^n, identity_matrix(n))
identity_domain

︡e19d412b-986a-4060-abac-38b06fc276df︡{"stdout":"Vector space morphism represented by the matrix:\n[1 0 0]\n[0 1 0]\n[0 0 1]\nDomain: Vector space of dimension 3 over Rational Field\nCodomain: Vector space of dimension 3 over Rational Field\n"}︡
︠3f0ee205-0959-4b62-ba3b-41811332c60b︠
CBdom = identity_domain.restrict_domain(VD1).restrict_codomain(VD2)
CBdom_mat = CBdom.matrix(side='right')
CBdom_mat

︡fc77898a-8db6-4604-bb57-81fcf3520fe8︡{"stdout":"[ -5 -36 -49]\n[  0   1   2]\n[ -2 -13 -17]\n"}︡
︠2171371b-a54e-4153-8261-5df13c31da3ci︠
%html
<p>This matrix should convert between the two bases for the domain.  Here's a check of Theorem CB.</p>
︡62204cad-a4ec-488f-b1ae-3e5387b79c61︡{"html":"<p>This matrix should convert between the two bases for the domain.  Here's a check of Theorem CB.</p>"}︡
︠565f1591-9b62-47bb-90b7-85c6e975e85d︠
u = random_vector(QQ, n)
u1 = VD1.coordinate_vector(u)
u2 = VD2.coordinate_vector(u)
u, u1, u2, u2 == CBdom_mat*u1

︡847ea33c-3f79-4fe7-87e2-2920534dc15d︡{"stdout":"((-1, -2/3, -3), (-23/3, 4, -7/3), (26/3, -2/3, 3), True)\n"}︡
︠18e214de-2e54-4335-bb05-25477355b800i︠
%html
<p>Same drill in the codomain.</p>
︡3668fc9f-28b9-4cce-a749-2ed60f2d7bba︡{"html":"<p>Same drill in the codomain.</p>"}︡
︠ce300bd6-7ce6-4e5f-bbd2-9e576e109c87︠
identity_codomain = linear_transformation(QQ^m, QQ^m, identity_matrix(m))
identity_codomain

︡02f76bcb-55e0-448c-ac5a-816d6b1ea8ab︡{"stdout":"Vector space morphism represented by the matrix:\n[1 0 0 0 0 0 0]\n[0 1 0 0 0 0 0]\n[0 0 1 0 0 0 0]\n[0 0 0 1 0 0 0]\n[0 0 0 0 1 0 0]\n[0 0 0 0 0 1 0]\n[0 0 0 0 0 0 1]\nDomain: Vector space of dimension 7 over Rational Field\nCodomain: Vector space of dimension 7 over Rational Field\n"}︡
︠f354ad84-6d97-4cbc-849d-8fe175d5b325︠
CBcodom = identity_codomain.restrict_domain(VC1).restrict_codomain(VC2)
CBcodom_mat = CBcodom.matrix(side='right')
CBcodom_mat

︡f4ee67aa-94ef-4c39-9ea2-60cbc28bb3b8︡{"stdout":"[ -31  137  -24   54  -37 -177  -72]\n[ -81  355  -65  166 -116 -454 -160]\n[ -36  158  -30   77  -54 -203  -66]\n[   4  -20    5  -11    7   27    6]\n[-113  496  -93  240 -168 -635 -213]\n[  75 -330   62 -159  111  423  142]\n[ -28  123  -23   60  -42 -157  -53]\n"}︡
︠27a34eb4-da1e-435a-bdbf-0198a11cd97bi︠
%html
<p>And here is the check on Theorem MRCB.  Convert from domain basis 1 to domain basis 2, use the second representation, then convert back from codomain basis 2 to codomain basis 1 and get as a result the representation relative to the first bases.</p>
︡9a63823f-630c-4982-b85f-a3e1c914cf19︡{"html":"<p>And here is the check on Theorem MRCB.  Convert from domain basis 1 to domain basis 2, use the second representation, then convert back from codomain basis 2 to codomain basis 1 and get as a result the representation relative to the first bases.</p>"}︡
︠55ad8a7d-5cb0-4425-a024-eaadeb686463︠
rep1.matrix(side='right') == CBcodom_mat.inverse()*rep2.matrix(side='right')*CBdom_mat

︡5f385677-c9bf-4383-9bd2-70036fc6d153︡{"stdout":"True\n"}︡
︠95595172-ca6a-4169-83b9-69396a7c6b1bi︠
%html
<div class="section"><div class="heading">
<div class="number">3</div>
<div class="title">A Diagonal Representation</div>
</div></div>
︡8e0aa4ef-b591-4ba8-8b46-ed80e388f167︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">3</div>\n<div class=\"title\">A Diagonal Representation</div>\n</div></div>"}︡
︠bcf7a520-4a82-459c-979d-61a982f66392i︠
%html
<p>We specialize to linear transformations with equal domain and codomain.</p>
︡1b87ce9e-cfc7-4aa6-aa58-1864ace0fa91︡{"html":"<p>We specialize to linear transformations with equal domain and codomain.</p>"}︡
︠7290c3d7-bc64-4f88-ba81-548144702feci︠
%html
<p>First a matrix representation using a square matrix.</p>
︡43cd10f2-1d17-4d99-ac7f-fc45ab269ed6︡{"html":"<p>First a matrix representation using a square matrix.</p>"}︡
︠770d7f70-dc9d-4dea-b941-c37fa20ae54e︠
A = matrix(QQ,[[-2, 3, -20, 15, 1, 30, -5, 17],[-27, -38, -30, -50, 268, -73, 210, -273],[-12, -24, -7, -30, 142, -48, 100, -160],[-3, -15, 35, -32, 35, -57, 20, -71],[-9, -9, -10, -10, 65, -11, 50, -59],[-3, -6, -20, 0, 58, 1, 40, -55],[3, 0, 5, 0, -10, -3, -12, 1],[0, 3, 0, 5, -19, 10, -15, 25]])
T = linear_transformation(A, side='right')
T

︡6ec7f2dd-c459-4904-b1a6-331278a67918︡{"stdout":"Vector space morphism represented by the matrix:\n[  -2  -27  -12   -3   -9   -3    3    0]\n[   3  -38  -24  -15   -9   -6    0    3]\n[ -20  -30   -7   35  -10  -20    5    0]\n[  15  -50  -30  -32  -10    0    0    5]\n[   1  268  142   35   65   58  -10  -19]\n[  30  -73  -48  -57  -11    1   -3   10]\n[  -5  210  100   20   50   40  -12  -15]\n[  17 -273 -160  -71  -59  -55    1   25]\nDomain: Vector space of dimension 8 over Rational Field\nCodomain: Vector space of dimension 8 over Rational Field\n"}︡
︠83b0859b-1916-4965-bf41-8c8784abba6ci︠
%html
<p>A basis of \(\mathbb{C}^8\). And a vector space with this basis.</p>
︡01cd24a4-d185-4ab4-8bfa-68efe98e2cba︡{"html":"<p>A basis of \\(\\mathbb{C}^8\\). And a vector space with this basis.</p>"}︡
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

︡9be001ef-a7c9-4bf1-b693-03f8cad0ffdf︡
︠506aa702-f515-4d49-9e7c-462af2620212︠
S = T.restrict_domain(V).restrict_codomain(V)
S.matrix(side='right')

︡68262cbc-2694-4e45-8160-594f36990ca4︡{"stdout":"[ 3  0  0  0  0  0  0  0]\n[ 0  3  0  0  0  0  0  0]\n[ 0  0  1  0  0  0  0  0]\n[ 0  0  0  1  0  0  0  0]\n[ 0  0  0  0 -2  0  0  0]\n[ 0  0  0  0  0 -2  0  0]\n[ 0  0  0  0  0  0 -2  0]\n[ 0  0  0  0  0  0  0 -2]\n"}︡
︠e5fc1812-2630-4b57-adb1-44f6dfc8388ai︠
%html
<p>That's a nice representation!  Where did the basis come from?</p>
︡872064c6-bf6f-4260-8d62-e5be897788b5︡{"html":"<p>That's a nice representation!  Where did the basis come from?</p>"}︡
︠2eb6cf6f-8652-4ce1-a098-f471d2aa3a55︠

︠047727b4-6cb9-4c18-a6f8-045a719b5bac︠
A.eigenvalues()

︡ece53fea-bc57-4209-b158-931f6876192e︡{"stdout":"[3, 3, 1, 1, -2, -2, -2, -2]"}︡{"stdout":"\n"}︡
︠ce618844-777b-4400-8e4a-169542b30f95i︠
%html
<p>Some (right) eigenvectors.</p>
︡10445b12-be2b-4a89-86b6-0968ec07bfa9︡{"html":"<p>Some (right) eigenvectors.</p>"}︡
︠79a8a8e9-8990-4e35-9e7d-8a60594f5357︠
(A - 3).right_kernel(basis='pivot').basis()

︡914eb521-8dff-4756-beea-83c1e118f567︡{"stdout":"[\n(-4, -6, -1, 7, -2, -4, 1, 0),\n(3, -10, -6, -6, -2, 0, 0, 1)\n]\n"}︡
︠d1767dce-9576-4deb-a7f4-882248012257i︠
%html
<p>Eigenvalues are a property of the linear transformation.</p>
︡b4276504-ac22-4a9a-bdf8-d5d2136a3e34︡{"html":"<p>Eigenvalues are a property of the linear transformation.</p>"}︡
︠1f961dcd-e09d-4063-8d73-27862d4f44bb︠
T.eigenvalues()

︡52ae2f55-f185-4e1e-824a-9a395d6bb3b0︡{"stdout":"[3, 3, 1, 1, -2, -2, -2, -2]\n"}︡
︠b730d36d-b641-411b-b3e0-9ed23bca0f25i︠
%html
<p>Bases for the eigenspaces depend on the representation, but the actual eigenvectors are also a property of the linear transformation.</p>
︡261267d7-2c47-4ce1-9884-a3ddd90927e4︡{"html":"<p>Bases for the eigenspaces depend on the representation, but the actual eigenvectors are also a property of the linear transformation.</p>"}︡
︠8e55b804-f065-4ef4-9cf0-0acaec7f3fd5︠

︠6778dc4e-284f-4481-86ab-f74d65cac36f︠

︠a0353a02-ba0b-4b1a-9783-979efa808bb9︠
S.eigenvectors()

︡dc688511-a0c1-4267-ac15-37fd21d81cf4︡{"stdout":"[(3, [\n(-4, -6, -1, 7, -2, -4, 1, 0),\n(3, -10, -6, -6, -2, 0, 0, 1)\n], 2), (1, [\n(0, -9, -4, -1, -3, -1, 1, 0),\n(1, -12, -8, -5, -3, -2, 0, 1)\n], 2), (-2, [\n(0, 3, 2, 2, 1, 0, 0, 0),\n(1, 0, 0, -2, 0, 1, 0, 0),\n(0, 0, 2, 3, 0, 0, 1, 0),\n(3, -4, -2, -3, 0, 0, 0, 1)\n], 4)]\n"}︡
︠436141db-c538-4e65-98f2-8bada192b9aa︠
T.eigenvectors()

︡997ae093-2cc2-4465-ba0d-988a862a75dc︡{"stdout":"[(3, [\n(1, 0, -13/29, -53/29, 4/29, 20/29, -5/29, 3/29),\n(0, 1, 27/58, 3/58, 7/29, 6/29, -3/58, -2/29)\n], 2), (1, [\n(1, 0, -8/3, -11/3, 1, -2/3, -4/3, 1),\n(0, 1, 4/9, 1/9, 1/3, 1/9, -1/9, 0)\n], 2), (-2, [\n(1, 0, 0, 0, 4/7, -2/7, -1/7, 3/7),\n(0, 1, 0, 0, 3/7, -3/14, -5/14, 1/14),\n(0, 0, 1, 0, -3/7, 27/28, 17/28, -9/28),\n(0, 0, 0, 1, 2/7, -9/14, -1/14, 3/14)\n], 4)]\n"}︡
︠e98ea494-73a5-4b67-a84d-3c13a49946c9i︠
%html
<p>We could do the same thing, but in the style of Section SD, using a change-of-basis matrix.</p>
︡9f7f397d-d619-4e86-85eb-7baf0cd85847︡{"html":"<p>We could do the same thing, but in the style of Section SD, using a change-of-basis matrix.</p>"}︡
︠c766d1d4-124c-4009-b60e-81cd31e966fb︠
identity = linear_transformation(QQ^8, QQ^8, identity_matrix(8))
identity

︡404dfe15-fa10-4df4-9370-f48dec950421︡︡
︠b06f9c89-fe96-436c-badf-17634e8ecaa4︠
CB = identity.restrict_domain(V).restrict_codomain(QQ^8)
CB

︡86204428-390d-4a79-bbd9-39eb1cf79d9d︡︡
︠c6ae2139-72f2-4bc2-920d-341675e55798i︠
%html
<p>Here is similarity, in disguise.</p>
︡f5b3215a-b6ee-424f-9067-72b3c3f31c1d︡{"html":"<p>Here is similarity, in disguise.</p>"}︡
︠5611a4b1-f679-4a77-a9a2-c59ec35d1d41︠
CBmat = CB.matrix(side='right')
CBmat.inverse()*T.matrix(side='right')*CBmat

︡34c3ef3d-5658-40e1-aae7-b6bae88ec6c8︡︡









