︠d3154ebf-80d3-4388-9887-9d57b811f737i︠
load('mathbook.css')

︡fc328525-2dfb-4caf-9050-e603556ced02︡{"once":false,"file":{"show":false,"uuid":"db0fa80f-8a2d-4b83-910b-3cc8127f55fc","filename":"mathbook.css"}}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"$.get(\"/blobs/mathbook.css?uuid=db0fa80f-8a2d-4b83-910b-3cc8127f55fc\", function(css) { $('<style type=text/css></style>').html(css).appendTo(\"body\")});"},"once":false}︡
︠07be8893-d985-46da-8f11-e21b6c02335ai︠
%html
<div>\(\)</div>
︡a7d12c2c-22a7-4652-962a-b501d2379fc6︡{"html":"<div>\\(\\)</div>"}︡
︠1c83e9df-a120-4e57-a211-c970d9cd6798i︠
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
︡5e96ce17-bba0-48b0-9db4-6650f1e334eb︡{"html":"<style></style><div class=\"headerblock\">\n<div class=\"title\">Demo: Section MR</div>\n<div class=\"authorgroup\"><div class=\"author-info\">\n<div class=\"author-name\">Robert Beezer</div>\n<div class=\"author-department\"></div>\n<div class=\"author-institution\"></div>\n<div class=\"author-email\"></div>\n</div></div>\n<div class=\"date\">Math 290, Fall 2013<br>November 21, 2013</div>\n</div>"}︡
︠bd1c5173-1708-4d11-a71c-44e4da9593f5i︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">A Linear Transformation and some Bases</div>
</div></div>
︡abcaba9f-3e0f-4606-8471-7a0e34d92486︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">1</div>\n<div class=\"title\">A Linear Transformation and some Bases</div>\n</div></div>"}︡
︠989bbdc5-8dfd-4699-b02e-973ad396faaci︠
%html
<p>In this section we define a linear transformation from \(\mathbb{C}^6\) to \(\mathbb{C}^4\).  The definition is a \(4\times 6\) matrix of rank \(4\) that we will use to multiply input vectors with a matrix-vector product.  It is not important if the linear transformation is injective and/or surjective.</p>
︡d694fc78-f7bd-47b4-9149-c37e53cbdb79︡{"html":"<p>In this section we define a linear transformation from \\(\\mathbb{C}^6\\) to \\(\\mathbb{C}^4\\).  The definition is a \\(4\\times 6\\) matrix of rank \\(4\\) that we will use to multiply input vectors with a matrix-vector product.  It is not important if the linear transformation is injective and/or surjective.</p>"}︡
︠6f4ec760-f858-464b-86ed-3680c736b29d︠
m, n = 4, 6
A = random_matrix(QQ, m, n, algorithm='echelonizable', rank=m, upper_bound=9)
A

︡e6310d7f-02d2-4730-8ef0-49729f14ba1b︡{"stdout":"[-3 -1 -2 -6 -8 -8]\n[-2 -1 -1 -3 -4 -3]\n[ 0  1  0 -4 -5 -8]\n[ 3  4 -4  1  1 -8]\n"}︡
︠3cd49d74-4efb-4f74-9a04-52fb1daea8a9︠
T = linear_transformation(A, side='right')
T

︡fd0ce59e-cad6-4e99-b693-80a00beb73df︡{"stdout":"Vector space morphism represented by the matrix:\n[-3 -2  0  3]\n[-1 -1  1  4]\n[-2 -1  0 -4]\n[-6 -3 -4  1]\n[-8 -4 -5  1]\n[-8 -3 -8 -8]\nDomain: Vector space of dimension 6 over Rational Field\nCodomain: Vector space of dimension 4 over Rational Field\n"}︡
︠769dd8e9-068b-46d1-b7be-40e14b45e5bdi︠
%html
<p>And we construct two random bases, one for the domain and one for the codomain, extracted from the columns of unimodular matrices.</p>
︡a20a9d73-2359-4794-bdc1-d7753a731220︡{"html":"<p>And we construct two random bases, one for the domain and one for the codomain, extracted from the columns of unimodular matrices.</p>"}︡
︠f5699c0b-bec2-42b0-8b09-7eebff4e7bb0︠
Dmat = random_matrix(QQ, n, n, algorithm='unimodular', upper_bound=9)
D = Dmat.columns()
D

