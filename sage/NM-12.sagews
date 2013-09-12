︠f2370076-164c-41d1-bbdb-14f3c41a0fe4i︠
load('mathbook.css')

︡9a3b269d-2c41-4cc7-8471-a3fdaff7dc6b︡︡
︠badce3fc-16c2-4a00-9a81-719226002a95i︠
%html
<div>\(\)</div>
︡5443105d-c137-4037-a9e3-7bd922fbb619︡{"html":"<div>\\(\\)</div>"}︡
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
︡b1ebb3e5-8003-455e-be22-a5a271c4dc22︡{"html":"<style></style><div class=\"headerblock\">\n<div class=\"title\">Demo: Section NM</div>\n<div class=\"authorgroup\">\n<div class=\"author-name\">Robert Beezer</div>\n<div class=\"author-department\"></div>\n<div class=\"author-institution\"></div>\n<div class=\"author-email\"><a href=\"mailto:\"></a></div>\n</div>\n<div class=\"date\">Math 290, Fall 2013</div>\n</div>"}︡
︠123d303b-7a21-4372-8339-81509da1e7bai︠
%html
<p>First, a nonsingular \(5\times 5\) matrix, created at random.</p>
︡6e0b283f-9289-4a13-a316-c484f29e6b76︡{"html":"<p>First, a nonsingular \\(5\\times 5\\) matrix, created at random.</p>"}︡
︠0ac0a039-4a80-4630-b2eb-2bcfbc32a0c2︠
A = random_matrix(QQ, 5, algorithm="unimodular", upper_bound=20)
A

︡d6ae5c70-79f5-4c9f-b48f-defe18984c96︡{"stdout":"[ -1   0   2  -6  -1]\n[  1  -1  -5   8   6]\n[  1  -1  -4   6   7]\n[  2  -3 -11  15  18]\n[  1   0  -6  14  -2]\n"}︡
︠7721441e-d253-4304-bad4-e40b4325d551i︠
%html
<p>Augment with the zero vector and row-reduce (Definition NM), or don't augment (Theorem NMRRI).</p>
︡584d7bd4-30ef-420b-aedd-30207c89e993︡{"html":"<p>Augment with the zero vector and row-reduce (Definition NM), or don't augment (Theorem NMRRI).</p>"}︡
︠007a22a6-7f2c-4ba7-a8f5-6a0679c41192︠
A.augment(zero_vector(5)).rref()
︡c380c13d-d742-45be-bc62-fa3f1d25df3b︡{"stdout":"[1 0 0 0 0 0]\n[0 1 0 0 0 0]\n[0 0 1 0 0 0]\n[0 0 0 1 0 0]\n[0 0 0 0 1 0]\n"}︡
︠00ae74ac-2e2a-44ad-9ab4-bbf8c52c0b95i︠
%html
<p>Build some random vectors, augment and row-reduce.  Always a unique solution to the linear system represented by the augmented matrix.</p>
︡e9b698f9-89b7-4db2-b1ef-a3417c781104︡{"html":"<p>Build some random vectors, augment and row-reduce.  Always a unique solution to the linear system represented by the augmented matrix.</p>"}︡
︠2d71262f-fe49-4879-b692-04bfc37acd9b︠
v = random_vector(ZZ, 5)
print v
A.augment(v).rref()
︡057e4c2e-46f0-4389-9274-ac17103c7cc8︡{"stdout":"(-10, 0, -1, 0, -1)\n"}︡{"stdout":"[  1   0   0   0   0  59]\n[  0   1   0   0   0 -95]\n[  0   0   1   0   0   8]\n[  0   0   0   1   0  -3]\n[  0   0   0   0   1 -15]\n"}︡
︠6aae6337-0549-47fb-b3c2-04db64af03f5i︠
%html
<p>Cheap, easy and powerful:</p>
︡b874cc2d-f707-414d-917a-22f1ffd0496d︡{"html":"<p>Cheap, easy and powerful:</p>"}︡
︠a3f15f8a-3c08-4249-acea-8498ae569a6a︠
A.is_singular()

︡d1bf1ef7-5dbe-4315-ae50-5f7fe523dd92︡{"stdout":"False"}︡{"stdout":"\n"}︡
︠722c3ae4-6165-4d53-93f9-87a53811b568i︠
%html
<p>Now, a carefully crafted singular matrix.</p>
︡25ec8d95-3eb0-4f3e-b7cb-8e2aa5cd0fbf︡{"html":"<p>Now, a carefully crafted singular matrix.</p>"}︡
︠c213574f-adc6-459a-8745-ab8bc906c2d3︠
B = matrix(QQ,
    [[7,-1,-12,21,-8],
    [-3,3,0,-9,6],
    [3,3,-12,9,0],
    [2,3,-10,6,1],
    [-2,2,0,-6,4]])
