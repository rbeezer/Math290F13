︠04648625-f3bd-4bd6-bf16-5eae95c43ba9i︠
load('mathbook.css')

︡8704a514-8d30-482f-8cec-1ec8f41ea64b︡︡
︠cd3b9c40-cda5-4b75-b406-8a8def6ef47dx︠
%html
<div>\(\)</div>
︡928795b2-28de-4ee6-a97c-57145e013d60︡︡
︠d8fe6199-b915-437c-8c6c-552defe8fcbbx︠
%html
<style></style><div class="headerblock">
<div class="title">Demo: Section ILT</div>
<div class="authorgroup"><div class="author-info">
<div class="author-name">Robert Beezer</div>
<div class="author-department"></div>
<div class="author-institution"></div>
<div class="author-email"></div>
</div></div>
<div class="date">Math 290, Fall 2013<br>November 15, 2013</div>
</div>
︡ff674a69-c720-4f87-9ba6-0441ddc3f331︡︡
︠7ef5640e-3b55-4daa-a981-c8374e2add19x︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">Injective Linear Transformations</div>
</div></div>
︡14d329ce-7039-4205-a612-c00caec45e58︡︡
︠85961d03-551e-47ad-9710-5dd7467ae9d4x︠
%html
<p>Two carefully-crafted linear transformations: <tt class="code">T</tt> is injective, <tt class="code">S</tt> is not.</p>
︡924c3dc5-6d65-40fc-a930-6b20a3dece81︡︡
︠b1a4560f-e674-4eb1-8a49-f1c368adde80︠
A = matrix(QQ, [[1, 2, 2], [3, 7, 6], [1, 2, 1], [2, 5, 7]])
T = linear_transformation(QQ^3, QQ^4, A, side='right')

︡4bb993e3-fd72-4602-8286-7f2bd551597d︡︡
︠3717c147-eb84-4571-8c52-1d83acb1e104︠
T.is_injective()

︡cb525a31-a48f-48a4-814f-4e9cee0a495d︡︡
︠f4366177-b34c-439f-b4bc-49a6cc64cd23︠
T.kernel()

︡8caf6fb5-6d81-4358-b34a-e7a3d7246ec0︡︡
︠238e89bb-d8e9-4618-8dff-c2025d54b9f6︠
B = matrix(QQ, [[0, 1, -2], [-1, 1, 3], [-2, 5, 0], [0, 2, -4]])
S = linear_transformation(QQ^3, QQ^4, B, side='right')

︡2731604a-e3f0-4569-8dc4-5fcf73820b54︡︡
︠3f486052-1f24-4552-a3fd-e2f1ff4ef229︠
S.is_injective()

︡29eb77b5-14d6-4ed5-a655-25dd47379388︡︡
︠eb5b1d78-c9ba-492a-a1b5-a3050f75de0b︠
K = S.kernel()
K

︡3c02cd98-1a28-43d1-995d-577b83eb5983︡︡
︠5a4c508c-90cb-4162-b570-6e35427d5bf6x︠
%html
<p>We create two different inputs, which differ by a random vector from the kernel (which we hope is not simply the zero vector, a distinct possibility).  We always get the same output from <tt class="code">S</tt>, predictably.  If we try this with <tt class="code">T</tt> then the kernel vector is <em>always</em> the zero vector and the demonstration is very uninteresting.</p>
︡c145863c-96c9-4af5-99d8-af2204a56726︡︡
︠d2d64341-cd23-4b65-8bee-bccff97a9d74︠
z = K.random_element()
u = random_vector(QQ, 3)
w = u + z
u, w, S(u), S(w), S(u) == S(w)

︡714d802b-c1cf-4d14-ac0f-236fabf96972︡︡

