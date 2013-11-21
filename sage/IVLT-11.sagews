︠c7381671-948f-4b23-9160-5b86e7f4676fi︠
load('mathbook.css')

︡8ff93cd2-f9c1-4174-bde9-87d161435b65︡︡
︠b61c43b7-c170-4c08-9748-31416013a9e8i︠
%html
<div>\(\)</div>
︡c49cf8da-aad4-457a-aa9d-600e5d5319f8︡{"html":"<div>\\(\\)</div>"}︡
︠75508a89-5c94-45db-a034-a062aee07bfbi︠
%html
<style></style><div class="headerblock">
<div class="title">Demo: Section IVLT</div>
<div class="authorgroup"><div class="author-info">
<div class="author-name">Robert Beezer</div>
<div class="author-department"></div>
<div class="author-institution"></div>
<div class="author-email"></div>
</div></div>
<div class="date">Math 290, Fall 2013<br>November 15, 2013</div>
</div>
︡4fb02536-8780-4fc1-9c20-bd39f136c884︡{"html":"<style></style><div class=\"headerblock\">\n<div class=\"title\">Demo: Section IVLT</div>\n<div class=\"authorgroup\"><div class=\"author-info\">\n<div class=\"author-name\">Robert Beezer</div>\n<div class=\"author-department\"></div>\n<div class=\"author-institution\"></div>\n<div class=\"author-email\"></div>\n</div></div>\n<div class=\"date\">Math 290, Fall 2013<br>November 15, 2013</div>\n</div>"}︡
︠651e593f-fbf1-4953-a8a5-1f25bbcc72efi︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">Invertible Linear Transformations</div>
</div></div>
︡1c4579f2-e0dc-46d2-bbaa-0c6f5b1666d5︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">1</div>\n<div class=\"title\">Invertible Linear Transformations</div>\n</div></div>"}︡
︠c5c682ce-894a-4bc2-aa97-ddb10d2ce42ei︠
%html
<p>A carefully-crafted invertible linear transformation from \(\mathbb{Q}^5\) to \(\mathbb{Q}^5\).</p>
︡5c61520f-60f0-4b74-b159-1ac42ae4729d︡{"html":"<p>A carefully-crafted invertible linear transformation from \\(\\mathbb{Q}^5\\) to \\(\\mathbb{Q}^5\\).</p>"}︡
︠e86b92e4-a403-4c4a-bd4a-5ebcaf5657e6︠
A = matrix(QQ, [[1, 1, -1, -2, 0], [-3, -2, 1, 4, 7],
    [2, 2, -1, -3, -4], [-4, -3, 3, 8, 3], [5, 6, -7, -8, 8]])
T = linear_transformation(QQ^5, QQ^5, A, side='right')
T

︡10a72e1a-e714-453c-a199-79f5462e596c︡{"stdout":"Vector space morphism represented by the matrix:\n[ 1 -3  2 -4  5]\n[ 1 -2  2 -3  6]\n[-1  1 -1  3 -7]\n[-2  4 -3  8 -8]\n[ 0  7 -4  3  8]\nDomain: Vector space of dimension 5 over Rational Field\nCodomain: Vector space of dimension 5 over Rational Field\n"}︡
︠0521364b-7063-42c8-b985-295cafeb7a12︠
T.is_injective(), T.is_surjective()

︡42e07184-e68f-4245-a0ce-e181243e4fb6︡{"stdout":"(True, True)\n"}︡
︠3fc4687f-f255-419d-a533-25469c609763︠
T.is_invertible()

︡ee21c8e5-f227-49c3-8879-4ae188137aeb︡{"stdout":"True\n"}︡
︠75335660-683a-4fe2-b33f-286fe9c2494e︠
S = T.inverse()
S

︡1014b359-ce83-42c5-a483-1cb6bef2a7ee︡{"stdout":"Vector space morphism represented by the matrix:\n[-57 -21 -85   3 -20]\n[  7   4  13  -1   3]\n[ 10   6  18  -1   4]\n[-11  -4 -17   1  -4]\n[  3   1   4   0   1]\nDomain: Vector space of dimension 5 over Rational Field\nCodomain: Vector space of dimension 5 over Rational Field\n"}︡
︠9bb9f181-bac0-4d5f-aac6-52ac5399c72fi︠
%html
<p>The <tt class="code">*</tt> operator, like we would use for multiplication, will create a composition.  This will perfectly natural once we discuss Section MR.  Here, composing an invertible linear transformation with its inverse will yield an identity linear transformation.</p>
︡5254dc85-976c-4ca6-b890-53453c282a22︡{"html":"<p>The <tt class=\"code\">*</tt> operator, like we would use for multiplication, will create a composition.  This will perfectly natural once we discuss Section MR.  Here, composing an invertible linear transformation with its inverse will yield an identity linear transformation.</p>"}︡
︠3fc20c71-494d-4109-8b44-deae6dfb75bf︠
comp = S*T
comp

