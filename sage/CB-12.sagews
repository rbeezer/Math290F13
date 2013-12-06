︠2d262483-e525-4028-adc0-330e895ac818i︠
load('mathbook.css')

︡4c67a08b-f9f6-43a6-bb27-02e622efcce5︡︡
︠1d0eef26-eda8-4d0a-9985-af45e0dec72ei︠
%html
<div>\(\)</div>
︡49d5b830-3848-4cdd-8703-1b6992c1d3f5︡{"html":"<div>\\(\\)</div>"}︡
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
︡b95296b9-23d4-40eb-8a60-5878fc223779︡{"html":"<style></style><div class=\"headerblock\">\n<div class=\"title\">Demo: Section CB</div>\n<div class=\"authorgroup\"><div class=\"author-info\">\n<div class=\"author-name\">Robert Beezer</div>\n<div class=\"author-department\"></div>\n<div class=\"author-institution\"></div>\n<div class=\"author-email\"></div>\n</div></div>\n<div class=\"date\">Math 290, Fall 2013<br>November 21, 2013</div>\n</div>"}︡
︠7a0cd7d4-2ae4-4fef-b200-201aeb66661bi︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">A Linear Transformation, Two Vector Spaces, Four Bases</div>
</div></div>
︡e9ccdc23-82e6-4e0a-b265-c98a911b051e︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">1</div>\n<div class=\"title\">A Linear Transformation, Two Vector Spaces, Four Bases</div>\n</div></div>"}︡
︠9678571a-5306-4831-a43b-18858bb01dc0i︠
%html
<p>In this section we deﬁne a linear transformation from \(\mathbb{C}^{3}\) to \(\mathbb{C}^{7}\). The deﬁnition is a \(7\times 3\) matrix of rank \(3\) that we will use to multiply input vectors with a matrix-vector product. It is not important if the linear transformation is injective and/or surjective.</p>
︡977b5cab-33e3-4dc8-b9b2-9f21fe6fdd37︡{"html":"<p>In this section we deﬁne a linear transformation from \\(\\mathbb{C}^{3}\\) to \\(\\mathbb{C}^{7}\\). The deﬁnition is a \\(7\\times 3\\) matrix of rank \\(3\\) that we will use to multiply input vectors with a matrix-vector product. It is not important if the linear transformation is injective and/or surjective.</p>"}︡
︠1b4a881b-6b2d-4947-a2a6-91e31063056fi︠
%html
<p>We will build two representations, using a total of four bases — two for the domain and two for the codomain.</p>
︡93af221d-260a-4bf6-98b2-de30d3c99859︡{"html":"<p>We will build two representations, using a total of four bases — two for the domain and two for the codomain.</p>"}︡
︠48d44c21-f97b-45bf-be76-a3ccaec83aaf︠
m, n = 7, 3
A = random_matrix(QQ, m, n, algorithm='echelonizable', rank=n, upper_bound=9)
A

︡dc0714a6-42c5-40cf-b7d8-6eb72907c10d︡{"stdout":"[ 5  5 -2]\n[-4 -3  4]\n[-3 -3  7]\n[-2  0 -2]\n[ 4  4 -5]\n[-2 -1  5]\n[-2 -2  0]\n"}︡
︠ba00e2ad-31ca-4bfa-b04f-a2d5d9db0e53︠
T = linear_transformation(A, side='right')
T

︡ea67a7a4-6e2d-49f6-a4c8-ffa70387b3ae︡{"stdout":"Vector space morphism represented by the matrix:\n[ 5 -4 -3 -2  4 -2 -2]\n[ 5 -3 -3  0  4 -1 -2]\n[-2  4  7 -2 -5  5  0]\nDomain: Vector space of dimension 3 over Rational Field\nCodomain: Vector space of dimension 7 over Rational Field\n"}︡
︠349634fb-40f6-4239-ba94-224cd8dfcc6fi︠
%html
<p>The four bases, associated with the two vector spaces.</p>
︡4d537149-c045-436c-9527-5321e948c671︡{"html":"<p>The four bases, associated with the two vector spaces.</p>"}︡
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

