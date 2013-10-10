︠72eda9aa-0be3-4a0e-89c8-88d2621b26e5i︠
load('mathbook.css')

︡8aa7a284-3574-48fe-bd5f-a44544406503︡︡
︠0f375941-c864-43c1-96af-6b85ff5b7444i︠
%html
<div>\(\)</div>
︡a09ac4ff-eefa-43b0-8d00-6b2051ea71bf︡{"html":"<div>\\(\\)</div>"}︡
︠2cd7461f-2b2d-4788-bded-d36e7e571b4di︠
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
︡605e1fd6-f0db-4a70-9738-454ee15d462e︡{"html":"<style></style><div class=\"headerblock\">\n<div class=\"title\">Demo: Section FS</div>\n<div class=\"authorgroup\"><div class=\"author-info\">\n<div class=\"author-name\">Robert Beezer</div>\n<div class=\"author-department\"></div>\n<div class=\"author-institution\"></div>\n<div class=\"author-email\"></div>\n</div></div>\n<div class=\"date\">Math 290, Fall 2013<br>October 7, 2013</div>\n</div>"}︡
︠c1f11173-f33b-412c-a30a-c5c931a9413bi︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">Four Subsets</div>
</div></div>
︡eab2add1-b071-49a1-be4e-3414fc5661e4︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">1</div>\n<div class=\"title\">Four Subsets</div>\n</div></div>"}︡
︠e517385a-6406-457c-be39-6910347ab527︠
A = matrix(QQ, [[194, -41, -899, -396, 49, 112, 874, -355, 1139, -1221], [269, -57, -1247, -549, 68, 155, 1212, -492, 1579, -1693], [16, -3, -73, -33, 4, 10, 72, -30, 95, -101], [115, -24, -532, -235, 29, 67, 518, -211, 676, -724], [10, 1, -37, -23, 2, 12, 44, -24, 67, -65], [-59, 13, 275, 120, -15, -33, -266, 107, -345, 371], [36, -7, -165, -74, 9, 22, 162, -67, 213, -227], [-20, 4, 92, 41, -5, -12, -90, 37, -118, 126]])
A
︡15ea08ad-8121-4aab-935d-d1d55a733ad9︡{"stdout":"[  194   -41  -899  -396    49   112   874  -355  1139 -1221]\n[  269   -57 -1247  -549    68   155  1212  -492  1579 -1693]\n[   16    -3   -73   -33     4    10    72   -30    95  -101]\n[  115   -24  -532  -235    29    67   518  -211   676  -724]\n[   10     1   -37   -23     2    12    44   -24    67   -65]\n[  -59    13   275   120   -15   -33  -266   107  -345   371]\n[   36    -7  -165   -74     9    22   162   -67   213  -227]\n[  -20     4    92    41    -5   -12   -90    37  -118   126]"}︡{"stdout":"\n"}︡
︠7354ebc3-5dc5-4b2a-a844-97b9802b691c︠
N = A.extended_echelon_form(subdivide=True)
N
︡4ae6831e-d78d-4f2f-b384-2f24f536e18f︡{"stdout":"[   1    0   -4    0   -2    1    0    0    2   -2|   0    0    0    0    0    9  -53 -122]\n[   0    1    3    0   -1    2   -2   -1    1    1|   0    0    0    0    0    4  -19  -46]\n[   0    0    0    1   -1    0   -2    1   -2    2|   0    0    0    0    0    4  -24  -55]\n[-------------------------------------------------+---------------------------------------]\n[   0    0    0    0    0    0    0    0    0    0|   1    0    0    0    0    2   -1    2]\n[   0    0    0    0    0    0    0    0    0    0|   0    1    0    0    0    3   -2    1]\n[   0    0    0    0    0    0    0    0    0    0|   0    0    1    0    0    0   -1   -1]\n[   0    0    0    0    0    0    0    0    0    0|   0    0    0    1    0    1   -1    1]\n[   0    0    0    0    0    0    0    0    0    0|   0    0    0    0    1   -2   -3    1]\n"}︡
︠418779aa-14da-4539-91fc-4d9207fbf25di︠
%html
<p>Grab the four pieces of \(N\).</p>
︡40d41d57-e0cc-46f6-bc2e-259830a0c859︡{"html":"<p>Grab the four pieces of \\(N\\).</p>"}︡
︠1c049cdf-3ae8-4468-b8ad-7504f5d89eb2︠
C = N.subdivision(0,0)
Z = N.subdivision(1,0)
K = N.subdivision(0,1)
L = N.subdivision(1,1)
︡ed00e413-f58b-4b5c-b9be-452271d735a2︡
︠afc43460-4583-43a0-98f4-ee8da5c44380i︠
%html
<p>And build two bigger pieces.</p>
︡77a7c3de-6401-4482-9625-5e3d7c8bb3cc︡{"html":"<p>And build two bigger pieces.</p>"}︡
︠7fad72b7-ba82-4acc-acd1-fbffff517fc3︠
B = C.stack(Z)
J = K.stack(L)
︡21a8e502-91a4-4e9d-ab0f-0b1aea740463︡
︠cb6a8f11-74ff-4a6e-8165-efc9969edaec︠
B
︡1ffca742-488e-4006-9aa0-598c9aa15358︡{"stdout":"[ 1  0 -4  0 -2  1  0  0  2 -2]\n[ 0  1  3  0 -1  2 -2 -1  1  1]\n[ 0  0  0  1 -1  0 -2  1 -2  2]\n[ 0  0  0  0  0  0  0  0  0  0]\n[ 0  0  0  0  0  0  0  0  0  0]\n[ 0  0  0  0  0  0  0  0  0  0]\n[ 0  0  0  0  0  0  0  0  0  0]\n[ 0  0  0  0  0  0  0  0  0  0]"}︡{"stdout":"\n"}︡
︠05bd1a5a-f930-4bda-86f8-edbd984fe7d6︠
J
︡8c54f5d8-76e6-425b-aca1-f9b7ae742015︡{"stdout":"[   0    0    0    0    0    9  -53 -122]\n[   0    0    0    0    0    4  -19  -46]\n[   0    0    0    0    0    4  -24  -55]\n[   1    0    0    0    0    2   -1    2]\n[   0    1    0    0    0    3   -2    1]\n[   0    0    1    0    0    0   -1   -1]\n[   0    0    0    1    0    1   -1    1]\n[   0    0    0    0    1   -2   -3    1]\n"}︡
︠e46a8f1c-28da-4ffa-bd43-70050e2188dci︠
%html
<p>Some properties of the pieces, as given in Theorem PEEF.</p>
︡04b687c2-84cd-4243-81a7-8f986e1fa05c︡{"html":"<p>Some properties of the pieces, as given in Theorem PEEF.</p>"}︡
︠1c44645b-d52a-4f0f-b9d5-bf4e1f4c4610i︠
%html
<p>\(J\) is nonsingular.</p>
︡c43e342e-000e-4d1e-9275-07b7b393d7fb︡{"html":"<p>\\(J\\) is nonsingular.</p>"}︡
︠78d25677-1757-4a2e-9a30-5ec4da961d8f︠
J.is_singular()
︡90dde573-0b38-4515-9be1-955a3825ea2b︡{"stdout":"False\n"}︡
︠c57cddfd-eaef-4635-81d2-25b859605944i︠
%html
<p>\(A\), \(B\) and \(J\) are related.  Effectively, \(J\) consolidates the net effect of all of the row operations that convert \(A\) into \(B\).</p>
︡eb360727-759e-477a-83ee-65e501378c09︡{"html":"<p>\\(A\\), \\(B\\) and \\(J\\) are related.  Effectively, \\(J\\) consolidates the net effect of all of the row operations that convert \\(A\\) into \\(B\\).</p>"}︡
︠2474936e-092e-4a3b-b329-e37fccade5b0︠
J*A == B
︡c5d53e55-6ebb-4da9-8b6e-afdf7049ccdb︡{"stdout":"True"}︡{"stdout":"\n"}︡
︠5878967b-38f4-4277-b17b-09571f6a0520i︠
%html
<p>Any linear combinations of the columns of \(L\) that create a zero column will create a consistent system when used as the vector of constants with \(A\) as coefficient matrix.  This is another way of saying the null space of \(L\) is the column space of \(A\).</p>
︡62162867-0825-4ddf-bb87-97dec1cabf23︡{"html":"<p>Any linear combinations of the columns of \\(L\\) that create a zero column will create a consistent system when used as the vector of constants with \\(A\\) as coefficient matrix.  This is another way of saying the null space of \\(L\\) is the column space of \\(A\\).</p>"}︡
︠ecd20a05-4700-441c-8b93-3fa5fa20bcac︠
NL = L.right_kernel(basis='pivot')
NL
︡74eaadf9-79de-4266-8975-c42c6495110a︡{"stdout":"Vector space of degree 8 and dimension 3 over Rational Field\nUser basis matrix:\n[-2 -3  0 -1  2  1  0  0]\n[ 1  2  1  1  3  0  1  0]\n[-2 -1  1 -1 -1  0  0  1]\n"}︡
︠5c0aa7a1-e7ff-4af8-932b-40ece0ae6286i︠
%html
<p>We create an element of the null space of \(L\).</p>
︡5ea06aa7-8054-47c1-8bbe-f37d80f99de4︡{"html":"<p>We create an element of the null space of \\(L\\).</p>"}︡
︠2b6f2536-1bb9-412b-930b-87b05cc78368︠
NLbasis = NL.basis()
︡48579ef9-d914-4c71-b67e-747c0e786ab2︡
︠edb24e54-ff7f-44f6-a814-93831664b81d︠
b = 5*NLbasis[0] + 3*NLbasis[1] + 2*NLbasis[2]
b
︡d3793f4c-1af1-4376-be22-b97fadaaca4c︡{"stdout":"(-11, -11, 5, -4, 17, 5, 3, 2)\n"}︡
︠554a5f73-aef2-43bd-bf68-830eff1ccef9i︠
%html
<p>\(b\) will create a consistent system with \(A\) as coefficient matrix.</p>
︡b5bd9e42-1743-42a4-8704-afbc2fb3a4f2︡{"html":"<p>\\(b\\) will create a consistent system with \\(A\\) as coefficient matrix.</p>"}︡
︠c18bbf53-e1a8-4fa9-b6a4-b90e878999e8︠
P = A.augment(b, subdivide=True)
P.rref()
︡b9160b42-e50c-42dc-b9ff-cf98aa1bee2f︡{"stdout":"[   1    0   -4    0   -2    1    0    0    2   -2 -358]\n[   0    1    3    0   -1    2   -2   -1    1    1 -129]\n[   0    0    0    1   -1    0   -2    1   -2    2 -162]\n[   0    0    0    0    0    0    0    0    0    0    0]\n[   0    0    0    0    0    0    0    0    0    0    0]\n[   0    0    0    0    0    0    0    0    0    0    0]\n[   0    0    0    0    0    0    0    0    0    0    0]\n[   0    0    0    0    0    0    0    0    0    0    0]"}︡{"stdout":"\n"}︡
︠253d632a-0d3c-4dfa-bb18-f9b082f26b52i︠
%html
<p>The column space of \(A\) is equal to the null space of \(L\).  This is part of Theorem FS.</p>
︡5cfbc23d-2b0a-471f-b6c0-57317e714663︡{"html":"<p>The column space of \\(A\\) is equal to the null space of \\(L\\).  This is part of Theorem FS.</p>"}︡
︠e9bb84c6-98d0-41ba-ba28-8f2b78c6c9ba︠
CA = A.column_space()
CA
︡235fac52-50e0-427e-a0ed-642a7a9f57c2︡{"stdout":"Vector space of degree 8 and dimension 3 over Rational Field\nBasis matrix:\n[    1     0     0     1     6     1     1    -1]\n[    0     1     0  -1/3 -14/3    -1  -2/3   2/3]\n[    0     0     1   2/3  19/3     1   4/3  -1/3]\n"}︡
︠d9276d64-abdf-4ac8-bc2d-937c35f816abi︠
%html
<p>Sage relies on <q>echelonized</q> bases to represent infinite sets of vectors and to be able to test equality (which seems pretty amazing at first!).</p>
︡357fb83e-18f9-4ce5-a8a5-91c0c0a622e9︡{"html":"<p>Sage relies on <q>echelonized</q> bases to represent infinite sets of vectors and to be able to test equality (which seems pretty amazing at first!).</p>"}︡
︠da5789d7-33a1-4329-91d0-dca5dcad48d7︠
NL.echelonized_basis()
︡4b2ff71f-fa60-4fda-beef-b41fbd535526︡{"stdout":"[\n(1, 0, 0, 1, 6, 1, 1, -1),\n(0, 1, 0, -1/3, -14/3, -1, -2/3, 2/3),\n(0, 0, 1, 2/3, 19/3, 1, 4/3, -1/3)\n]\n"}︡
︠f070ae69-466e-4a43-b4ba-01f189ff3b8a︠
CA == NL
︡029a0ade-75c0-434f-9263-2990b5138689︡{"stdout":"True\n"}︡
︠b8dbae8f-a9e4-469d-873b-4469e01923d0︠