︡672ada89-549b-443c-be6a-4a49a0282f76︡{"stdout":"Vector space morphism represented by the matrix:\n[1 0 0 0 0]\n[0 1 0 0 0]\n[0 0 1 0 0]\n[0 0 0 1 0]\n[0 0 0 0 1]\nDomain: Vector space of dimension 5 over Rational Field\nCodomain: Vector space of dimension 5 over Rational Field\n"}︡
︠75f079a2-deb2-47c8-86b4-2b27f2dfc972︠
comp.is_identity()

︡353c3f17-3c1b-4cbe-8f6a-793384820609︡{"stdout":"True\n"}︡
︠9a090554-ea94-425a-9368-a4ebefd616fai︠
%html
<div class="section"><div class="heading">
<div class="number">2</div>
<div class="title">Defining an Invertible Linear Transformation on Bases</div>
</div></div>
︡fd264a99-8b00-4dfc-a2b5-e6737a5c2753︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">2</div>\n<div class=\"title\">Defining an Invertible Linear Transformation on Bases</div>\n</div></div>"}︡
︠ee9d2d78-922f-4470-96f1-91c8f009900di︠
%html
<p>Now, an invertible linear transformation defined on a basis, and the resulting inverse linear transformation.  We get two <q>random</q> bases of \(\mathbb{Q}^7\) from nonsingular (determinant one) matrices.</p>
︡c067da9d-619c-44f3-9f08-437749eee8e3︡{"html":"<p>Now, an invertible linear transformation defined on a basis, and the resulting inverse linear transformation.  We get two <q>random</q> bases of \\(\\mathbb{Q}^7\\) from nonsingular (determinant one) matrices.</p>"}︡
︠32bff727-a055-4e55-a1a4-c7b408581e1a︠
C = random_matrix(QQ, 7, 7, algorithm='unimodular', upper_bound=99)
Cbasis = C.columns()
D = random_matrix(QQ, 7, 7, algorithm='unimodular', upper_bound=99)
Dbasis = D.columns()

︡98b164d9-007b-4d30-969c-556aa1c1d9b1︡
︠9475f6f4-57b9-4dcd-815e-c1d169c3b9edi︠
%html
<p>Vector spaces with defined user bases.</p>
︡f98a5fb5-4fa7-48aa-857b-3ff406481e27︡{"html":"<p>Vector spaces with defined user bases.</p>"}︡
︠47eb9aff-853c-49ab-9173-e41fbe9f0584︠
Cspace = (QQ^7).subspace_with_basis(Cbasis)
Dspace = (QQ^7).subspace_with_basis(Dbasis)
Cspace, Dspace

︡9d0f951c-3012-404b-bd3a-9e0db7d71695︡{"stdout":"(Vector space of degree 7 and dimension 7 over Rational Field\nUser basis matrix:\n[  1   0   0  -2   0  -1   1]\n[  2   1   3  -8  -5  -5  -1]\n[  0   1   4  -2  -4  -1  -1]\n[ -2  -3  -9  17  18  15   2]\n[  5   2   5 -21 -13 -18   0]\n[-18   3  16  38 -13  29  -8]\n[-61  18  79  97 -94  69 -29], Vector space of degree 7 and dimension 7 over Rational Field\nUser basis matrix:\n[  4   0   0   1  -1   1  -1]\n[  2   1   1   1   0   0   0]\n[ -2  -2  -1  -1   0  -1  -1]\n[ 19   6   4   7  -6   0   4]\n[ -8  10   6   1   6  -4   6]\n[-28 -37 -21 -18   1   4 -27]\n[-65  79  45   6  50 -26  53])\n"}︡
︠513a3029-d682-45a5-b4d1-f6c7e77d2ee9i︠
%html
<p>The invertible linear transformation defined with images as the vectors in the codomain basis <tt class="code">D</tt>.</p>
︡4b8e52a9-7315-4bf9-80fc-54cd59497e06︡{"html":"<p>The invertible linear transformation defined with images as the vectors in the codomain basis <tt class=\"code\">D</tt>.</p>"}︡
︠42d7d37e-9ab6-49b5-88b2-f2d7efb4b741︠
T = linear_transformation(Cspace, QQ^7, Dbasis)
T