︡8a5f11fd-e5fb-4938-a40f-62e51b8797d4︡{"stdout":"[(1, 2, 0, 1, -2, -1), (1, 3, 0, 0, -1, -1), (-2, -4, 1, -1, 4, 2), (-3, -6, 0, -2, 7, 2), (-2, -8, -5, 1, 5, -2), (-1, 4, 7, -2, 5, 4)]\n"}︡
︠fa0372d3-6f61-4518-83a8-eb05f90e94eb︠
Cmat = random_matrix(QQ, m, m, algorithm='unimodular', upper_bound=9)
C = Cmat.columns()
C

︡157bf29a-8d1c-4b23-8f2c-0721cfcd686e︡{"stdout":"[(1, 0, 0, 0), (1, 1, -3, 0), (-2, -1, 4, -1), (6, 1, -5, 3)]\n"}︡
︠7f6a9b05-8410-4cab-81f3-5b748424f693i︠
%html
<div class="section"><div class="heading">
<div class="number">2</div>
<div class="title">A Matrix Representation, Old Style</div>
</div></div>
︡6922b876-efef-4d61-8764-704885c3e5cc︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">2</div>\n<div class=\"title\">A Matrix Representation, Old Style</div>\n</div></div>"}︡
︠4410b173-fd65-4f96-b830-ff8ff168b342i︠
%html
<p>We will coordinatize the outputs of the linear transformation, for inputs from the basis of the domain, relative to the basis of the codomain, and pack them in a matrix.</p>
︡60459b68-a7a7-4bf6-b7ec-b788578b43bb︡{"html":"<p>We will coordinatize the outputs of the linear transformation, for inputs from the basis of the domain, relative to the basis of the codomain, and pack them in a matrix.</p>"}︡
︠b61089ff-6786-4738-9eab-d0c9cb80c18di︠
%html
<p>Outputs on the domain basis first.</p>
︡aedd2342-c411-4dfd-a510-68fa3b633e96︡{"html":"<p>Outputs on the domain basis first.</p>"}︡
︠6d94b302-3765-4674-a941-77d9ad35424c︠
outputs = [T(b) for b in D]
outputs

︡5f587129-ccbf-4c6c-9166-af175beca7a4︡{"stdout":"[(13, 4, 16, 18), (10, 2, 16, 22), (-34, -12, -36, -39), (-45, -16, -49, -44), (-6, 0, -21, 4), (-75, -35, -45, -44)]\n"}︡
︠c19cf4fb-f654-4c20-9bdf-13b76a8e08bbi︠
%html
<p>We make a vector space for the codomain, with the desired basis.</p>
︡a7d8357e-9b8b-4708-95e4-e273701ca599︡{"html":"<p>We make a vector space for the codomain, with the desired basis.</p>"}︡
︠da3de1f8-823c-4341-8e87-30c5d20d4015︠
VC = (QQ^m).subspace_with_basis(C)
VC

︡b7a2923b-76be-4d09-9c04-5fb6fac1f2dc︡{"stdout":"Vector space of degree 4 and dimension 4 over Rational Field\nUser basis matrix:\n[ 1  0  0  0]\n[ 1  1 -3  0]\n[-2 -1  4 -1]\n[ 6  1 -5  3]\n"}︡
︠666b820f-f813-43bf-9107-59cf45d2c1a3i︠
%html
<p>Now, coordinate versions of the outputs.</p>
︡fe2962f4-2c2f-43ae-aa96-21a04b85cb35︡{"html":"<p>Now, coordinate versions of the outputs.</p>"}︡
︠f73d7a63-4f1a-410e-b4de-a6f7554eff5e︠
coord = [VC.coordinate_vector(t) for t in outputs]
coord

