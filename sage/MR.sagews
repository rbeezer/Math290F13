︠d3154ebf-80d3-4388-9887-9d57b811f737i︠
load('mathbook.css')

︡ff1a1ffc-8139-4577-a368-5ffe5d2f3bc9︡︡
︠07be8893-d985-46da-8f11-e21b6c02335ax︠
%html
<div>\(\)</div>
︡81d266f0-601b-4588-b9fb-cfe8f9954dc8︡︡
︠1c83e9df-a120-4e57-a211-c970d9cd6798x︠
%html
<style></style><div class="headerblock">
<div class="title">Demo: Section MR</div>
<div class="authorgroup"><div class="author-info">
<div class="author-name">Robert Beezer</div>
<div class="author-department"></div>
<div class="author-institution"></div>
<div class="author-email"></div>
</div></div>
<div class="date">Math 290, Fall 2013<br>November 21, 2013</div>
</div>
︡815d74a6-2111-44bb-9b25-6d6919281f5b︡︡
︠bd1c5173-1708-4d11-a71c-44e4da9593f5x︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">A Linear Transformation and some Bases</div>
</div></div>
︡ed62e037-dba1-480e-8f34-93ce0b9e1606︡︡
︠989bbdc5-8dfd-4699-b02e-973ad396faacx︠
%html
<p>In this section we define a linear transformation from \(\mathbb{C}^6\) to \(\mathbb{C}^4\).  The definition is a \(4\times 6\) matrix of rank \(4\) that we will use to multiply input vectors with a matrix-vector product.  It is not important if the linear transformation is injective and/or surjective.</p>
︡e314ba52-b107-4314-869f-360f3ddc6560︡︡
︠6f4ec760-f858-464b-86ed-3680c736b29d︠
m, n = 4, 6
A = random_matrix(QQ, m, n, algorithm='echelonizable', rank=m, upper_bound=9)
A

︡16b25552-7523-4260-bfee-0bb53ba798eb︡︡
︠3cd49d74-4efb-4f74-9a04-52fb1daea8a9︠
T = linear_transformation(A, side='right')
T

︡fc707ac6-c151-4d75-867f-f6bbf2fd1656︡︡
︠769dd8e9-068b-46d1-b7be-40e14b45e5bdx︠
%html
<p>And we construct two random bases, one for the domain and one for the codomain, extracted from the columns of unimodular matrices.</p>
︡2a1c0148-ec43-456d-b89a-69442ad27b8f︡︡
︠f5699c0b-bec2-42b0-8b09-7eebff4e7bb0︠
Dmat = random_matrix(QQ, n, n, algorithm='unimodular', upper_bound=9)
D = Dmat.columns()
D

︡0c0d95b0-096f-47e1-8e98-fbc0ca999fa7︡︡
︠fa0372d3-6f61-4518-83a8-eb05f90e94eb︠
Cmat = random_matrix(QQ, m, m, algorithm='unimodular', upper_bound=9)
C = Cmat.columns()
C

︡12c61610-473f-4994-8302-ac2643c27f2c︡︡
︠7f6a9b05-8410-4cab-81f3-5b748424f693x︠
%html
<div class="section"><div class="heading">
<div class="number">2</div>
<div class="title">A Matrix Representation, Old Style</div>
</div></div>
︡6c1ed3dc-d2a8-4a95-b990-3c49b68f1f2e︡︡
︠4410b173-fd65-4f96-b830-ff8ff168b342x︠
%html
<p>We will coordinatize the outputs of the linear transformation, for inputs from the basis of the domain, relative to the basis of the codomain, and pack them in a matrix.</p>
︡97183ce4-2c34-4f4d-b3be-0e5dbd507325︡︡
︠b61089ff-6786-4738-9eab-d0c9cb80c18dx︠
%html
<p>Outputs on the domain basis first.</p>
︡54b2f032-e56e-479a-ba50-d5f916764951︡︡
︠6d94b302-3765-4674-a941-77d9ad35424c︠
outputs = [T(b) for b in D]
outputs

︡897e5f9f-a020-4dd8-a9cf-d37172d69810︡︡
︠c19cf4fb-f654-4c20-9bdf-13b76a8e08bbx︠
%html
<p>We make a vector space for the codomain, with the desired basis.</p>
︡08e484cd-3d97-4f17-a4dd-0935ca265203︡︡
︠da3de1f8-823c-4341-8e87-30c5d20d4015︠
VC = (QQ^m).subspace_with_basis(C)
VC

︡c479281d-c9a7-4f21-a29a-257ad92d126e︡︡
︠666b820f-f813-43bf-9107-59cf45d2c1a3x︠
%html
<p>Now, coordinate versions of the outputs.</p>
︡29436895-262c-4870-9a0f-fc2f7a10dede︡︡
︠f73d7a63-4f1a-410e-b4de-a6f7554eff5e︠
coord = [VC.coordinate_vector(t) for t in outputs]
coord