︡54da8391-7176-41e6-a193-e7dc52d4eb05︡{"stdout":"Vector space morphism represented by the matrix:\n[  4   0   0   1  -1   1  -1]\n[  2   1   1   1   0   0   0]\n[ -2  -2  -1  -1   0  -1  -1]\n[ 19   6   4   7  -6   0   4]\n[ -8  10   6   1   6  -4   6]\n[-28 -37 -21 -18   1   4 -27]\n[-65  79  45   6  50 -26  53]\nDomain: Vector space of degree 7 and dimension 7 over Rational Field\nUser basis matrix:\n[  1   0   0  -2   0  -1   1]\n[  2   1   3  -8  -5  -5  -1]\n[  0   1   4  -2  -4  -1  -1]\n[ -2  -3  -9  17  18  15   2]\n[  5   2   5 -21 -13 -18   0]\n[-18   3  16  38 -13  29  -8]\n[-61  18  79  97 -94  69 -29]\nCodomain: Vector space of dimension 7 over Rational Field\n"}︡
︠44b2b206-8788-4db1-a586-2b3326eb2ef3︠
T.is_invertible()

︡61e52535-6f7a-47c1-8129-96e8efdbf3df︡{"stdout":"True\n"}︡
︠811a2fc6-4d1d-4d38-a2cd-1e12588bf58bi︠
%html
<p>Now we simply <q>turn around</q> the definition, to make the inverse.</p>
︡636b956c-4d67-41eb-a2bc-4eacea72c9ca︡{"html":"<p>Now we simply <q>turn around</q> the definition, to make the inverse.</p>"}︡
︠9ecb4b11-1075-40d4-b413-b672556bd18d︠
S = linear_transformation(Dspace, QQ^7, Cbasis)
S

︡6a201cb0-f515-4250-89dd-8edfd31a15c5︡{"stdout":"Vector space morphism represented by the matrix:\n[  1   0   0  -2   0  -1   1]\n[  2   1   3  -8  -5  -5  -1]\n[  0   1   4  -2  -4  -1  -1]\n[ -2  -3  -9  17  18  15   2]\n[  5   2   5 -21 -13 -18   0]\n[-18   3  16  38 -13  29  -8]\n[-61  18  79  97 -94  69 -29]\nDomain: Vector space of degree 7 and dimension 7 over Rational Field\nUser basis matrix:\n[  4   0   0   1  -1   1  -1]\n[  2   1   1   1   0   0   0]\n[ -2  -2  -1  -1   0  -1  -1]\n[ 19   6   4   7  -6   0   4]\n[ -8  10   6   1   6  -4   6]\n[-28 -37 -21 -18   1   4 -27]\n[-65  79  45   6  50 -26  53]\nCodomain: Vector space of dimension 7 over Rational Field\n"}︡
︠6a4460d3-e840-414c-8ab6-57ab7ba65715︠
S.is_invertible()

︡c183fe8b-7788-4fb4-8cec-186f5bbf2712︡{"stdout":"True\n"}︡
︠29df9eb4-57bf-4f89-a58e-8d96f21ef80ci︠
%html
<p>Composition with vector spaces using different bases does not seem to be working properly.  So we just check some random inputs to the composition.</p>
︡c7de7762-bfb7-4d1e-8d4e-47fd1b41652c︡{"html":"<p>Composition with vector spaces using different bases does not seem to be working properly.  So we just check some random inputs to the composition.</p>"}︡
︠797a52c8-3b7a-4bec-8a5b-f7f50a282313︠
comp = S*T
comp.is_identity()

︡8c58eab3-de8b-430c-8bac-03c3f6762d06︡{"stdout":"False\n"}︡
︠725ed002-3efe-4f67-9b0a-55898702b5d0︠
v = random_vector(QQ, 7)
v, T(S(v)) == v, S(T(v)) == v

