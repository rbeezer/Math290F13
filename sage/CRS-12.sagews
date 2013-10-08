︠f54de946-c9ab-4538-b3af-e87d6323f0a1i︠
load('mathbook.css')

︡4f7960f5-40fa-4a4c-a6ef-6f89b9b59046︡︡
︠765d6e3b-aa0b-4c64-b2d8-3ec970a3b625i︠
%html
<div>\(\)</div>
︡57f9ff25-1927-495a-8462-3b07cb3aa1e4︡{"html":"<div>\\(\\)</div>"}︡
︠81ca99a9-6128-44cc-b45d-b34be4b3aeb9︠

︠f9702acc-26c6-4244-9a2b-69df7479f047︠

︠46a21765-9069-4569-a7db-b587e116418d︠

︠06ff9e0c-4e6a-413f-b248-025649c3f196︠

︠1713345d-99d7-4a4b-90d3-2c4f6bc5ecd7︠

︠3b330e82-2655-4087-bf10-be8f1a4afee9︠

︠14aa75c9-4fcd-496d-a5d9-dab49bdffe6a︠

︠4d4957d9-3c71-4ee3-a906-9930255576d9︠

︠47ae3186-c061-468d-a680-5329ca9a2992︠

︠68431cf3-d55a-4ab0-9d73-b9648abf390b︠

︠3ea067dd-9ede-4824-92e4-35da8dbf1152︠

︠2fa8e310-da15-478c-ae6e-937edc8f4066︠

︠4213d3c7-f552-4ba7-aa65-59bb0e8aecbb︠

︠1f885afe-936a-4f7e-996f-53e33c223efai︠
%html
<style></style><div class="headerblock">
<div class="title">Demo: Section CRS</div>
<div class="authorgroup"><div class="author-info">
<div class="author-name">Robert Beezer</div>
<div class="author-department"></div>
<div class="author-institution"></div>
<div class="author-email"></div>
</div></div>
<div class="date">Math 290, Fall 2013<br>October 7, 2013</div>
</div>
︡4bcfd0e1-9c47-4fa8-8e85-d4569ad68b20︡{"html":"<style></style><div class=\"headerblock\">\n<div class=\"title\">Demo: Section CRS</div>\n<div class=\"authorgroup\"><div class=\"author-info\">\n<div class=\"author-name\">Robert Beezer</div>\n<div class=\"author-department\"></div>\n<div class=\"author-institution\"></div>\n<div class=\"author-email\"></div>\n</div></div>\n<div class=\"date\">Math 290, Fall 2013<br>October 7, 2013</div>\n</div>"}︡
︠21efbbae-4429-4ab4-8fa0-710eafe1e527i︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">Column and Row Spaces</div>
</div></div>
︡532a705f-44b2-44ef-919d-b581e089cb76︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">1</div>\n<div class=\"title\">Column and Row Spaces</div>\n</div></div>"}︡
︠e44acf7a-93ca-4ff4-98db-ccd32b70a348i︠
%html
<p>This is an illustration of Theorem CSCS (and the utility of linearly independent spanning sets). \(A\) is a \(5\times 7\) matrix.</p>
︡fd660a12-900e-45a7-864a-8f67ebca7add︡{"html":"<p>This is an illustration of Theorem CSCS (and the utility of linearly independent spanning sets). \\(A\\) is a \\(5\\times 7\\) matrix.</p>"}︡
︠3f880069-533e-4ef1-bd89-2a953c73a067︠
A = matrix(QQ, [[1, -1, -2, 0, 0, -2, 0], [-4, 5, 6, -3, -1, 5, 0], [-3, -2, -3, 1, -2, -2, 5], [-7, 3, 3, -2, -3, 3, 5], [-1, -5, -5, 4, -1, -3, 5]])
A
︡29cc55be-e6be-474d-ba68-0931fd70e3d4︡{"stdout":"[ 1 -1 -2  0  0 -2  0]\n[-4  5  6 -3 -1  5  0]\n[-3 -2 -3  1 -2 -2  5]\n[-7  3  3 -2 -3  3  5]\n[-1 -5 -5  4 -1 -3  5]\n"}︡
︠471d018c-e516-4590-9084-2afde36de99ci︠
%html
<p>And its column space:</p>
︡299913c9-b2a2-4814-8a4b-5bca8d0e7070︡{"html":"<p>And its column space:</p>"}︡
︠8155d814-fdd2-4458-b555-ebfe4622da05︠
A.column_space()
︡ed0d2199-a4cf-4037-b330-3b2acb393e0f︡{"stdout":"Vector space of degree 5 and dimension 3 over Rational Field\nBasis matrix:\n[ 1  0  0  0 -2]\n[ 0  1  0  1 -1]\n[ 0  0  1  1  1]\n"}︡
︠ef52b31a-a747-4100-917a-be9efeab2769︠
%html
<p>Grab the elements of a linearly independent spanning set.</p>
︡778656b7-bccf-4fbd-8b82-9008f34f4d5a︡{"html":"<p>Grab the elements of a linearly independent spanning set.</p>"}︡
︠c178cc35-7eaa-4a60-8141-4a007fdae6b3︠