︡95330f37-990d-4aa6-9b06-689b6aa690af︡{"stdout":"[(-101, 78, 120, 46), (-102, 68, 110, 44), (239, -195, -294, -111), (297, -254, -379, -141), (24, -38, -55, -17), (392, -379, -538, -194)]\n"}︡
︠231786fb-6f62-4f38-813b-e07a625d0b34i︠
%html
<p>And then we pack them into a matrix.</p>
︡26b450f0-ce95-4f9f-ad1b-d6b3176ea647︡{"html":"<p>And then we pack them into a matrix.</p>"}︡
︠2bfdf54e-0ff3-4702-90f7-3d1e6a0dc62c︠
rep = column_matrix(coord)
rep

︡d02ef07a-64be-4f7a-950d-42a3446ff0e0︡{"stdout":"[-101 -102  239  297   24  392]\n[  78   68 -195 -254  -38 -379]\n[ 120  110 -294 -379  -55 -538]\n[  46   44 -111 -141  -17 -194]\n"}︡
︠0837e412-294c-4bff-9296-bb8b2adb3a88i︠
%html
<p>Does the representation <q>work</q> as it should?  We need a vector space for the domain before we can check.</p>
︡5b7da517-1f4f-4f5d-bb46-765c232bcf7d︡{"html":"<p>Does the representation <q>work</q> as it should?  We need a vector space for the domain before we can check.</p>"}︡
︠c4a5dbca-d784-4382-b04d-c8328d8980be︠
VD = (QQ^n).subspace_with_basis(D)
VD

︡7c84eef6-02db-4900-8089-4072ee1baefe︡{"stdout":"Vector space of degree 6 and dimension 6 over Rational Field\nUser basis matrix:\n[ 1  2  0  1 -2 -1]\n[ 1  3  0  0 -1 -1]\n[-2 -4  1 -1  4  2]\n[-3 -6  0 -2  7  2]\n[-2 -8 -5  1  5 -2]\n[-1  4  7 -2  5  4]\n"}︡
︠16b32d86-4d04-4b95-ad0a-46a1a4af067bi︠
%html
<p>OK, coordinatize input, multiply by representation matrix, un-coordinatize (linear combination).  This is the fundamental Theorem FTMR at work.</p>
︡c947d1d5-6a58-440f-a468-54ff3b611d8f︡{"html":"<p>OK, coordinatize input, multiply by representation matrix, un-coordinatize (linear combination).  This is the fundamental Theorem FTMR at work.</p>"}︡
︠21c8765b-a2a9-42fc-ad5b-7690de80fde6︠
u = random_vector(QQ, 6)
out = VC.linear_combination_of_basis(rep*VD.coordinate_vector(u))
u, out, T(u) ==  out

︡6e40f002-3b45-4e35-aef4-2f945f98b61b︡{"stdout":"((1/2, 2, 1, 1, -15/7, -11/2), (695/14, 253/14, 369/7, 677/14), True)\n"}︡
︠3151344c-b8ed-495b-96cc-714c16b9a30fi︠
%html
<p>Nice.</p>
︡6383febe-b1b6-46f3-a18c-cc8e651ae132︡{"html":"<p>Nice.</p>"}︡
︠42506c46-0d0c-416b-89b2-4a3ed4c0e08fi︠
%html
<div class="section"><div class="heading">
<div class="number">3</div>
<div class="title">A Matrix Representation, Sage Style</div>
</div></div>
︡80b68d4e-8503-4a99-beef-3dfe475f5e8a︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">3</div>\n<div class=\"title\">A Matrix Representation, Sage Style</div>\n</div></div>"}︡
︠761f6c53-07bd-4a5f-a467-2e2b9f2a92fdi︠
%html
<p>Now we do it Sage style.  The matrix of the linear transformation first, as we like to see it.</p>
︡2e67d195-53f2-4435-aa39-73b17def2ffa︡{"html":"<p>Now we do it Sage style.  The matrix of the linear transformation first, as we like to see it.</p>"}︡
︠216ca094-3e8c-4104-abf2-3342984d5803︠
T.matrix(side='right')

