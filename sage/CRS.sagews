︠f54de946-c9ab-4538-b3af-e87d6323f0a1i︠
load('mathbook.css')

︡4f7960f5-40fa-4a4c-a6ef-6f89b9b59046︡︡
︠765d6e3b-aa0b-4c64-b2d8-3ec970a3b625x︠
%html
<div>\(\)</div>
︡74f4264a-e568-4255-b63e-3a18248d76a4︡︡
︠1f885afe-936a-4f7e-996f-53e33c223efax︠
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
︡51b900c0-7bb8-4953-8b3e-3438c2e36c31︡︡
︠21efbbae-4429-4ab4-8fa0-710eafe1e527x︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">Column and Row Spaces</div>
</div></div>
︡273c5c95-96d0-4566-a4f7-03a6f8c6f048︡︡
︠e44acf7a-93ca-4ff4-98db-ccd32b70a348x︠
%html
<p>This is an illustration of Theorem CSCS (and the utility of linearly independent spanning sets). \(A\) is a \(5\times 7\) matrix.</p>
︡9a0d8119-ca2d-440b-9159-c064fc3e8efd︡︡
︠3f880069-533e-4ef1-bd89-2a953c73a067︠
A = matrix(QQ, [[1, -1, -2, 0, 0, -2, 0], [-4, 5, 6, -3, -1, 5, 0], [-3, -2, -3, 1, -2, -2, 5], [-7, 3, 3, -2, -3, 3, 5], [-1, -5, -5, 4, -1, -3, 5]])
A
︡e8a5492a-3869-4b68-a3b4-233b1ac9244d︡︡
︠471d018c-e516-4590-9084-2afde36de99cx︠
%html
<p>And its column space:</p>
︡923afb4c-1871-4bd0-801e-d48e8f3bd0fc︡︡
︠8155d814-fdd2-4458-b555-ebfe4622da05︠
A.column_space()
︡c3c30bf9-869d-4423-b56b-773560d41f45︡︡
︠ef52b31a-a747-4100-917a-be9efeab2769x︠
%html
<p>Grab the elements of a linearly independent spanning set.</p>
︡c327f9c4-75be-414b-9b54-1a8cafebe779︡︡
︠28db7db3-11b3-420d-b504-dc0afb79213b︠
S = A.column_space().basis()
S
︡38b3e656-71db-45a2-9b97-8671b481b839︡︡
︠b12d07b7-0d1c-4233-8662-4917bbeeab32x︠
%html
<p>Any linear combination of the elements of <tt class="code">S</tt> will lead to a vector of constants that will form a consistent system with coefficient matrix <tt class="code">A</tt>.</p>
︡024e4ff9-74fd-434f-a57c-7ffa0d743aef︡︡
︠957b1ae4-d78d-4a55-af13-3cdd7110d8c3︠
b = *S[0] + *S[1] + *S[2]
b
︡83dafef0-be4f-430a-b8fe-278dc51997b5︡︡
︠a8e16eb6-976b-45bc-8af9-14144664e9d9︠
P = A.augment(b, subdivide=True)
P.rref()
︡7c78078d-b58d-44bd-8bd4-00ae31bc3c29︡︡
︠0c069a15-7102-444e-bcf3-2917e29c41cex︠
%html
<p>If we perturb a vector slightly, in the right place, we can quickly create an inconsistent system.</p>
︡d29be29f-98ba-48eb-9818-a1626ceefac2︡︡
︠fc9ba30c-8486-4e03-952d-e5a8feac690cx︠
%html
<p>The vector <tt class="code">c</tt> will create a consistent system.</p>
︡7af877bd-d567-41c6-8269-03aedaf31c60︡︡
︠1af699a6-8b13-4784-93a9-1a7f29b9ba43︠
c = *S[0] + *S[1] + *S[2]
c
︡6d0c907a-55a2-4e1e-ae59-81e2448e0aa1︡︡
︠a552e6a7-b067-4e09-958a-9efebe48104dx︠
%html
<p>We change one entry, in a copy of <tt class="code">c</tt>, in a strategic location that is totally determined by the values of the first three entries.</p>
︡e7c039ba-7672-4f31-ae0d-55227c18d23a︡︡
︠7d1013ac-3202-4ee7-acb5-558d6bc73119︠
d = copy(c)
d[4] = d[4]+1
d
︡b18d1a50-4168-43ac-bea9-fac27b1f6315︡︡
︠9994c61e-4a37-4cd3-8034-4100da74e40d︠
P = A.augment(d, subdivide=True)
P.rref()
︡30ff9fa7-844a-48cc-835f-027e82d71d48︡︡
︠53a771bb-c788-417b-a453-68b52b673ef3x︠
%html
<p>Moral: Elements of the column space are vectors-of-constants that lead to consistent systems.  It is easy, especially with a linearly independent spanning set for the column space, to make a vector-of-constants that yields an inconsistent system.</p>
︡9479d1d1-b804-4289-80aa-d7408a7960f8︡︡