︠28db7db3-11b3-420d-b504-dc0afb79213b︠
S = A.column_space().basis()
S
︡519d1a98-ec0c-48fb-8d31-9068b6bc69ed︡{"stdout":"[\n(1, 0, 0, 0, -2),\n(0, 1, 0, 1, -1),\n(0, 0, 1, 1, 1)\n]\n"}︡
︠b12d07b7-0d1c-4233-8662-4917bbeeab32i︠
%html
<p>Any linear combination of the elements of <tt class="code">S</tt> will lead to a vector of constants that will form a consistent system with coefficient matrix <tt class="code">A</tt>.</p>
︡6c5b320b-08b7-4610-b042-2121e4f0e244︡{"html":"<p>Any linear combination of the elements of <tt class=\"code\">S</tt> will lead to a vector of constants that will form a consistent system with coefficient matrix <tt class=\"code\">A</tt>.</p>"}︡
︠53304c4c-ff06-4bbb-bb9a-17ed271beef1︠

︠957b1ae4-d78d-4a55-af13-3cdd7110d8c3︠
b = 7*S[0] + (-8)*S[1] + 19*S[2]
b
︡ecbbe011-c548-4b07-96f8-301f1055682f︡{"stdout":"(7, -8, 19, 11, 13)\n"}︡
︠a8e16eb6-976b-45bc-8af9-14144664e9d9︠
P = A.augment(b, subdivide=True)
P.rref()
︡7165826b-dfbd-496f-9bb3-e8948f5c5ae8︡{"stdout":"[      1       0       0   -1/19    9/19   -3/19  -20/19| -47/19]\n[      0       1       0  -29/19   -5/19  -11/19  -10/19| 100/19]\n[      0       0       1   14/19    7/19   23/19   -5/19|-140/19]\n[      0       0       0       0       0       0       0|      0]\n[      0       0       0       0       0       0       0|      0]\n"}︡
︠0c069a15-7102-444e-bcf3-2917e29c41cei︠
%html
<p>If we perturb a vector slightly, in the right place, we can quickly create an inconsistent system.</p>
︡6427bfb8-714b-4b45-8c2b-e1bf1591d86d︡{"html":"<p>If we perturb a vector slightly, in the right place, we can quickly create an inconsistent system.</p>"}︡
︠fc9ba30c-8486-4e03-952d-e5a8feac690ci︠
%html
<p>The vector <tt class="code">c</tt> will create a consistent system.</p>
︡1e653253-5621-4b8e-a94c-a2357e475033︡{"html":"<p>The vector <tt class=\"code\">c</tt> will create a consistent system.</p>"}︡
︠1af699a6-8b13-4784-93a9-1a7f29b9ba43︠
c = 15*S[0] + 78*S[1] + 103*S[2]
c
︡09a1c509-0a5b-48d6-bcf0-907f7101ad53︡{"stdout":"(15, 78, 103, 181, -5)\n"}︡
︠a552e6a7-b067-4e09-958a-9efebe48104di︠
%html
<p>We change one entry, in a copy of <tt class="code">c</tt>, in a strategic location that is totally determined by the values of the first three entries.</p>
︡858e4de7-df4e-4abd-bd9a-93cbcdcfae96︡{"html":"<p>We change one entry, in a copy of <tt class=\"code\">c</tt>, in a strategic location that is totally determined by the values of the first three entries.</p>"}︡
︠7d1013ac-3202-4ee7-acb5-558d6bc73119︠
d = copy(c)
d[4] = d[4]+1
d
︡7e996589-6f62-4211-aebc-9fffaf16b5c9︡{"stdout":"(15, 78, 103, 181, -4)\n"}︡
︠9994c61e-4a37-4cd3-8034-4100da74e40d︠
P = A.augment(d, subdivide=True)
P.rref()
︡58687b7c-8cca-413d-a29d-a3281c3da79d︡{"stdout":"[     1      0      0  -1/19   9/19  -3/19 -20/19|     0]\n[     0      1      0 -29/19  -5/19 -11/19 -10/19|     0]\n[     0      0      1  14/19   7/19  23/19  -5/19|     0]\n[     0      0      0      0      0      0      0|     1]\n[     0      0      0      0      0      0      0|     0]\n"}︡
︠53a771bb-c788-417b-a453-68b52b673ef3i︠
%html
<p>Moral: Elements of the column space are vectors-of-constants that lead to consistent systems.  It is easy, especially with a linearly independent spanning set for the column space, to make a vector-of-constants that yields an inconsistent system.</p>
︡1585b332-25b6-48f4-901e-83a38cac8182︡{"html":"<p>Moral: Elements of the column space are vectors-of-constants that lead to consistent systems.  It is easy, especially with a linearly independent spanning set for the column space, to make a vector-of-constants that yields an inconsistent system.</p>"}︡
︠c7790ff9-a212-45f6-b0ba-413b29331908︠









