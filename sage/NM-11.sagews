︠f2370076-164c-41d1-bbdb-14f3c41a0fe4i︠
load('mathbook.css')

︡9a3b269d-2c41-4cc7-8471-a3fdaff7dc6b︡︡
︠badce3fc-16c2-4a00-9a81-719226002a95i︠
%html
<div>\(\)</div>
︡bb8c2c41-f2ce-44aa-bb8b-5ff0eeae9ab2︡{"html":"<div>\\(\\)</div>"}︡
︠b73f0204-7bed-4a13-916b-a3aa95af43b8i︠
%html
<style></style><div class="headerblock">
<div class="title">Demo: Section NM</div>
<div class="authorgroup">
<div class="author-name">Robert Beezer</div>
<div class="author-department"></div>
<div class="author-institution"></div>
<div class="author-email"><a href="mailto:"></a></div>
</div>
<div class="date">Math 290, Fall 2013</div>
</div>
︡2715c3dd-cdaa-4c9e-9279-ecc01959acd8︡{"html":"<style></style><div class=\"headerblock\">\n<div class=\"title\">Demo: Section NM</div>\n<div class=\"authorgroup\">\n<div class=\"author-name\">Robert Beezer</div>\n<div class=\"author-department\"></div>\n<div class=\"author-institution\"></div>\n<div class=\"author-email\"><a href=\"mailto:\"></a></div>\n</div>\n<div class=\"date\">Math 290, Fall 2013</div>\n</div>"}︡
︠123d303b-7a21-4372-8339-81509da1e7bai︠
%html
<p>First, a nonsingular \(5\times 5\) matrix, created at random.</p>
︡f88cabf0-b731-4bc6-8c61-6dfe301a3245︡{"html":"<p>First, a nonsingular \\(5\\times 5\\) matrix, created at random.</p>"}︡
︠0ac0a039-4a80-4630-b2eb-2bcfbc32a0c2︠
A = random_matrix(QQ, 5, algorithm="unimodular", upper_bound=20)
A

︡fc36e7a2-f651-4439-a5fc-fbd96bd8c5f5︡{"stdout":"[  0   2  -3   7  17]\n[  2   3 -17  18  19]\n[ -1  -2  11 -13 -15]\n[ -3  -3  17 -13 -10]\n[  1  -1  -4  -1 -13]\n"}︡
︠7721441e-d253-4304-bad4-e40b4325d551i︠
%html
<p>Augment with the zero vector and row-reduce (Definition NM), or don't augment (Theorem NMRRI).</p>
︡675968f5-36ef-4fef-9788-c42fef43c0c8︡{"html":"<p>Augment with the zero vector and row-reduce (Definition NM), or don't augment (Theorem NMRRI).</p>"}︡
︠7d27ff3b-7c05-4895-b55f-6a9bb2512662︠
A.augment(zero_vector(QQ, 5)).rref()
︡388dd5a0-cfbf-4ee2-902c-f24cc4540afe︡{"stdout":"[1 0 0 0 0 0]\n[0 1 0 0 0 0]\n[0 0 1 0 0 0]\n[0 0 0 1 0 0]\n[0 0 0 0 1 0]\n"}︡
︠d4bb5488-9edd-433b-ac38-5bafe4463bb0︠
︠00ae74ac-2e2a-44ad-9ab4-bbf8c52c0b95i︠
%html
<p>Build some random vectors, augment and row-reduce.  Always a unique solution to the linear system represented by the augmented matrix.</p>
v = random_vector(ZZ, 5)
︠3be7280f-d1b9-49f6-919f-9af8c2bac91c︠
v = random_vector(ZZ, 5)
print v
A.augment(v).rref()
︡fd73d5f6-9e8a-4ae8-b855-b0d1f2e4bc4f︡{"stdout":"(1, -1, -2, -1, 4)\n"}︡{"stdout":"[  1   0   0   0   0 -77]\n[  0   1   0   0   0  74]\n[  0   0   1   0   0  -4]\n[  0   0   0   1   0   4]\n[  0   0   0   0   1 -11]\n"}︡
︠f956abca-2abe-473e-a139-f093a3616411︠


v
︡ae0450ed-ae50-4ee2-a576-c12c55e5c861︡{"html":"<p>Build some random vectors, augment and row-reduce.  Always a unique solution to the linear system represented by the augmented matrix.</p>\nv = random_vector(ZZ, 5)\nv"}︡
︠6aae6337-0549-47fb-b3c2-04db64af03f5i︠
%html
<p>Cheap, easy and powerful:</p>
︡8ac2758d-f5f3-4793-bf4d-41630b28041a︡{"html":"<p>Cheap, easy and powerful:</p>"}︡
︠a3f15f8a-3c08-4249-acea-8498ae569a6a︠
A.is_singular()