︡4e293678-4306-495a-b08e-502d51b1407b︡︡
︠231786fb-6f62-4f38-813b-e07a625d0b34x︠
%html
<p>And then we pack them into a matrix.</p>
︡933e526a-e7f5-4004-afa5-0fd96f919e10︡︡
︠2bfdf54e-0ff3-4702-90f7-3d1e6a0dc62c︠
rep = column_matrix(coord)
rep

︡31d516b3-91ae-44b6-a45b-a6d9046d473a︡︡
︠0837e412-294c-4bff-9296-bb8b2adb3a88x︠
%html
<p>Does the representation <q>work</q> as it should?  We need a vector space for the domain before we can check.</p>
︡086221fd-565e-47b1-a4eb-73068f2f3d4c︡︡
︠c4a5dbca-d784-4382-b04d-c8328d8980be︠
VD = (QQ^n).subspace_with_basis(D)
VD

︡c9746562-9a75-477e-9ee7-6818bbf67897︡︡
︠16b32d86-4d04-4b95-ad0a-46a1a4af067bx︠
%html
<p>OK, coordinatize input, multiply by representation matrix, un-coordinatize (linear combination).  This is the fundamental Theorem FTMR at work.</p>
︡55633d53-bdf7-4ecc-851d-483b9f77f8d9︡︡
︠21c8765b-a2a9-42fc-ad5b-7690de80fde6︠
u = random_vector(QQ, 6)
out = VC.linear_combination_of_basis(rep*VD.coordinate_vector(u))
u, out, T(u) ==  out

︡2adbc8c6-20bb-4732-b2f2-da43b653c1e2︡︡
︠3151344c-b8ed-495b-96cc-714c16b9a30fx︠
%html
<p>Nice.</p>
︡5e646ac2-0db9-410d-aa96-582ed11b3cea︡︡
︠42506c46-0d0c-416b-89b2-4a3ed4c0e08fx︠
%html
<div class="section"><div class="heading">
<div class="number">3</div>
<div class="title">A Matrix Representation, Sage Style</div>
</div></div>
︡8d6dd5e9-612c-4560-8e2a-fbf27db2e327︡︡
︠761f6c53-07bd-4a5f-a467-2e2b9f2a92fdx︠
%html
<p>Now we do it Sage style.  The matrix of the linear transformation first, as we like to see it.</p>
︡a040493d-2330-4613-9290-ac550f2196ea︡︡
︠216ca094-3e8c-4104-abf2-3342984d5803︠
T.matrix(side='right')

︡ebeed6a6-3d47-4b7d-b4f0-e8a47909759c︡︡
︠5ab2d9af-8c84-4b36-84fc-0f1082465bd0x︠
%html
<p>Now we replace the domain and codomain with new vector spaces, carrying different bases.  We are not really <q>restricting</q> the domain and codomain, we are replacing them.</p>
︡a624a6bc-6e74-4a26-8591-030db65c028e︡︡
︠e1e5ffb8-b862-4a09-a7b7-fb450e86dce5︠
S = T.restrict_domain(VD).restrict_codomain(VC)
rep2 = S.matrix(side='right')
rep2

︡d5fc4535-ce10-4b74-94b5-f6776c6827a7︡︡
︠a771e086-67ba-469e-8098-b362923fa131x︠
%html
<p>Bingo!  This is representation we found above.  A one-liner in Sage.</p>
︡f13a4d49-b5d5-4e73-8a2d-dcb94299bd45︡︡
︠3c670b24-c09d-48af-94f7-d3acf578e96f︠
rep2 == rep

︡57ce5c67-e23a-4dc1-ad56-f0f96bef97cd︡︡
︠5dcac3b3-8ef1-47cc-8c7c-34f5862d4b1bx︠
%html
<div class="section"><div class="heading">
<div class="number">4</div>
<div class="title">Sneak Preview</div>
</div></div>
︡458939a1-6fea-477d-9895-b261616dc9eb︡︡
︠5877a1c9-9d3f-4824-bd31-36c2bd075cacx︠
%html
<p>Ponder the following computation — matrix representations and nonsingular matrices with columns from the two bases.</p>
︡ae595c15-84ed-4413-a67f-90d9bd849fb5︡︡
︠0f1ecee1-4af2-4c95-a208-e98a52af48ff︠
S.matrix(side='right') - Cmat.inverse()*T.matrix(side='right')*Dmat

︡6be495b2-a1e9-4dcc-874b-7ed4082084b9︡︡
︠710aee1d-fbdd-42e4-8f67-c4fc41bf8342x︠
%html
<p>Notice how Sage is conflicted about if <tt class="code">S</tt> and <tt class="code">T</tt> are equal or not.</p>
︡8a44a9ec-63d6-495e-943b-ffc50b25ee38︡︡
︠f57afaa6-2b35-478d-bbe4-21217b15c27c︠
S == T

︡ff0fa4f7-5e39-4d01-ada0-94fbb7f37148︡︡
︠21c826d6-d2f3-4bab-9909-e23e74b5933b︠
S.is_equal_function(T)

︡2946fdd7-00e5-44fc-adf2-83ca010efacd︡︡