︡c7fca23e-791e-43e2-840b-652d99722ffe︡{"stdout":"[(-2, 1, 0), (7, -4, -4), (6, -4, -7)]\n"}︡{"stdout":"[(3, -1, -1), (-8, 5, 2), (0, -3, 1)]\n"}︡{"stdout":"[(0, -1, -2, 0, 1, 1, 1), (1, 0, -1, 2, 1, -1, 1), (-1, -2, -2, -2, 1, 2, 2), (0, 0, 0, 1, 1, -1, 0), (0, -5, -5, -4, 2, 6, 5), (-4, -3, 0, -6, 1, 4, 2), (7, 4, -3, 7, -4, -4, -4)]\n"}︡{"stdout":"[(1, 0, 0, 0, 1, 1, -1), (0, 1, 1, 0, -1, -1, 0), (-1, -1, 0, 0, 0, 0, 0), (1, 0, 0, 1, 1, 2, 0), (7, 7, 2, 0, 1, 1, -3), (0, -3, -1, 4, 2, 7, 1), (8, 8, 1, -5, 3, -4, -4)]\n"}︡
︠7cf2e472-a239-46cc-94dc-0c62d6a2ad73i︠
%html
<p>Check out a few of these…</p>
︡87e54da7-d880-431d-b7a9-d7c4cb303b2d︡{"html":"<p>Check out a few of these…</p>"}︡
︠7adeecbc-1a75-4ba9-ae51-7e09d835b71c︠
VC2

︡886a50a1-fa73-4692-8333-fab89dc34742︡{"stdout":"Vector space of degree 7 and dimension 7 over Rational Field\nUser basis matrix:\n[ 1  0  0  0  1  1 -1]\n[ 0  1  1  0 -1 -1  0]\n[-1 -1  0  0  0  0  0]\n[ 1  0  0  1  1  2  0]\n[ 7  7  2  0  1  1 -3]\n[ 0 -3 -1  4  2  7  1]\n[ 8  8  1 -5  3 -4 -4]\n"}︡
︠818855b1-cc7d-4759-885f-97cc08e29afbi︠
%html
<p>Now we build two <em>different</em> representations.</p>
︡4a715287-bfaa-42dc-95f1-51298c9bad73︡{"html":"<p>Now we build two <em>different</em> representations.</p>"}︡
︠4bbaeb39-608e-430c-9422-b597538ed029︠
rep1 = T.restrict_domain(VD1).restrict_codomain(VC1)
rep1.matrix(side='right')

︡3cd79f8b-485c-49e0-8d7b-ff235674a5f1︡{"stdout":"[   0  -22  -39]\n[-120  395  306]\n[ 134 -429 -320]\n[ -23  129  152]\n[  -8   29   25]\n[-127  433  350]\n[ -37  133  114]\n"}︡
︠99ecae19-2d43-437c-a3b4-cc184752ab6c︠
rep2 = T.restrict_domain(VD2).restrict_codomain(VC2)
rep2.matrix(side='right')

︡849d21c4-fdf6-4116-8ab6-09588f3e319a︡{"stdout":"[  40  -77  -38]\n[ -84  119  146]\n[ -41   87   27]\n[ 186 -283 -293]\n[   7   -4  -21]\n[ -95  145  149]\n[ -38   57   61]\n"}︡
︠e4f337ae-8695-4df0-b837-e845fb37dc55i︠
%html
<div class="section"><div class="heading">
<div class="number">2</div>
<div class="title">Change of Basis Matrices</div>
</div></div>
︡c57271f7-2b8a-4d8a-8bea-4504c5be2335︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">2</div>\n<div class=\"title\">Change of Basis Matrices</div>\n</div></div>"}︡
︠6796891f-a277-48ec-9e33-f223d84b1d28i︠
%html
<p>A natural way to build a change-of-basis matrix in Sage is to adjust the bases for the identity linear transformation.</p>
︡2d2b9c9f-de8e-4daf-8527-448a8d0aa910︡{"html":"<p>A natural way to build a change-of-basis matrix in Sage is to adjust the bases for the identity linear transformation.</p>"}︡
︠6225ab2c-d914-4d24-a182-c7feb258efb3︠
identity_domain = linear_transformation(QQ^n, QQ^n, identity_matrix(n))
identity_domain