︡81436a15-7706-481f-80b0-7ae64f593560︡{"stdout":"False"}︡{"stdout":"\n"}︡
︠722c3ae4-6165-4d53-93f9-87a53811b568i︠
%html
<p>Now, a carefully crafted singular matrix.</p>
︡a4ef9386-0123-45a6-93ef-70bde868cc4d︡{"html":"<p>Now, a carefully crafted singular matrix.</p>"}︡
︠c213574f-adc6-459a-8745-ab8bc906c2d3︠
B = matrix(QQ,
    [[7,-1,-12,21,-8],
    [-3,3,0,-9,6],
    [3,3,-12,9,0],
    [2,3,-10,6,1],
    [-2,2,0,-6,4]])
B

︡2924486f-ca3d-4b73-84c5-e515057bd88d︡{"stdout":"[  7  -1 -12  21  -8]\n[ -3   3   0  -9   6]\n[  3   3 -12   9   0]\n[  2   3 -10   6   1]\n[ -2   2   0  -6   4]\n"}︡
︠6aa6a327-609e-4d67-bbaf-c5897aa7b168i︠
%html
<p>Augment with the zero vector and row-reduce (Definition NM), or don't augment (Theorem NMRRI).</p>
︡071d3017-a571-45e1-bfdb-63ec99b3ffdc︡{"html":"<p>Augment with the zero vector and row-reduce (Definition NM), or don't augment (Theorem NMRRI).</p>"}︡
︠c73aaadc-f22b-41b1-b8fe-fbe123bddb19︠
B.augment(zero_vector(5)).rref()
︡82143074-cd48-4927-bc8e-5529c6a24e75︡{"stdout":"[ 1  0 -2  3 -1  0]\n[ 0  1 -2  0  1  0]\n[ 0  0  0  0  0  0]\n[ 0  0  0  0  0  0]\n[ 0  0  0  0  0  0]\n"}︡
︠b333dce1-842c-4446-8aa7-f79b9c2f6e76i︠
%html
<p>Cheap, easy and powerful:</p>
︡dfc92c13-2df7-47bb-9697-860dc2df3e0a︡{"html":"<p>Cheap, easy and powerful:</p>"}︡
︠e9c46474-966e-46fe-8f9c-ebdd770bc393︠
B.is_singular()

︡7dc46e0b-146d-4496-b521-e10184db338e︡{"stdout":"True\n"}︡
︠ef9344de-83e9-44ee-b628-6e150f6fc156i︠
%html
<p>Two carefully crafted vectors for linear systems with <tt class="code">B</tt> as coefficient matrix.</p>
︡110fd5aa-8a2c-4d91-a607-a739bdd94e80︡{"html":"<p>Two carefully crafted vectors for linear systems with <tt class=\"code\">B</tt> as coefficient matrix.</p>"}︡
︠cfd37b96-e8b7-428a-a171-5f56ffb43bca︠
c = vector(QQ, [17,-15,-3,-5,-10])
d = vector(QQ, [-3,1,-2,1,2])

︡526474b4-3bcb-4e8f-b7f6-fefbcf0fa68b︡
︠c333bf17-126d-498b-a5e8-b5ff05a91f53︠
B.augment(c).rref()
︡c59a814f-234a-40a9-80dc-e97869df8064︡{"stdout":"[ 1  0 -2  3 -1  2]\n[ 0  1 -2  0  1 -3]\n[ 0  0  0  0  0  0]\n[ 0  0  0  0  0  0]\n[ 0  0  0  0  0  0]\n"}︡
︠99f849a2-2276-49ee-97e4-553776290151︠
B.augment(d).rref()
︡0e8c6a15-4dcc-422e-a752-0113c678cde0︡{"stdout":"[ 1  0 -2  3 -1  0]\n[ 0  1 -2  0  1  0]\n[ 0  0  0  0  0  1]\n[ 0  0  0  0  0  0]\n[ 0  0  0  0  0  0]\n"}︡
︠eb8b1e78-3740-43a8-8d43-7a6e153ca63ci︠
%html
<p>Which column vectors will create consistent systems? (Stay tuned.)</p>
︡8f0f4240-bc1d-44fc-9f78-e23831de85aa︡{"html":"<p>Which column vectors will create consistent systems? (Stay tuned.)</p>"}︡
︠ddec1f21-c9be-4142-b61e-95cc4bbc2ccei︠
%html
<p>A null space is called a <q>right kernel</q> in Sage.</p>
︡5392cab5-664a-469f-bfde-32a90e2c7a3d︡{"html":"<p>A null space is called a <q>right kernel</q> in Sage.</p>"}︡
︠29c1e43d-e3fa-4f23-8e88-bfd603dd672b︠
NS = B.right_kernel()
NS.list()

︡5a6c6955-022d-426b-b78b-af821f212d14︡︡









