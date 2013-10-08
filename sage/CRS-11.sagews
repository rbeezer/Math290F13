︠f54de946-c9ab-4538-b3af-e87d6323f0a1i︠
load('mathbook.css')

︡a493a0ea-e896-4e5e-9700-d5ee4bd34c89︡{"once":false,"file":{"show":false,"uuid":"db0fa80f-8a2d-4b83-910b-3cc8127f55fc","filename":"mathbook.css"}}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"$.get(\"/blobs/mathbook.css?uuid=db0fa80f-8a2d-4b83-910b-3cc8127f55fc\", function(css) { $('<style type=text/css></style>').html(css).appendTo(\"body\")});"},"once":false}︡
︠765d6e3b-aa0b-4c64-b2d8-3ec970a3b625i︠
%html
<div>\(\)</div>
︡ed5ccc2e-7480-4e09-8054-ad1416affb95︡{"html":"<div>\\(\\)</div>"}︡
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
︡ef58b73f-8332-4b02-a716-f87d556bea60︡{"html":"<style></style><div class=\"headerblock\">\n<div class=\"title\">Demo: Section CRS</div>\n<div class=\"authorgroup\"><div class=\"author-info\">\n<div class=\"author-name\">Robert Beezer</div>\n<div class=\"author-department\"></div>\n<div class=\"author-institution\"></div>\n<div class=\"author-email\"></div>\n</div></div>\n<div class=\"date\">Math 290, Fall 2013<br>October 7, 2013</div>\n</div>"}︡
︠21efbbae-4429-4ab4-8fa0-710eafe1e527i︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">Column and Row Spaces</div>
</div></div>
︡50864261-c696-4eb9-a675-873abccaa686︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">1</div>\n<div class=\"title\">Column and Row Spaces</div>\n</div></div>"}︡
︠e44acf7a-93ca-4ff4-98db-ccd32b70a348i︠
%html
<p>This is an illustration of Theorem CSCS (and the utility of linearly independent spanning sets). \(A\) is a \(5\times 7\) matrix.</p>
︡dbe2cd34-fd64-4ff8-91af-2803bfe31499︡{"html":"<p>This is an illustration of Theorem CSCS (and the utility of linearly independent spanning sets). \\(A\\) is a \\(5\\times 7\\) matrix.</p>"}︡
︠3f880069-533e-4ef1-bd89-2a953c73a067︠
A = matrix(QQ, [[1, -1, -2, 0, 0, -2, 0], [-4, 5, 6, -3, -1, 5, 0], [-3, -2, -3, 1, -2, -2, 5], [-7, 3, 3, -2, -3, 3, 5], [-1, -5, -5, 4, -1, -3, 5]])
A
︡731c55de-8945-439a-98cd-efe37e72ce55︡{"stdout":"[ 1 -1 -2  0  0 -2  0]\n[-4  5  6 -3 -1  5  0]\n[-3 -2 -3  1 -2 -2  5]\n[-7  3  3 -2 -3  3  5]\n[-1 -5 -5  4 -1 -3  5]\n"}︡
︠471d018c-e516-4590-9084-2afde36de99ci︠
%html
<p>And its column space:</p>
︡edf69fd7-aff0-49c7-a3b1-5c19098b645a︡{"html":"<p>And its column space:</p>"}︡
︠8155d814-fdd2-4458-b555-ebfe4622da05︠
A.column_space()
︡27b17b3c-404f-4269-855c-c01f63d153f4︡{"stdout":"Vector space of degree 5 and dimension 3 over Rational Field\nBasis matrix:\n[ 1  0  0  0 -2]\n[ 0  1  0  1 -1]\n[ 0  0  1  1  1]"}︡{"stdout":"\n"}︡
︠ef52b31a-a747-4100-917a-be9efeab2769i︠
%html
<p>Grab the elements of a linearly independent spanning set.</p>
︡70c8dac1-7429-4826-97f5-65211fb9def9︡{"html":"<p>Grab the elements of a linearly independent spanning set.</p>"}︡
︠28db7db3-11b3-420d-b504-dc0afb79213b︠
S = A.column_space().basis()
S
︡de93b24e-87f2-4072-91cc-fda16c7e8e96︡{"stdout":"[\n(1, 0, 0, 0, -2),\n(0, 1, 0, 1, -1),\n(0, 0, 1, 1, 1)\n]\n"}︡
︠b12d07b7-0d1c-4233-8662-4917bbeeab32i︠
%html
<p>Any linear combination of the elements of <tt class="code">S</tt> will lead to a vector of constants that will form a consistent system with coefficient matrix <tt class="code">A</tt>.</p>
︡f520a0cd-50d2-46d2-a2b5-4c398ed4d2e7︡{"html":"<p>Any linear combination of the elements of <tt class=\"code\">S</tt> will lead to a vector of constants that will form a consistent system with coefficient matrix <tt class=\"code\">A</tt>.</p>"}︡
︠957b1ae4-d78d-4a55-af13-3cdd7110d8c3︠
b = 5*S[0] + (-7)*S[1] + 12*S[2]
b
︡cb7bcd18-3d61-4591-b89f-e6738ed314f8︡{"stdout":"(5, -7, 12, 5, 9)\n"}︡
︠a8e16eb6-976b-45bc-8af9-14144664e9d9︠
P = A.augment(b, subdivide=True)
P.rref()
︡30a8e0cf-7ca7-49c5-9551-d73f06691860︡{"stdout":"[     1      0      0  -1/19   9/19  -3/19 -20/19|-26/19]\n[     0      1      0 -29/19  -5/19 -11/19 -10/19| 63/19]\n[     0      0      1  14/19   7/19  23/19  -5/19|-92/19]\n[     0      0      0      0      0      0      0|     0]\n[     0      0      0      0      0      0      0|     0]\n"}︡
︠0c069a15-7102-444e-bcf3-2917e29c41cei︠
%html
<p>If we perturb a vector slightly, in the right place, we can quickly create an inconsistent system.</p>
︡3c1222fa-aaeb-4357-808f-f71ccb80e8a2︡{"html":"<p>If we perturb a vector slightly, in the right place, we can quickly create an inconsistent system.</p>"}︡
︠fc9ba30c-8486-4e03-952d-e5a8feac690ci︠
%html
<p>The vector <tt class="code">c</tt> will create a consistent system.</p>
︡a70f724c-ae55-48bd-9adf-e96cf9140cbd︡{"html":"<p>The vector <tt class=\"code\">c</tt> will create a consistent system.</p>"}︡
︠1af699a6-8b13-4784-93a9-1a7f29b9ba43︠
c = 7*S[0] + 8*S[1] + (-10)*S[2]
c
︡38708745-bfea-4c31-8ca0-2935f32f17eb︡{"stdout":"(7, 8, -10, -2, -32)\n"}︡
︠a552e6a7-b067-4e09-958a-9efebe48104di︠
%html
<p>We change one entry, in a copy of <tt class="code">c</tt>, in a strategic location that is totally determined by the values of the first three entries.</p>
︡570e3fde-78de-43eb-b486-a25eee8e2e14︡{"html":"<p>We change one entry, in a copy of <tt class=\"code\">c</tt>, in a strategic location that is totally determined by the values of the first three entries.</p>"}︡
︠7d1013ac-3202-4ee7-acb5-558d6bc73119︠
d = copy(c)
d[4] = d[4]+1
d
︡e60fa3e3-d497-42b1-86b1-fc457b67b9b8︡{"stdout":"(7, 8, -10, -2, -31)\n"}︡
︠9994c61e-4a37-4cd3-8034-4100da74e40d︠
P = A.augment(d, subdivide=True)
P.rref()
︡58b1350c-5e0b-4174-891f-62e5219aa8ad︡{"stdout":"[     1      0      0  -1/19   9/19  -3/19 -20/19|     0]\n[     0      1      0 -29/19  -5/19 -11/19 -10/19|     0]\n[     0      0      1  14/19   7/19  23/19  -5/19|     0]\n[     0      0      0      0      0      0      0|     1]\n[     0      0      0      0      0      0      0|     0]\n"}︡
︠53a771bb-c788-417b-a453-68b52b673ef3i︠
%html
<p>Moral: Elements of the column space are vectors-of-constants that lead to consistent systems.  It is easy, especially with a linearly independent spanning set for the column space, to make a vector-of-constants that yields an inconsistent system.</p>
︡7415f542-fd7c-4ae6-bbda-88bac4715036︡{"html":"<p>Moral: Elements of the column space are vectors-of-constants that lead to consistent systems.  It is easy, especially with a linearly independent spanning set for the column space, to make a vector-of-constants that yields an inconsistent system.</p>"}︡
︠4c964ba6-c45e-41b3-9d51-a2ec69b198aa︠