︡5e45a00d-bf23-41bc-87bc-f19f4d1fae4b︡{"stdout":"Vector space morphism represented by the matrix:\n[1 0 0]\n[0 1 0]\n[0 0 1]\nDomain: Vector space of dimension 3 over Rational Field\nCodomain: Vector space of dimension 3 over Rational Field\n"}︡
︠e725bb16-e8d4-4d95-b257-c7bc819a740b︠

︠3f0ee205-0959-4b62-ba3b-41811332c60b︠
CBdom = identity_domain.restrict_domain(VD1).restrict_codomain(VD2)
CBdom_mat = CBdom.matrix(side='right')
CBdom_mat

︡f75a7e68-04da-48c0-9f97-94d55fc448a8︡{"stdout":"[ -14  -51 -134]\n[  -5  -20  -51]\n[  -4  -15  -39]\n"}︡
︠2171371b-a54e-4153-8261-5df13c31da3ci︠
%html
<p>This matrix should convert between the two bases for the domain.  Here's a check of Theorem CB.</p>
︡04ea7d4e-25bd-49cd-9474-049c73e3d539︡{"html":"<p>This matrix should convert between the two bases for the domain.  Here's a check of Theorem CB.</p>"}︡
︠565f1591-9b62-47bb-90b7-85c6e975e85d︠
u = random_vector(QQ, n)
u1 = VD1.coordinate_vector(u)
u2 = VD2.coordinate_vector(u)
u, u1, u2, u2 == CBdom_mat*u1

︡cdc5353d-e1cd-4e79-b10d-bafc7d80a14d︡{"stdout":"((-2, -1/2, 2), (-89/2, -25, 14), (22, 17/2, 7), True)\n"}︡
︠18e214de-2e54-4335-bb05-25477355b800i︠
%html
<p>Same drill in the codomain.</p>
︡d21ef828-adc5-45f9-b23d-cb025ea2a563︡{"html":"<p>Same drill in the codomain.</p>"}︡
︠ce300bd6-7ce6-4e5f-bbd2-9e576e109c87︠
identity_codomain = linear_transformation(QQ^m, QQ^m, identity_matrix(m))
identity_codomain

︡9f1a014a-7e6f-4b11-a434-02c948f663e0︡{"stdout":"Vector space morphism represented by the matrix:\n[1 0 0 0 0 0 0]\n[0 1 0 0 0 0 0]\n[0 0 1 0 0 0 0]\n[0 0 0 1 0 0 0]\n[0 0 0 0 1 0 0]\n[0 0 0 0 0 1 0]\n[0 0 0 0 0 0 1]\nDomain: Vector space of dimension 7 over Rational Field\nCodomain: Vector space of dimension 7 over Rational Field\n"}︡
︠f354ad84-6d97-4cbc-849d-8fe175d5b325︠
CBcodom = identity_codomain.restrict_domain(VC1).restrict_codomain(VC2)
CBcodom_mat = CBcodom.matrix(side='right')
CBcodom_mat

︡5d365a16-8169-4d29-a5ab-70f91959cce0︡{"stdout":"[  -1   -2    1   -3   10    1    7]\n[  -2  -24   22  -17   59   68  -78]\n[  -1    5   -9    8  -35  -14    1]\n[   0   45  -41   31 -102 -123  131]\n[   0    5   -6    4  -17  -16   18]\n[   0  -22   21  -15   52   63  -71]\n[   0   -9    9   -6   22   27  -32]\n"}︡
︠27a34eb4-da1e-435a-bdbf-0198a11cd97bi︠
%html
<p>And here is the check on Theorem MRCB.  Convert from domain basis 1 to domain basis 2, use the second representation, then convert back from codomain basis 2 to codomain basis 1 and get as a result the representation relative to the first bases.</p>
︡49c19296-2f97-43bc-8b68-c9cf039abfc1︡{"html":"<p>And here is the check on Theorem MRCB.  Convert from domain basis 1 to domain basis 2, use the second representation, then convert back from codomain basis 2 to codomain basis 1 and get as a result the representation relative to the first bases.</p>"}︡
︠55ad8a7d-5cb0-4425-a024-eaadeb686463︠
rep1.matrix(side='right') == CBcodom_mat.inverse()*rep2.matrix(side='right')*CBdom_mat