B

︡ed1480e9-9138-4aba-9cd2-36ff022d3e6a︡{"stdout":"[  7  -1 -12  21  -8]\n[ -3   3   0  -9   6]\n[  3   3 -12   9   0]\n[  2   3 -10   6   1]\n[ -2   2   0  -6   4]\n"}︡
︠6aa6a327-609e-4d67-bbaf-c5897aa7b168i︠
%html
<p>Augment with the zero vector and row-reduce (Definition NM), or don't augment (Theorem NMRRI).</p>
︡8ff4be75-b6df-454e-b6d9-3f595d2f633c︡{"html":"<p>Augment with the zero vector and row-reduce (Definition NM), or don't augment (Theorem NMRRI).</p>"}︡
︠6695a1fc-b911-433a-9e1d-b2df9718a901︠
B.augment(zero_vector(5)).rref()
︡270a9548-70b6-46fa-a43c-2c86fe8fb1eb︡{"stdout":"[ 1  0 -2  3 -1  0]\n[ 0  1 -2  0  1  0]\n[ 0  0  0  0  0  0]\n[ 0  0  0  0  0  0]\n[ 0  0  0  0  0  0]\n"}︡
︠b333dce1-842c-4446-8aa7-f79b9c2f6e76i︠
%html
<p>Cheap, easy and powerful:</p>
︡965c05ee-c7f1-405b-8e7d-dfe899f07671︡{"html":"<p>Cheap, easy and powerful:</p>"}︡
︠e9c46474-966e-46fe-8f9c-ebdd770bc393︠
B.is_singular()

︡3d0c93a8-c754-444e-b907-aa185f94aa10︡{"stdout":"True\n"}︡
︠ef9344de-83e9-44ee-b628-6e150f6fc156i︠
%html
<p>Two carefully crafted vectors for linear systems with <tt class="code">B</tt> as coefficient matrix.</p>
︡f24e0d88-ad4b-46b3-a4cd-ea666b2626e0︡{"html":"<p>Two carefully crafted vectors for linear systems with <tt class=\"code\">B</tt> as coefficient matrix.</p>"}︡
︠cfd37b96-e8b7-428a-a171-5f56ffb43bca︠
c = vector(QQ, [17,-15,-3,-5,-10])
d = vector(QQ, [-3,1,-2,1,2])

︡5e363bd0-71bc-4c30-ac0c-1c1ff526eb44︡
︠e89213c3-15cf-4aef-b7c8-11096d6ef49a︠
B.augment(c).rref()
︡d142b9dd-3971-49bc-8158-9a9fa6fdfd11︡{"stdout":"[ 1  0 -2  3 -1  2]\n[ 0  1 -2  0  1 -3]\n[ 0  0  0  0  0  0]\n[ 0  0  0  0  0  0]\n[ 0  0  0  0  0  0]\n"}︡
︠84393e7f-06e4-4aba-9dda-8eac9c68d35d︠
B.augment(d).rref()
︡d8064b66-bcbe-493c-b7f2-b882dc97ac5a︡{"stdout":"[ 1  0 -2  3 -1  0]\n[ 0  1 -2  0  1  0]\n[ 0  0  0  0  0  1]\n[ 0  0  0  0  0  0]\n[ 0  0  0  0  0  0]\n"}︡
︠eb8b1e78-3740-43a8-8d43-7a6e153ca63ci︠
%html
<p>Which column vectors will create consistent systems? (Stay tuned.)</p>
︡350cb0a8-4b88-4070-a36a-ac18c7058619︡{"html":"<p>Which column vectors will create consistent systems? (Stay tuned.)</p>"}︡
︠ddec1f21-c9be-4142-b61e-95cc4bbc2ccei︠
%html
<p>A null space is called a <q>right kernel</q> in Sage.</p>
︡ed1f0cc4-311d-4bdc-a02c-d6f8f7c55f5c︡{"html":"<p>A null space is called a <q>right kernel</q> in Sage.</p>"}︡
︠29c1e43d-e3fa-4f23-8e88-bfd603dd672b︠
NS = B.right_kernel()
NS.list()

︡5a6c6955-022d-426b-b78b-af821f212d14︡︡









