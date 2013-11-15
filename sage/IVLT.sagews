︠c7381671-948f-4b23-9160-5b86e7f4676fi︠
load('mathbook.css')

︡8ff93cd2-f9c1-4174-bde9-87d161435b65︡︡
︠b61c43b7-c170-4c08-9748-31416013a9e8x︠
%html
<div>\(\)</div>
︡b91029f7-3c40-40d3-9635-bb8d70bf94c1︡︡
︠75508a89-5c94-45db-a034-a062aee07bfbx︠
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
︡965a34e9-60eb-40ce-8350-896e708f1d48︡︡
︠651e593f-fbf1-4953-a8a5-1f25bbcc72efx︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">Invertible Linear Transformations</div>
</div></div>
︡e3adef15-ced4-4dcb-bd34-4a09a4b25f5f︡︡
︠c5c682ce-894a-4bc2-aa97-ddb10d2ce42ex︠
%html
<p>A carefully-crafted invertible linear transformation from \(\mathbb{Q}^5\) to \(\mathbb{Q}^5\).</p>
︡2c79508b-00f1-425d-a0b9-708a0c2ef934︡︡
︠e86b92e4-a403-4c4a-bd4a-5ebcaf5657e6︠
A = matrix(QQ, [[1, 1, -1, -2, 0], [-3, -2, 1, 4, 7],
    [2, 2, -1, -3, -4], [-4, -3, 3, 8, 3], [5, 6, -7, -8, 8]])
T = linear_transformation(QQ^5, QQ^5, A, side='right')
T

︡4ef872af-1690-440e-b31e-d3e3725e2e60︡︡
︠0521364b-7063-42c8-b985-295cafeb7a12︠
T.is_injective(), T.is_surjective()

︡5b33920c-0559-4362-9425-acc7cc6c546e︡︡
︠3fc4687f-f255-419d-a533-25469c609763︠
T.is_invertible()

︡fba6c25f-0253-482c-8cc8-ea2b8c595824︡︡
︠75335660-683a-4fe2-b33f-286fe9c2494e︠
S = T.inverse()
S

︡68ad4b9d-dea3-4ee6-9191-8aa0886e511c︡︡
︠9bb9f181-bac0-4d5f-aac6-52ac5399c72fx︠
%html
<p>The <tt class="code">*</tt> operator, like we would use for multiplication, will create a composition.  This will perfectly natural once we discuss Section MR.  Here, composing an invertible linear transformation with its inverse will yield an identity linear transformation.</p>
︡bd5d7994-0d58-499b-9d67-093fc179e6fd︡︡
︠3fc20c71-494d-4109-8b44-deae6dfb75bf︠
comp = S*T
comp

︡bb98e42f-4b96-4a28-b294-4408cfb6fcbd︡︡
︠75f079a2-deb2-47c8-86b4-2b27f2dfc972︠
comp.is_identity()

︡eb398c80-6cb8-4d66-8ced-2f94b98aacd1︡︡
︠9a090554-ea94-425a-9368-a4ebefd616fax︠
%html
<div class="section"><div class="heading">
<div class="number">2</div>
<div class="title">Defining an Invertible Linear Transformation on Bases</div>
</div></div>
︡d1c41bbe-6669-4809-860c-f4413f9e9a0a︡︡
︠ee9d2d78-922f-4470-96f1-91c8f009900dx︠
%html
<p>Now, an invertible linear transformation defined on a basis, and the resulting inverse linear transformation.  We get two <q>random</q> bases of \(\mathbb{Q}^7\) from nonsingular (determinant one) matrices.</p>
︡9dddf1be-d923-4472-90cc-0065e32c79dc︡︡
︠32bff727-a055-4e55-a1a4-c7b408581e1a︠
C = random_matrix(QQ, 7, 7, algorithm='unimodular', upper_bound=99)
Cbasis = C.columns()
D = random_matrix(QQ, 7, 7, algorithm='unimodular', upper_bound=99)
Dbasis = D.columns()

︡2e63dd07-a35e-4c18-900e-7b0a4582b510︡︡
︠9475f6f4-57b9-4dcd-815e-c1d169c3b9edx︠
%html
<p>Vector spaces with defined user bases.</p>
︡b7afe48a-ab78-429f-b8c7-f8824a650069︡︡
︠47eb9aff-853c-49ab-9173-e41fbe9f0584︠
Cspace = (QQ^7).subspace_with_basis(Cbasis)
Dspace = (QQ^7).subspace_with_basis(Dbasis)
Cspace, Dspace