︡0fab489f-227b-48dd-b88a-7b02039cec7f︡{"stdout":"True\n"}︡
︠95595172-ca6a-4169-83b9-69396a7c6b1bi︠
%html
<div class="section"><div class="heading">
<div class="number">3</div>
<div class="title">A Diagonal Representation</div>
</div></div>
︡42f52ac8-e810-4eab-87b4-3fe61fd9019f︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">3</div>\n<div class=\"title\">A Diagonal Representation</div>\n</div></div>"}︡
︠bcf7a520-4a82-459c-979d-61a982f66392i︠
%html
<p>We specialize to linear transformations with equal domain and codomain.</p>
︡e9886b92-60ab-4e6a-bea3-cf3c4fb5a6a5︡{"html":"<p>We specialize to linear transformations with equal domain and codomain.</p>"}︡
︠7290c3d7-bc64-4f88-ba81-548144702feci︠
%html
<p>First a matrix representation using a square matrix.</p>
︡dc3af27e-e61f-4a5a-bff8-8c3b4a884e86︡{"html":"<p>First a matrix representation using a square matrix.</p>"}︡
︠770d7f70-dc9d-4dea-b941-c37fa20ae54e︠
A = matrix(QQ,[[-2, 3, -20, 15, 1, 30, -5, 17],[-27, -38, -30, -50, 268, -73, 210, -273],[-12, -24, -7, -30, 142, -48, 100, -160],[-3, -15, 35, -32, 35, -57, 20, -71],[-9, -9, -10, -10, 65, -11, 50, -59],[-3, -6, -20, 0, 58, 1, 40, -55],[3, 0, 5, 0, -10, -3, -12, 1],[0, 3, 0, 5, -19, 10, -15, 25]])
T = linear_transformation(A, side='right')
T

︡16253279-ecbe-4eda-9dd6-081de7a8daad︡{"stdout":"Vector space morphism represented by the matrix:\n[  -2  -27  -12   -3   -9   -3    3    0]\n[   3  -38  -24  -15   -9   -6    0    3]\n[ -20  -30   -7   35  -10  -20    5    0]\n[  15  -50  -30  -32  -10    0    0    5]\n[   1  268  142   35   65   58  -10  -19]\n[  30  -73  -48  -57  -11    1   -3   10]\n[  -5  210  100   20   50   40  -12  -15]\n[  17 -273 -160  -71  -59  -55    1   25]\nDomain: Vector space of dimension 8 over Rational Field\nCodomain: Vector space of dimension 8 over Rational Field\n"}︡
︠83b0859b-1916-4965-bf41-8c8784abba6ci︠
%html
<p>A basis of \(\mathbb{C}^8\). And a vector space with this basis.</p>
︡6eaa8481-1d2f-4cae-9da0-9c075a490635︡{"html":"<p>A basis of \\(\\mathbb{C}^8\\). And a vector space with this basis.</p>"}︡
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

︡96067e7a-2d0a-4605-a7a8-fb667c2b0596︡
︠506aa702-f515-4d49-9e7c-462af2620212︠
S = T.restrict_domain(V).restrict_codomain(V)
S.matrix(side='right')

