︠72eda9aa-0be3-4a0e-89c8-88d2621b26e5i︠
load('mathbook.css')

︡8aa7a284-3574-48fe-bd5f-a44544406503︡︡
︠0f375941-c864-43c1-96af-6b85ff5b7444i︠
%html
<div>\(\)</div>
︡e13c346c-2733-4f57-9335-5cb3920b4e64︡{"html":"<div>\\(\\)</div>"}︡
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
︡e6cb33f3-1299-496b-abc2-07208baf3142︡{"html":"<style></style><div class=\"headerblock\">\n<div class=\"title\">Demo: Section FS</div>\n<div class=\"authorgroup\"><div class=\"author-info\">\n<div class=\"author-name\">Robert Beezer</div>\n<div class=\"author-department\"></div>\n<div class=\"author-institution\"></div>\n<div class=\"author-email\"></div>\n</div></div>\n<div class=\"date\">Math 290, Fall 2013<br>October 7, 2013</div>\n</div>"}︡
︠c1f11173-f33b-412c-a30a-c5c931a9413bi︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">Four Subsets</div>
</div></div>
︡6e0e6162-c077-493c-b7a0-3d86e045235f︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">1</div>\n<div class=\"title\">Four Subsets</div>\n</div></div>"}︡
︠e517385a-6406-457c-be39-6910347ab527︠
A = matrix(QQ, [[194, -41, -899, -396, 49, 112, 874, -355, 1139, -1221], [269, -57, -1247, -549, 68, 155, 1212, -492, 1579, -1693], [16, -3, -73, -33, 4, 10, 72, -30, 95, -101], [115, -24, -532, -235, 29, 67, 518, -211, 676, -724], [10, 1, -37, -23, 2, 12, 44, -24, 67, -65], [-59, 13, 275, 120, -15, -33, -266, 107, -345, 371], [36, -7, -165, -74, 9, 22, 162, -67, 213, -227], [-20, 4, 92, 41, -5, -12, -90, 37, -118, 126]])
A
︡14279171-93b1-4c25-b0e5-ca20872da340︡{"stdout":"[  194   -41  -899  -396    49   112   874  -355  1139 -1221]\n[  269   -57 -1247  -549    68   155  1212  -492  1579 -1693]\n[   16    -3   -73   -33     4    10    72   -30    95  -101]\n[  115   -24  -532  -235    29    67   518  -211   676  -724]\n[   10     1   -37   -23     2    12    44   -24    67   -65]\n[  -59    13   275   120   -15   -33  -266   107  -345   371]\n[   36    -7  -165   -74     9    22   162   -67   213  -227]\n[  -20     4    92    41    -5   -12   -90    37  -118   126]\n"}︡
︠7354ebc3-5dc5-4b2a-a844-97b9802b691c︠
N = A.extended_echelon_form(subdivide=True)
N
︡6e558d1b-b2f6-4023-bdd2-a692a868d574︡{"stdout":"[   1    0   -4    0   -2    1    0    0    2   -2|   0    0    0    0    0    9  -53 -122]\n[   0    1    3    0   -1    2   -2   -1    1    1|   0    0    0    0    0    4  -19  -46]\n[   0    0    0    1   -1    0   -2    1   -2    2|   0    0    0    0    0    4  -24  -55]\n[-------------------------------------------------+---------------------------------------]\n[   0    0    0    0    0    0    0    0    0    0|   1    0    0    0    0    2   -1    2]\n[   0    0    0    0    0    0    0    0    0    0|   0    1    0    0    0    3   -2    1]\n[   0    0    0    0    0    0    0    0    0    0|   0    0    1    0    0    0   -1   -1]\n[   0    0    0    0    0    0    0    0    0    0|   0    0    0    1    0    1   -1    1]\n[   0    0    0    0    0    0    0    0    0    0|   0    0    0    0    1   -2   -3    1]\n"}︡
︠418779aa-14da-4539-91fc-4d9207fbf25di︠
%html
<p>Grab the four pieces of \(N\).</p>
︡7e222c96-650a-4363-9ccf-d929b34e932b︡{"html":"<p>Grab the four pieces of \\(N\\).</p>"}︡
︠1c049cdf-3ae8-4468-b8ad-7504f5d89eb2︠
C = N.subdivision(0,0)
Z = N.subdivision(1,0)
K = N.subdivision(0,1)
L = N.subdivision(1,1)
︡e3d324c5-4cea-4ce1-99c9-f89e8cb7684a︡
︠afc43460-4583-43a0-98f4-ee8da5c44380i︠
%html
<p>And build two bigger pieces.</p>
︡c4416372-be84-442a-9072-9ecda1b8b036︡{"html":"<p>And build two bigger pieces.</p>"}︡
︠7fad72b7-ba82-4acc-acd1-fbffff517fc3︠
B = C.stack(Z)
J = K.stack(L)
︡bddeba78-267f-4f0f-a58d-40ae0594d3e2︡
︠cb6a8f11-74ff-4a6e-8165-efc9969edaec︠
B
︡483d2256-09e7-449f-a597-b903f54e6bcf︡{"stdout":"[ 1  0 -4  0 -2  1  0  0  2 -2]\n[ 0  1  3  0 -1  2 -2 -1  1  1]\n[ 0  0  0  1 -1  0 -2  1 -2  2]\n[ 0  0  0  0  0  0  0  0  0  0]\n[ 0  0  0  0  0  0  0  0  0  0]\n[ 0  0  0  0  0  0  0  0  0  0]\n[ 0  0  0  0  0  0  0  0  0  0]\n[ 0  0  0  0  0  0  0  0  0  0]\n"}︡
︠05bd1a5a-f930-4bda-86f8-edbd984fe7d6︠
J
︡e2afd962-4103-4e92-83a3-0248cc0aaf61︡{"stdout":"[   0    0    0    0    0    9  -53 -122]\n[   0    0    0    0    0    4  -19  -46]\n[   0    0    0    0    0    4  -24  -55]\n[   1    0    0    0    0    2   -1    2]\n[   0    1    0    0    0    3   -2    1]\n[   0    0    1    0    0    0   -1   -1]\n[   0    0    0    1    0    1   -1    1]\n[   0    0    0    0    1   -2   -3    1]\n"}︡
︠e46a8f1c-28da-4ffa-bd43-70050e2188dci︠
%html
<p>Some properties of the pieces, as given in Theorem PEEF.</p>
︡b6efc480-c711-48a2-8465-734fc0f1f4d1︡{"html":"<p>Some properties of the pieces, as given in Theorem PEEF.</p>"}︡
︠1c44645b-d52a-4f0f-b9d5-bf4e1f4c4610i︠
%html
<p>\(J\) is nonsingular.</p>
︡386cad37-f017-4859-ab69-c93519182ced︡{"html":"<p>\\(J\\) is nonsingular.</p>"}︡
︠78d25677-1757-4a2e-9a30-5ec4da961d8f︠
J.is_singular()
︡b772ec58-8d8f-4d72-9318-15d5b954716f︡{"stdout":"False\n"}︡
︠c57cddfd-eaef-4635-81d2-25b859605944i︠
%html
<p>\(A\), \(B\) and \(J\) are related.  Effectively, \(J\) consolidates the net effect of all of the row operations that convert \(A\) into \(B\).</p>
︡efa1a827-d8cc-4f76-97f3-2837a1035ecc︡{"html":"<p>\\(A\\), \\(B\\) and \\(J\\) are related.  Effectively, \\(J\\) consolidates the net effect of all of the row operations that convert \\(A\\) into \\(B\\).</p>"}︡
︠2474936e-092e-4a3b-b329-e37fccade5b0︠
J*A == B
︡74fad0b1-1e2a-42be-ba67-90d367e84ea5︡{"stdout":"True\n"}︡
︠5878967b-38f4-4277-b17b-09571f6a0520i︠
%html
<p>Any linear combinations of the columns of \(L\) that create a zero column will create a consistent system when used as the vector of constants with \(A\) as coefficient matrix.  This is another way of saying the null space of \(L\) is the column space of \(A\).</p>
︡139c78b7-81e5-4e19-87f9-dfc010c7e609︡{"html":"<p>Any linear combinations of the columns of \\(L\\) that create a zero column will create a consistent system when used as the vector of constants with \\(A\\) as coefficient matrix.  This is another way of saying the null space of \\(L\\) is the column space of \\(A\\).</p>"}︡
︠ecd20a05-4700-441c-8b93-3fa5fa20bcac︠
NL = L.right_kernel(basis='pivot')
NL
︡2365385c-37ff-4f97-aaa5-d1e2a6dbc747︡{"stdout":"Vector space of degree 8 and dimension 3 over Rational Field\nUser basis matrix:\n[-2 -3  0 -1  2  1  0  0]\n[ 1  2  1  1  3  0  1  0]\n[-2 -1  1 -1 -1  0  0  1]\n"}︡
︠5c0aa7a1-e7ff-4af8-932b-40ece0ae6286i︠
%html
<p>We create an element of the null space of \(L\).</p>
︡269c377d-3e14-4ffa-bf1c-974f4cb9bfb7︡{"html":"<p>We create an element of the null space of \\(L\\).</p>"}︡
︠2b6f2536-1bb9-412b-930b-87b05cc78368︠
NLbasis = NL.basis()
NLbasis
︡db41fe27-12e2-4241-9892-2ae6dd6376a5︡{"stdout":"[\n(-2, -3, 0, -1, 2, 1, 0, 0),\n(1, 2, 1, 1, 3, 0, 1, 0),\n(-2, -1, 1, -1, -1, 0, 0, 1)\n]\n"}︡
︠edb24e54-ff7f-44f6-a814-93831664b81d︠
b = 5*NLbasis[0] + 6*NLbasis[1] + 22*NLbasis[2]
b
︡21941544-1143-4d5c-a83b-086b48098e81︡{"stdout":"(-48, -25, 28, -21, 6, 5, 6, 22)\n"}︡
︠554a5f73-aef2-43bd-bf68-830eff1ccef9i︠
%html
<p>\(b\) will create a consistent system with \(A\) as coefficient matrix.</p>
︡154a4c94-f0b3-485a-a2b8-c03fbb24c556︡{"html":"<p>\\(b\\) will create a consistent system with \\(A\\) as coefficient matrix.</p>"}︡
︠c18bbf53-e1a8-4fa9-b6a4-b90e878999e8︠
P = A.augment(b, subdivide=True)
P.rref()
︡de3996dd-3aeb-41fe-b116-f9b0770a4df7︡{"stdout":"[    1     0    -4     0    -2     1     0     0     2    -2 -2957]\n[    0     1     3     0    -1     2    -2    -1     1     1 -1106]\n[    0     0     0     1    -1     0    -2     1    -2     2 -1334]\n[    0     0     0     0     0     0     0     0     0     0     0]\n[    0     0     0     0     0     0     0     0     0     0     0]\n[    0     0     0     0     0     0     0     0     0     0     0]\n[    0     0     0     0     0     0     0     0     0     0     0]\n[    0     0     0     0     0     0     0     0     0     0     0]\n"}︡
︠253d632a-0d3c-4dfa-bb18-f9b082f26b52i︠
%html
<p>The column space of \(A\) is equal to the null space of \(L\).  This is part of Theorem FS.</p>
︡f5d6623a-340c-4732-8b24-e8b34c3b32d2︡{"html":"<p>The column space of \\(A\\) is equal to the null space of \\(L\\).  This is part of Theorem FS.</p>"}︡
︠e9bb84c6-98d0-41ba-ba28-8f2b78c6c9ba︠
CA = A.column_space()
CA
︡b9acb994-0f2a-48bf-8500-9183d7434bf3︡{"stdout":"Vector space of degree 8 and dimension 3 over Rational Field\nBasis matrix:\n[    1     0     0     1     6     1     1    -1]\n[    0     1     0  -1/3 -14/3    -1  -2/3   2/3]\n[    0     0     1   2/3  19/3     1   4/3  -1/3]\n"}︡
︠d9276d64-abdf-4ac8-bc2d-937c35f816abi︠
%html
<p>Sage relies on <q>echelonized</q> bases to represent infinite sets of vectors and to be able to test equality (which seems pretty amazing at first!).</p>
︡ee74c6a4-0e07-4c08-b191-3443dc959fbf︡{"html":"<p>Sage relies on <q>echelonized</q> bases to represent infinite sets of vectors and to be able to test equality (which seems pretty amazing at first!).</p>"}︡
︠da5789d7-33a1-4329-91d0-dca5dcad48d7︠
NL.echelonized_basis()
︡06078549-df36-4a27-9cb0-4741e7db337c︡{"stdout":"[\n(1, 0, 0, 1, 6, 1, 1, -1),\n(0, 1, 0, -1/3, -14/3, -1, -2/3, 2/3),\n(0, 0, 1, 2/3, 19/3, 1, 4/3, -1/3)\n]\n"}︡
︠f070ae69-466e-4a43-b4ba-01f189ff3b8a︠
CA == NL
︡5d329b01-1f10-490d-83f1-28ab4827cc6c︡{"stdout":"True\n"}︡
︠d5ea7c9c-a563-4807-a6b6-d4e3815e4d9a︠