︡59f0cd00-481c-4268-98ec-58539cf91971︡{"stdout":"((2, -1/6, 1, 0, -1, 3, -1/3), True, True)\n"}︡
︠dd4c51c3-cb99-4d31-b475-c5c6529a8791i︠
%html
<div class="section"><div class="heading">
<div class="number">3</div>
<div class="title">Rank and Nullity</div>
</div></div>
︡3d1b0db5-410a-49fd-95b9-1f343d94e79b︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">3</div>\n<div class=\"title\">Rank and Nullity</div>\n</div></div>"}︡
︠65900f94-b177-4ba4-9712-a0367eab8e55i︠
%html
<p>A general (i.e.  not invertible) linear transformation from \(\mathbb{Q}^6\) to \(\mathbb{Q}^5\).</p>
︡c8260ce1-67e4-4616-a718-03a52bd179d5︡{"html":"<p>A general (i.e.  not invertible) linear transformation from \\(\\mathbb{Q}^6\\) to \\(\\mathbb{Q}^5\\).</p>"}︡
︠fbd01011-a839-41de-a552-8b6f9203c9f9︠
F = matrix(QQ, [[1, 0, 2, -1, -4, 2], [-1, -1, -4, 3, 6, -5], [0, 1, 3, -2, -4, 5],
    [0, 4, 6, -8, -4, 8], [0, 1, 2, -2, -2, 3]])
R = linear_transformation(QQ^6, QQ^5, F, side='right')
R

︡73522f73-785f-4520-a952-a25f91e8c148︡{"stdout":"Vector space morphism represented by the matrix:\n[ 1 -1  0  0  0]\n[ 0 -1  1  4  1]\n[ 2 -4  3  6  2]\n[-1  3 -2 -8 -2]\n[-4  6 -4 -4 -2]\n[ 2 -5  5  8  3]\nDomain: Vector space of dimension 6 over Rational Field\nCodomain: Vector space of dimension 5 over Rational Field\n"}︡
︠ab306fd5-68e4-429f-a140-d326b0c730cdi︠
%html
<p>Rank is dimension of range (image).  Note there are not left/right variants.</p>
︡5f88116e-c506-4454-9d98-5c96beb5c42a︡{"html":"<p>Rank is dimension of range (image).  Note there are not left/right variants.</p>"}︡
︠f485f742-1db9-4768-a677-9ffef06f61dc︠
R.image()

︡2326a4ec-4329-4be5-9ec4-008ff0e65b9c︡{"stdout":"Vector space of degree 5 and dimension 3 over Rational Field\nBasis matrix:\n[ 1  0  0 -6 -1]\n[ 0  1  0 -6 -1]\n[ 0  0  1 -2  0]\n"}︡
︠29d8b348-ceeb-4e41-8fe7-7f1802a8f995︠
R.rank()

︡e2bdafa7-a55c-4bd0-a6b0-d6fa9cd8cba5︡{"stdout":"3\n"}︡
︠0a5d184c-3249-49a6-86d5-8ef176ef298ei︠
%html
<p>Nullity is dimension of kernel.  Note there are not left/right variants.</p>
︡3aba6906-bb3c-4edc-a931-a485922503f9︡{"html":"<p>Nullity is dimension of kernel.  Note there are not left/right variants.</p>"}︡
︠4db4fe08-ae50-41a7-9850-70453c4de1f5︠
R.kernel()

︡83c3ca4d-b3e3-470f-8204-b761a45e59e2︡{"stdout":"Vector space of degree 6 and dimension 3 over Rational Field\nBasis matrix:\n[   1    0    0  1/5  2/5  2/5]\n[   0    1    0  2/5 -1/5 -1/5]\n[   0    0    1  2/5 3/10 -1/5]\n"}︡
︠c0bc063a-503b-400b-bb0e-48b261c14fd1︠
R.nullity()

︡861d2d1d-82fd-471a-b771-3bc5eb03d7e8︡{"stdout":"3\n"}︡
︠d6ca0c2d-e565-43c8-bbd8-1991daa9cd1ci︠
%html
<p>Note that rank and nullity sum to the dimension of the domain (which is \(6\) here).</p>
︡cc89794a-6d9d-4792-bd51-631b7f5763f4︡{"html":"<p>Note that rank and nullity sum to the dimension of the domain (which is \\(6\\) here).</p>"}︡
︠b387cf34-ff36-4f0b-aa09-766d570fdc30︠