︡47f38ea5-8164-4369-8ff3-a93525558713︡︡
︠513a3029-d682-45a5-b4d1-f6c7e77d2ee9x︠
%html
<p>The invertible linear transformation defined with images as the vectors in the codomain basis <tt class="code">D</tt>.</p>
︡fb5b68a6-c11b-4539-8b32-e5ba0541738c︡︡
︠42d7d37e-9ab6-49b5-88b2-f2d7efb4b741︠
T = linear_transformation(Cspace, QQ^7, Dbasis)
T

︡892cf40c-dc71-4ac4-b91c-7fc780beb2a7︡︡
︠44b2b206-8788-4db1-a586-2b3326eb2ef3︠
T.is_invertible()

︡eca76fa7-ce76-4130-a72f-e16748ddf37a︡︡
︠811a2fc6-4d1d-4d38-a2cd-1e12588bf58bx︠
%html
<p>Now we simply <q>turn around</q> the definition, to make the inverse.</p>
︡d7c8634b-0af6-4ff2-911d-cfc4edd861fc︡︡
︠9ecb4b11-1075-40d4-b413-b672556bd18d︠
S = linear_transformation(Dspace, QQ^7, Cbasis)
S

︡f67036c3-7dd3-483d-bca4-65ad1d6966f9︡︡
︠6a4460d3-e840-414c-8ab6-57ab7ba65715︠
S.is_invertible()

︡86925404-6420-4a60-b09a-09403a7bbaf3︡︡
︠29df9eb4-57bf-4f89-a58e-8d96f21ef80cx︠
%html
<p>Composition with vector spaces using different bases does not seem to be working properly.  So we just check some random inputs to the composition.</p>
︡5becb412-030c-44ed-8486-c734a40fbaba︡︡
︠797a52c8-3b7a-4bec-8a5b-f7f50a282313︠
comp = S*T
comp.is_identity()

︡d80c8b96-9f0a-4d5c-8f13-3c2da0b218fc︡︡
︠725ed002-3efe-4f67-9b0a-55898702b5d0︠
v = random_vector(QQ, 7)
v, T(S(v)) == v, S(T(v)) == v

︡14b81182-ff96-42b1-af2d-46b091757b08︡︡
︠dd4c51c3-cb99-4d31-b475-c5c6529a8791x︠
%html
<div class="section"><div class="heading">
<div class="number">3</div>
<div class="title">Rank and Nullity</div>
</div></div>
︡6222212f-2304-4882-8f12-077d94e7d13f︡︡
︠65900f94-b177-4ba4-9712-a0367eab8e55x︠
%html
<p>A general (i.e.  not invertible) linear transformation from \(\mathbb{Q}^6\) to \(\mathbb{Q}^5\).</p>
︡0da6c1dd-fa4d-41cd-90a2-910ccf09137b︡︡
︠fbd01011-a839-41de-a552-8b6f9203c9f9︠
F = matrix(QQ, [[1, 0, 2, -1, -4, 2], [-1, -1, -4, 3, 6, -5], [0, 1, 3, -2, -4, 5],
    [0, 4, 6, -8, -4, 8], [0, 1, 2, -2, -2, 3]])
R = linear_transformation(QQ^6, QQ^5, F, side='right')
R

︡8c3fd094-d49e-4901-bda5-94bf57ab691d︡︡
︠ab306fd5-68e4-429f-a140-d326b0c730cdx︠
%html
<p>Rank is dimension of range (image).  Note there are not left/right variants.</p>
︡80010016-1316-460a-9834-c0456c11d3fe︡︡
︠f485f742-1db9-4768-a677-9ffef06f61dc︠
R.image()

︡bad6a4d0-275b-46e9-ad7d-f73aabb52953︡︡
︠29d8b348-ceeb-4e41-8fe7-7f1802a8f995︠
R.rank()

︡b6209ffd-f952-469a-a688-c6734e37ed43︡︡
︠0a5d184c-3249-49a6-86d5-8ef176ef298ex︠
%html
<p>Nullity is dimension of kernel.  Note there are not left/right variants.</p>
︡c65e56eb-fdd4-4ee3-b916-68090f0c4433︡︡
︠4db4fe08-ae50-41a7-9850-70453c4de1f5︠
R.kernel()

︡4a88d276-5229-47f7-891d-3c738233d57f︡︡
︠c0bc063a-503b-400b-bb0e-48b261c14fd1︠
R.nullity()

︡9d1690ab-32a1-42b0-b179-f5e2fa2c56de︡︡
︠d6ca0c2d-e565-43c8-bbd8-1991daa9cd1cx︠
%html
<p>Note that rank and nullity sum to the dimension of the domain (which is \(6\) here).</p>
︡e55e2e5e-51ff-41bd-8c06-6e4b52690972︡︡

