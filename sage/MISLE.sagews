︠40563513-3c6e-4862-a68b-517aaa75e69ai︠
load('mathbook.css')

︡3bad3d9a-0bbc-400a-83ae-7086adead16e︡︡
︠ed9b0ea0-1b46-4546-b5c5-b0576ef79af1x︠
%html
<div>\(\)</div>
︡9faa27aa-ddea-4b14-bd86-1e3f1472c47a︡︡
︠0b04c1bd-08c8-4b6b-b465-cb1686fc77fdx︠
%html
<style></style><div class="headerblock">
<div class="title">Demo: Section MISLE</div>
<div class="authorgroup">
<div class="author-name">Robert Beezer</div>
<div class="author-department"></div>
<div class="author-institution"></div>
<div class="author-email"><a href="mailto:"></a></div>
</div>
<div class="date">Math 290, Fall 2013<br>October 3, 2013</div>
</div>
︡d7f4f054-c84d-4161-ae28-748d2407163a︡︡
︠b2b71715-31dd-45c8-8758-8e607dc60e90x︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">An invertible matrix</div>
</div></div>
︡62863e4b-1069-49ec-9e54-6d2e6c08c58f︡︡
︠5b4c9379-527b-4d39-8615-64e7a2c899e0x︠
%html
<p>An invertible \(6\times 6\) matrix.</p>
︡6d7905bc-e73f-4f8e-8d9d-fb31eed05c27︡︡
︠544f0c03-0077-4564-af34-604980ab12ad︠
A = matrix(QQ, [[1, 2, -1, -2, -1, -6], [-2, -3, 1, 3, 1, 6], [2, 4, -1, -4, 0, -7], [0, -1, 1, 2, -1, 1], [2, 4, -2, -4, -1, -8], [1, 0, 0, 0, -1, 2]])
A
︡9855ad38-d82e-46f6-846e-c011f53a4d89︡︡
︠f8bfe1ab-e0af-407a-af54-a79293afd684︠
Ainv = A.inverse()
Ainv
︡6a36d402-d723-4437-866a-47dfcbbbf2f0︡︡
︠97152aa9-6313-440d-905c-9d591e613350︠
Ainv*A
︡641d7e73-8882-4139-81de-62e213e3bffb︡︡
︠db1d8ad8-0685-4a72-8d70-071ce271787d︠
A*Ainv
︡17d77e23-cc51-471c-8125-4291949385f6︡︡
︠be6bad81-cec4-45e7-b542-5a9019418d94x︠
%html
<p>Building the inverse, column by column. Use several different columns of the identity matrix.</p>
︡a04c7846-2b38-4ba1-821f-811fb8113904︡︡
︠a3bb1c12-be80-45dc-b496-6f2178570bee︠
y = vector(QQ, [1,0,0,0,0,0])
P = A.augment(y, subdivide=True)
P.rref()
︡fae51aae-c90c-4d4c-b6ec-31718adcf887︡︡
︠e6796234-8b8a-42ce-b60a-6bef0d409c01x︠
%html
<p>The following is the approach of Theorem CINM.</p>
︡1084b2c2-0ecc-4096-896a-4e6497f4c831︡︡
︠d76a7d68-ec37-49ee-9336-314e5ab01fa6︠
B = A.augment(identity_matrix(6), subdivide=True)
B
︡5cd3999e-d68e-4938-8e30-b064060c2cc4︡︡
︠34faa7dd-527c-45e9-b2f1-67f687b06f19︠
B.rref()
︡1683fb1b-7aba-4f60-94e5-4199b803c4ab︡︡
︠f77c636f-2695-49e8-8d3a-0c79b009be5ax︠
%html
<div class="section"><div class="heading">
<div class="number">2</div>
<div class="title">A matrix without an inverse</div>
</div></div>
︡af6371be-a68b-47ee-9701-273eeefc3513︡︡
︠633ae650-31f9-412a-9370-6ee5fe2e00a5x︠
%html
<p>Now, a non-invertible \(6\times 6\) matrix.</p>
︡c4803665-d912-4e7a-ad47-f29f47f0a8d6︡︡
︠2b31a61c-b58b-402e-a9e7-ee9443388a25︠
C = matrix(QQ, [[-1, 0, 2, 8, 8, 0], [-1, -1, 0, 1, 0, 3], [-1, -2, -1, -4, -4, 5], [1, 2, 1, 4, 5, -5], [-1, -1, -1, -1, -8, 4], [0, 1, 0, 3, 5, -1]])
C
︡9c0b412f-abd7-4dfe-b138-e54a1a4784a3︡︡
︠146ca604-ab05-4737-93d2-de130bb2f2c8︠
C.inverse()
︡76af8809-d748-465c-806d-ec3d4f870d1f︡︡
︠6f18f728-32d7-43f3-8851-b2a015d24b79x︠
%html
<p>Trying to build the inverse, column by column.  Try different columns.</p>
︡b644f16b-577b-40db-886d-9ae3e221b2a2︡︡
︠8a43bf67-07db-4910-8a0d-2a0344d8dcdc︠
y = vector(QQ, [1,0,0,0,0,0])
P = C.augment(y, subdivide=True)
P.rref()
︡b3838310-c069-4423-9b07-da42abf6792e︡︡
︠f4b957d8-2a01-426c-a2eb-c942ff196be9x︠
%html
<p>Any one of these results is enough to conclude that \(C\) does not have an inverse, following the logic of Example MWIAA.</p>
︡3ebea573-19ad-42fd-bafc-69279b9f3716︡︡
︠dde98aa3-5803-48e0-937e-9f6c0e1bab08x︠
%html
<p>It also happens that <em>no</em> column of the identity matrix leads to a
       consistent system (for this matrix).</p>
︡92d4319a-cd55-4357-8e4d-fa4f680f6b9b︡︡
︠56622fa7-fcb2-40b6-b4b8-14e4ae2331df︠
D = C.augment(identity_matrix(6), subdivide=True)
D
︡a801fb34-c14e-45d0-9edb-8ec8de46ddf0︡︡
︠221295db-de60-4946-86f6-ffd4596a3ed4︠
D.rref()
︡08feb8b9-f62f-4a78-a37b-819e7467dc22︡︡
︠b8acc018-5cc6-4ead-b887-e70c3c1afa98︠

︡2943917a-d5c2-4841-9487-370245a8b1fe︡︡

