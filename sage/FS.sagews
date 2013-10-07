︠72eda9aa-0be3-4a0e-89c8-88d2621b26e5i︠
load('mathbook.css')

︡8aa7a284-3574-48fe-bd5f-a44544406503︡︡
︠0f375941-c864-43c1-96af-6b85ff5b7444x︠
%html
<div>\(\)</div>
︡c104ec05-96d6-4a82-a9c4-82d215bdf598︡︡
︠2cd7461f-2b2d-4788-bded-d36e7e571b4dx︠
%html
<style></style><div class="headerblock">
<div class="title">Demo: Section FS</div>
<div class="authorgroup"><div class="author-info">
<div class="author-name">Robert Beezer</div>
<div class="author-department"></div>
<div class="author-institution"></div>
<div class="author-email"></div>
</div></div>
<div class="date">Math 290, Fall 2013<br>October 7, 2013</div>
</div>
︡7177785c-edb8-4977-9131-e754dc37df29︡︡
︠c1f11173-f33b-412c-a30a-c5c931a9413bx︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">Four Subsets</div>
</div></div>
︡d9acdc92-132e-47b1-9b68-c54246aaaf44︡︡
︠e517385a-6406-457c-be39-6910347ab527︠
A = matrix(QQ, [[194, -41, -899, -396, 49, 112, 874, -355, 1139, -1221], [269, -57, -1247, -549, 68, 155, 1212, -492, 1579, -1693], [16, -3, -73, -33, 4, 10, 72, -30, 95, -101], [115, -24, -532, -235, 29, 67, 518, -211, 676, -724], [10, 1, -37, -23, 2, 12, 44, -24, 67, -65], [-59, 13, 275, 120, -15, -33, -266, 107, -345, 371], [36, -7, -165, -74, 9, 22, 162, -67, 213, -227], [-20, 4, 92, 41, -5, -12, -90, 37, -118, 126]])
A
︡726624f9-7948-4cea-97bb-04b6f877a33f︡︡
︠7354ebc3-5dc5-4b2a-a844-97b9802b691c︠
N = A.extended_echelon_form(subdivide=True)
N
︡255b9356-9573-4aa2-a69a-c7eaabc9485e︡︡
︠418779aa-14da-4539-91fc-4d9207fbf25dx︠
%html
<p>Grab the four pieces of \(N\).</p>
︡3c26a224-375d-4b1b-ba5f-ddd85921bdca︡︡
︠1c049cdf-3ae8-4468-b8ad-7504f5d89eb2︠
C = N.subdivision(0,0)
Z = N.subdivision(1,0)
K = N.subdivision(0,1)
L = N.subdivision(1,1)
︡aae8d767-263e-4a11-82bc-0ffc7fa7b20d︡︡
︠afc43460-4583-43a0-98f4-ee8da5c44380x︠
%html
<p>And build two bigger pieces.</p>
︡86061c62-759a-4db0-989c-78b19bb6f42f︡︡
︠7fad72b7-ba82-4acc-acd1-fbffff517fc3︠
B = C.stack(Z)
J = K.stack(L)
︡566c532d-96b6-45e7-9270-9c6daa317b49︡︡
︠cb6a8f11-74ff-4a6e-8165-efc9969edaec︠
B
︡83e38e5d-f0c1-4f67-a54f-4ffd45a64888︡︡
︠05bd1a5a-f930-4bda-86f8-edbd984fe7d6︠
J
︡b56cb2f7-c0cc-4916-bf46-0e1bfce72335︡︡
︠e46a8f1c-28da-4ffa-bd43-70050e2188dcx︠
%html
<p>Some properties of the pieces, as given in Theorem PEEF.</p>
︡b5f9d1ed-6ced-4cc9-8ce9-c9f1f3a880cf︡︡
︠1c44645b-d52a-4f0f-b9d5-bf4e1f4c4610x︠
%html
<p>\(J\) is nonsingular.</p>
︡41bb9858-7c93-452d-bab3-3401eeff76c5︡︡
︠78d25677-1757-4a2e-9a30-5ec4da961d8f︠
J.is_singular()
︡32f648bf-1eaa-4300-85b2-e08d2aacd1ba︡︡
︠c57cddfd-eaef-4635-81d2-25b859605944x︠
%html
<p>\(A\), \(B\) and \(J\) are related.  Effectively, \(J\) consolidates the net effect of all of the row operations that convert \(A\) into \(B\).</p>
︡1fb1f162-2ed1-4e1d-b09e-19d40a23f5c0︡︡
︠2474936e-092e-4a3b-b329-e37fccade5b0︠
J*A == B
︡80a7479a-161a-42a3-b864-c3b13bc4bc42︡︡
︠5878967b-38f4-4277-b17b-09571f6a0520x︠
%html
<p>Any linear combinations of the columns of \(L\) that create a zero column will create a consistent system when used as the vector of constants with \(A\) as coefficient matrix.  This is another way of saying the null space of \(L\) is the column space of \(A\).</p>
︡bdb6001e-7dae-428b-89cf-0f2bf9015c67︡︡
︠ecd20a05-4700-441c-8b93-3fa5fa20bcac︠
NL = L.right_kernel(basis='pivot')
NL
︡508f34a6-34ff-4a4b-a22a-55b984ca3319︡︡
︠5c0aa7a1-e7ff-4af8-932b-40ece0ae6286x︠
%html
<p>We create an element of the null space of \(L\).</p>
︡439b148b-ae81-4c4e-aed3-92f7c5d9301d︡︡
︠2b6f2536-1bb9-412b-930b-87b05cc78368︠
NLbasis = NL.basis()
︡66c4e186-569f-40be-a38e-3bb1b4e35f9d︡︡
︠edb24e54-ff7f-44f6-a814-93831664b81d︠
b = *NLbasis[0] + *NLbasis[1] + *NLbasis[2]
b
︡2c15a51c-87e6-45d3-80b9-d9b4ca8e34c0︡︡
︠554a5f73-aef2-43bd-bf68-830eff1ccef9x︠
%html
<p>\(b\) will create a consistent system with \(A\) as coefficient matrix.</p>
︡2b3b7376-5934-4878-ba89-9d0d40263d1a︡︡
︠c18bbf53-e1a8-4fa9-b6a4-b90e878999e8︠
P = A.augment(b, subdivide=True)
P.rref()
︡2c94b1ea-7274-45ca-b586-f34949ffdac3︡︡
︠253d632a-0d3c-4dfa-bb18-f9b082f26b52x︠
%html
<p>The column space of \(A\) is equal to the null space of \(L\).  This is part of Theorem FS.</p>
︡aa0dd7d7-21b7-42ad-a240-7332380caa8c︡︡
︠e9bb84c6-98d0-41ba-ba28-8f2b78c6c9ba︠
CA = A.column_space()
CA
︡afe7c8c2-d936-4a37-89da-a04cf6b02aba︡︡
︠d9276d64-abdf-4ac8-bc2d-937c35f816abx︠
%html
<p>Sage relies on <q>echelonized</q> bases to represent infinite sets of vectors and to be able to test equality (which seems pretty amazing at first!).</p>
︡30802be4-604d-4e66-ad53-0e86dae757ec︡︡
︠da5789d7-33a1-4329-91d0-dca5dcad48d7︠
NL.echelonized_basis()
︡b1485d40-ea16-4401-8188-b9c6b67b40e8︡︡
︠f070ae69-466e-4a43-b4ba-01f189ff3b8a︠
CA == NL
︡58afd324-3f5a-4aeb-b4ea-98f8c30744bc︡︡