︡ca61d6ff-4c8a-4567-a34d-9be2f6949f64︡{"stdout":"[ 3  0  0  0  0  0  0  0]\n[ 0  3  0  0  0  0  0  0]\n[ 0  0  1  0  0  0  0  0]\n[ 0  0  0  1  0  0  0  0]\n[ 0  0  0  0 -2  0  0  0]\n[ 0  0  0  0  0 -2  0  0]\n[ 0  0  0  0  0  0 -2  0]\n[ 0  0  0  0  0  0  0 -2]\n"}︡
︠e5fc1812-2630-4b57-adb1-44f6dfc8388ai︠
%html
<p>That's a nice representation!  Where did the basis come from?</p>
︡a1a693a0-8aab-4586-aea7-b9923f57766a︡{"html":"<p>That's a nice representation!  Where did the basis come from?</p>"}︡
︠87b336f8-47d8-4baa-aabe-3eaeeefbaf72︠

︠2b29fefa-746c-4a74-b07a-61a9a052666e︠

︠047727b4-6cb9-4c18-a6f8-045a719b5bac︠
A.eigenvalues()

︡1adfaf04-0550-4298-a273-86339ee0fc06︡{"stdout":"[3, 3, 1, 1, -2, -2, -2, -2]\n"}︡
︠ce618844-777b-4400-8e4a-169542b30f95i︠
%html
<p>Some (right) eigenvectors.</p>
︡69494cbd-458a-40cd-8bfb-82374e2bc8b1︡{"html":"<p>Some (right) eigenvectors.</p>"}︡
︠79a8a8e9-8990-4e35-9e7d-8a60594f5357︠
(A - 3).right_kernel(basis='pivot').basis()

︡883335d1-60ed-4d1c-8925-99b081eb8117︡{"stdout":"[\n(-4, -6, -1, 7, -2, -4, 1, 0),\n(3, -10, -6, -6, -2, 0, 0, 1)\n]\n"}︡
︠d1767dce-9576-4deb-a7f4-882248012257i︠
%html
<p>Eigenvalues are a property of the linear transformation.</p>
︡efdd4dc7-8568-4e50-a92c-30deb9eee90b︡{"html":"<p>Eigenvalues are a property of the linear transformation.</p>"}︡
︠1f961dcd-e09d-4063-8d73-27862d4f44bb︠
T.eigenvalues()

︡3cb6055e-b578-4e15-8084-a066bb662ab9︡{"stdout":"[3, 3, 1, 1, -2, -2, -2, -2]\n"}︡
︠b730d36d-b641-411b-b3e0-9ed23bca0f25i︠
%html
<p>Bases for the eigenspaces depend on the representation, but the actual eigenvectors are also a property of the linear transformation.</p>
︡d662ee46-6cca-485c-8922-5295bd24374d︡{"html":"<p>Bases for the eigenspaces depend on the representation, but the actual eigenvectors are also a property of the linear transformation.</p>"}︡
︠a0353a02-ba0b-4b1a-9783-979efa808bb9︠
S.eigenvectors()

︡baa611cb-cee7-4a5f-b1ef-7b0c99502014︡{"stdout":"[(3, [\n(-4, -6, -1, 7, -2, -4, 1, 0),\n(3, -10, -6, -6, -2, 0, 0, 1)\n], 2), (1, [\n(0, -9, -4, -1, -3, -1, 1, 0),\n(1, -12, -8, -5, -3, -2, 0, 1)\n], 2), (-2, [\n(0, 3, 2, 2, 1, 0, 0, 0),\n(1, 0, 0, -2, 0, 1, 0, 0),\n(0, 0, 2, 3, 0, 0, 1, 0),\n(3, -4, -2, -3, 0, 0, 0, 1)\n], 4)]\n"}︡
︠436141db-c538-4e65-98f2-8bada192b9aa︠
T.eigenvectors()