︡1c0e25c9-b11f-4944-bf18-3890297da9a0︡{"stdout":"[-3 -1 -2 -6 -8 -8]\n[-2 -1 -1 -3 -4 -3]\n[ 0  1  0 -4 -5 -8]\n[ 3  4 -4  1  1 -8]\n"}︡
︠5ab2d9af-8c84-4b36-84fc-0f1082465bd0i︠
%html
<p>Now we replace the domain and codomain with new vector spaces, carrying different bases.  We are not really <q>restricting</q> the domain and codomain, we are replacing them.</p>
︡e608fc2f-8db7-43dc-8333-46788a867197︡{"html":"<p>Now we replace the domain and codomain with new vector spaces, carrying different bases.  We are not really <q>restricting</q> the domain and codomain, we are replacing them.</p>"}︡
︠e1e5ffb8-b862-4a09-a7b7-fb450e86dce5︠
S = T.restrict_domain(VD).restrict_codomain(VC)
rep2 = S.matrix(side='right')
rep2

︡3ecb1e91-f237-461c-b0c0-51f01372d711︡{"stdout":"[-101 -102  239  297   24  392]\n[  78   68 -195 -254  -38 -379]\n[ 120  110 -294 -379  -55 -538]\n[  46   44 -111 -141  -17 -194]\n"}︡
︠a771e086-67ba-469e-8098-b362923fa131i︠
%html
<p>Bingo!  This is representation we found above.  A one-liner in Sage.</p>
︡e27aeb1b-a9ca-4f38-b52a-f6e1b4b162c5︡{"html":"<p>Bingo!  This is representation we found above.  A one-liner in Sage.</p>"}︡
︠3c670b24-c09d-48af-94f7-d3acf578e96f︠
rep2 == rep

︡57ce5c67-e23a-4dc1-ad56-f0f96bef97cd︡︡
︠5dcac3b3-8ef1-47cc-8c7c-34f5862d4b1bi︠
%html
<div class="section"><div class="heading">
<div class="number">4</div>
<div class="title">Sneak Preview</div>
</div></div>
︡ae4c3068-4892-4d1d-901b-3d80a01b585a︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">4</div>\n<div class=\"title\">Sneak Preview</div>\n</div></div>"}︡
︠5877a1c9-9d3f-4824-bd31-36c2bd075caci︠
%html
<p>Ponder the following computation — matrix representations and nonsingular matrices with columns from the two bases.</p>
︡ff8e5b1b-f2ce-4c5e-8a2b-021c8cf430c1︡{"html":"<p>Ponder the following computation — matrix representations and nonsingular matrices with columns from the two bases.</p>"}︡
︠0f1ecee1-4af2-4c95-a208-e98a52af48ff︠
S.matrix(side='right') - Cmat.inverse()*T.matrix(side='right')*Dmat

︡6be495b2-a1e9-4dcc-874b-7ed4082084b9︡︡
︠710aee1d-fbdd-42e4-8f67-c4fc41bf8342i︠
%html
<p>Notice how Sage is conflicted about if <tt class="code">S</tt> and <tt class="code">T</tt> are equal or not.</p>
︡4728de08-f79b-424b-8446-b3f4b441124f︡{"html":"<p>Notice how Sage is conflicted about if <tt class=\"code\">S</tt> and <tt class=\"code\">T</tt> are equal or not.</p>"}︡
︠f57afaa6-2b35-478d-bbe4-21217b15c27c︠
S == T

︡ff0fa4f7-5e39-4d01-ada0-94fbb7f37148︡︡
︠21c826d6-d2f3-4bab-9909-e23e74b5933b︠
S.is_equal_function(T)

︡2946fdd7-00e5-44fc-adf2-83ca010efacd︡︡