︡eed14ead-a7ba-4379-9407-18c3db4a669b︡{"stdout":"[(3, [\n(1, 0, -13/29, -53/29, 4/29, 20/29, -5/29, 3/29),\n(0, 1, 27/58, 3/58, 7/29, 6/29, -3/58, -2/29)\n], 2), (1, [\n(1, 0, -8/3, -11/3, 1, -2/3, -4/3, 1),\n(0, 1, 4/9, 1/9, 1/3, 1/9, -1/9, 0)\n], 2), (-2, [\n(1, 0, 0, 0, 4/7, -2/7, -1/7, 3/7),\n(0, 1, 0, 0, 3/7, -3/14, -5/14, 1/14),\n(0, 0, 1, 0, -3/7, 27/28, 17/28, -9/28),\n(0, 0, 0, 1, 2/7, -9/14, -1/14, 3/14)\n], 4)]\n"}︡
︠e98ea494-73a5-4b67-a84d-3c13a49946c9i︠
%html
<p>We could do the same thing, but in the style of Section SD, using a change-of-basis matrix.</p>
︡0d8b1dca-e89b-417e-97d6-9d93f9a41199︡{"html":"<p>We could do the same thing, but in the style of Section SD, using a change-of-basis matrix.</p>"}︡
︠c766d1d4-124c-4009-b60e-81cd31e966fb︠
identity = linear_transformation(QQ^8, QQ^8, identity_matrix(8))
identity

︡d60bd56d-39c5-49c6-8700-951c4a0a8aba︡{"stdout":"Vector space morphism represented by the matrix:\n[1 0 0 0 0 0 0 0]\n[0 1 0 0 0 0 0 0]\n[0 0 1 0 0 0 0 0]\n[0 0 0 1 0 0 0 0]\n[0 0 0 0 1 0 0 0]\n[0 0 0 0 0 1 0 0]\n[0 0 0 0 0 0 1 0]\n[0 0 0 0 0 0 0 1]\nDomain: Vector space of dimension 8 over Rational Field\nCodomain: Vector space of dimension 8 over Rational Field\n"}︡
︠b06f9c89-fe96-436c-badf-17634e8ecaa4︠
CB = identity.restrict_domain(V).restrict_codomain(QQ^8)
CB

︡e7c0422b-53b2-474c-b4d7-932be82dab8d︡{"stdout":"Vector space morphism represented by the matrix:\n[ -4  -6  -1   7  -2  -4   1   0]\n[  3 -10  -6  -6  -2   0   0   1]\n[  0  -9  -4  -1  -3  -1   1   0]\n[  1 -12  -8  -5  -3  -2   0   1]\n[  0   3   2   2   1   0   0   0]\n[  1   0   0  -2   0   1   0   0]\n[  0   0   2   3   0   0   1   0]\n[  3  -4  -2  -3   0   0   0   1]\nDomain: Vector space of degree 8 and dimension 8 over Rational Field\nUser basis matrix:\n[ -4  -6  -1   7  -2  -4   1   0]\n[  3 -10  -6  -6  -2   0   0   1]\n[  0  -9  -4  -1  -3  -1   1   0]\n[  1 -12  -8  -5  -3  -2   0   1]\n[  0   3   2   2   1   0   0   0]\n[  1   0   0  -2   0   1   0   0]\n[  0   0   2   3   0   0   1   0]\n[  3  -4  -2  -3   0   0   0   1]\nCodomain: Vector space of dimension 8 over Rational Field\n"}︡
︠c6ae2139-72f2-4bc2-920d-341675e55798i︠
%html
<p>Here is similarity, in disguise.</p>
︡5c93b1d4-62d7-4f81-a786-dc7f6a8cf039︡{"html":"<p>Here is similarity, in disguise.</p>"}︡
︠5611a4b1-f679-4a77-a9a2-c59ec35d1d41︠
CBmat = CB.matrix(side='right')
CBmat.inverse()*T.matrix(side='right')*CBmat

︡63acef92-c7c8-4000-b99c-da3b045d704a︡{"stdout":"[ 3  0  0  0  0  0  0  0]\n[ 0  3  0  0  0  0  0  0]\n[ 0  0  1  0  0  0  0  0]\n[ 0  0  0  1  0  0  0  0]\n[ 0  0  0  0 -2  0  0  0]\n[ 0  0  0  0  0 -2  0  0]\n[ 0  0  0  0  0  0 -2  0]\n[ 0  0  0  0  0  0  0 -2]\n"}︡
︠6a1cc072-7fc8-4495-894e-0cef542b4cf4︠









