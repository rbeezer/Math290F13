︠e97551d0-4429-4fc1-b31a-7dceb6666e3ci︠
load('mathbook.css')

︡a28d0454-7ce3-4af9-8267-c7654c39cf73︡︡
︠0eb36465-3ddd-4d3c-bb83-1b7b1fe9dff9x︠
%html
<div>\(\)</div>
︡ef14bb02-c860-4209-8c4e-b5bace1dd493︡︡
︠3e8a53ef-a0d2-4872-9548-0dae17684e2bx︠
%html
<style></style><div class="headerblock">
<div class="title">Demo: Section LT</div>
<div class="authorgroup"><div class="author-info">
<div class="author-name">Robert Beezer</div>
<div class="author-department"></div>
<div class="author-institution"></div>
<div class="author-email"></div>
</div></div>
<div class="date">Math 290, Fall 2013<br>November 15, 2013</div>
</div>
︡646c810e-1afa-478f-b18c-b97cbf9b9665︡︡
︠673b0fc2-a26e-4af3-9ee4-1c0759bfe43dx︠
%html
<p>Sage has very capable linear transformations from \(\mathbb{Q}^n\) to \(\mathbb{Q}^m\).</p>
︡3befccd1-dd47-455b-b80d-836d3722c942︡︡
︠ae5044c1-e202-4eb3-b960-6e125e8766d8x︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">Creation via Symbolic Functions</div>
</div></div>
︡4f99f133-d479-4247-819a-a70b7a0e3bd9︡︡
︠15663fac-eaf1-45b8-8f12-d0a771f9aa78x︠
%html
<p>Start with a symbolic function.</p>
︡05caab8a-a5d2-4d04-b6fc-c6e24987f0c9︡︡
︠76fc5e36-62ca-4135-ba6f-83c50d6abe6a︠
var('x1 x2 x3 x4')
f(x1, x2, x3, x4) = (x1 + 2*x2 + x3 + 5*x4, x1 + 5*x2 + 4*x3 + 8*x4, -x2 - x3 - x4)

︡c50afa64-e0ff-45e2-af92-c6bd5aa99bf8︡︡
︠f6d42a18-44c4-4b07-8020-829615e13fcfx︠
%html
<p>Then specify the domain and codomain.  We need to be careful about how <tt class="code">T</tt> prints, Sage likes rows.</p>
︡364ca0a7-cfe5-4af5-98f2-3500405c8e44︡︡
︠e567929f-c4ea-4962-9764-bdbdabb2848d︠
T = linear_transformation(QQ^4, QQ^3, f)
T

︡287ec1fc-ebbf-4419-ac80-bd1ea17b4ccf︡︡
︠1f001ecd-dbb9-4b68-af16-8fe0b6a23376x︠
%html
<p>At a most basic level, <tt class="code">T</tt> behaves as a function.</p>
︡fb032213-0b5a-48eb-8ecf-d823c958eb5c︡︡
︠52c53866-0276-431d-bf25-1406792a99bb︠
u = random_vector(ZZ, 4, x=-9, y=9).change_ring(QQ)
u, T(u)

︡81c4b763-b76e-4452-a6d8-455aa533fd3f︡︡
︠32f88148-b7db-4554-8a55-6b5c1662d1ebx︠
%html
<p>We can check Theorem LTTZZ, zero goes to zero.</p>
︡53ef46b9-5b93-45c2-81e0-a30abe84aedf︡︡
︠fe22161e-764b-42a5-a1ea-7471ee5734bc︠
z4 = zero_vector(QQ, 4)
z3 = zero_vector(QQ, 3)
z4, T(z4), T(z4) == z3

︡b723905f-9039-4c9d-8781-e20bfc295b35︡︡
︠639d5b0c-0d26-4455-bdfb-d83744d29f09x︠
%html
<div class="section"><div class="heading">
<div class="number">2</div>
<div class="title">Creation via Matrices</div>
</div></div>
︡8b978ad8-ae15-44a6-a49f-5c90dffd193d︡︡
︠3fae37c3-ecf7-490f-915b-ad6e4c2adfdex︠
%html
<p>We can also create a linear transformation from a matrix, as in Theorem MBLT, with one caveat.  For a matrix \(A\), the default is to create the function \(T(\mathbf{v})=\mathbf{v}A\).  The keywords option <tt class="code">side='right'</tt> will indicate that we want to put the vector on the right of the matrix.</p>
︡e65b7ae8-2830-4a19-871a-58cddc522352︡︡
︠b64b9d22-e181-451c-a80a-754d26c9461b︠
A = matrix(QQ, [[1, 2, 1, 5], [1, 5, 4, 8], [0, -1, -1, -1]])
S = linear_transformation(A, side='right')

︡5db42e27-cfa1-455a-ab15-19ae61d7ac16︡︡
︠708e5c88-95c7-41d9-9dab-cc12e20bf5acx︠
%html
<p>Notice that we do not have to specify the domain or codomain, these are inferred from the size and type of the matrix.  <tt class="code">S</tt> is not new, it is exactly the linear transformation <tt class="code">T</tt> above.</p>
︡79b54e03-4daa-40b8-9f02-9dc3a4fba3e6︡︡
︠7bdc6369-c32b-46bd-953f-1e1d87ba7b2d︠
S == T

︡8d036b22-c321-4f86-aebf-710f9da4dfca︡︡
︠6b6c2b9c-397c-4a81-9344-7da21da0cd1fx︠
%html
<p>Again, notice how <tt class="code">S</tt> prints — the matrix representation is the transpose of what we like to use.  This does not <em>change</em> the linear transformation as a function, it just changes how we think about it (we like linear combinations of columns, Sage likes linear combinations of rows).</p>
︡5154ec83-37b3-4071-918a-4cbedcc26440︡︡
︠2cdebaad-84a6-4410-8a04-d818614a3bad︠
A, S

︡167d6999-ea82-4405-89fd-29a248aa32af︡︡
︠aa3d7c37-fb63-4ff9-b821-34ea55c899c7x︠
%html
<div class="section"><div class="heading">
<div class="number">3</div>
<div class="title">Creation via Values on a Basis</div>
</div></div>
︡6287d8d9-ab51-4f90-aee5-bdf8a78ea94e︡︡
︠8be0c189-e469-47cd-9f50-a8334cd11ecex︠
%html
<p>Starting with a domain and a codomain, we can provide a list of the images of basis vectors for the domain.</p>
︡34cad4fc-454d-47dd-9a9c-e2d27be4fadf︡︡
︠fe82e7de-554e-4b10-9c16-004cf5cbd531︠
v1 = vector(QQ, [1, 1, 0])
v2 = vector(QQ, [2, 5, -1])
v3 = vector(QQ, [1, 4, -1])
v4 = vector(QQ, [5, 8, -1])
R = linear_transformation(QQ^4, QQ^3, [v1, v2, v3, v4])

︡197116c5-4e65-4d2e-ad2e-587179ac0aa8︡︡
︠e81cdb08-c67e-4348-bed9-8d1f4f1b4c2bx︠
%html
<p>That's right — same function again.</p>
︡86ef570d-5e73-4fd6-b433-508127c9e064︡︡
︠995c4138-9877-4e2a-861e-e9a52a6a0cf2︠
R == T

︡033df1cb-34fe-4dbf-aea4-7fe4e65bb7b6︡︡
︠49828a90-39ab-45db-8296-89fc5d7d8b7ex︠
%html
<p>We can check how this construction works.</p>
︡36e6f5d2-6cf7-49cf-8eee-317a1d81fdd1︡︡
︠10bf997a-fe05-4098-9a49-ffba03e43e2b︠
d3 = R.domain().basis()[2]
R(d3); R(d3) == v3

︡e2b8dfe6-7d8b-4955-8a21-864542736ddd︡︡
︠b20fc8ba-d47d-4948-9f6c-1ddb6857d975x︠
%html
<p>We can give the domain an alternate basis and create a different linear transformation, despite seemingly having the same construction.  First we build the domain with a different user basis.</p>
︡1a4ac5a7-90a7-4308-9456-ffc16fff767f︡︡
︠047ecbea-c856-4de6-bdfb-7b68a0d5adde︠
u1 = vector(QQ, [1, 0, 0, 0])
u2 = vector(QQ, [1, 1, 0, 0])
u3 = vector(QQ, [1, 1, 1, 0])
u4 = vector(QQ, [1, 1, 1, 1])
dom4 = (QQ^4).subspace_with_basis([u1, u2, u3, u4])
dom4

︡33897a2e-d75f-4233-8003-22648b0ee611︡︡
︠ddb736b9-677c-4227-b6be-cd84ab63d4ed︠
L = linear_transformation(dom4, QQ^3, [v1, v2, v3, v4])
L

︡9466fca5-f188-4798-a176-7f95a6df3b09︡︡
︠7f68f04a-4611-4523-8cb7-78c042d870d5x︠
%html
<p>Even though the matrix representation prints the same, this is not the same function, we will need ideas from Chapter R before we can understand the difference.</p>
︡f7d0fb4b-e5e8-431a-a91f-80f6f1e8e17a︡︡
︠dd687e35-99a7-4674-a9fd-216053563288︠
R(u3), L(u3)

︡c6ea31dd-4ed1-439c-aa55-2860f5d98a58︡︡
︠000dda97-90fb-4581-91aa-315c705c7067x︠
%html
<p>This code should consistently return <tt class="code">False</tt>.</p>
︡5df60fb7-741b-48d8-a16f-a2611f2c1c7a︡︡
︠e5b5f076-9293-4246-b46f-e9d70be5a9f5︠
v = random_vector(QQ, 4)
R(v) == L(v)

︡88473d8f-3403-4005-ba41-8555046ace75︡︡
︠ed54b63c-3de0-4f0a-bf2e-c6f3c2669d85x︠
%html
<div class="section"><div class="heading">
<div class="number">4</div>
<div class="title">Basic Properties</div>
</div></div>
︡12ef514c-fa36-46a8-933d-cb55e2937433︡︡
︠f49e6357-afcf-425c-8943-eedc8dd410fax︠
%html
<p>Illustrations with <tt class="code">T</tt>.</p>
︡22f387ca-8b51-4738-9944-8257b80dbcaf︡︡
︠e90f1516-f9a3-4bdf-abeb-35abbb3b5522︠
T.domain()

︡f6dd16f4-86f2-43eb-bd84-9b6d6084bdc3︡︡
︠0b01b90d-0a61-4dc7-8d43-8fc0e6d7e71c︠
T.codomain()

︡35b3f525-78c9-47c5-99c2-f9e8ed80e6bf︡︡
︠25560aa7-7760-4552-8f06-716c383507ddx︠
%html
<p>A defining property, so always <tt class="code">True</tt>.</p>
︡4d95a12b-5e18-4861-a354-d396af1046c3︡︡
︠023cb597-7859-4926-a1cb-ebb79b03e7ed︠
u = random_vector(QQ, 4)
v = random_vector(QQ, 4)
u, v, T(u+v) == T(u) + T(v)

︡0c3253ea-1c72-4896-b4cc-6dec5d289bfd︡︡
︠9a970bab-658c-4ffb-b6fc-042723f5c131x︠
%html
<p>A defining property, so also always <tt class="code">True</tt>.</p>
︡7f8ee36a-f7e5-4487-892e-1a906b28fe94︡︡
︠c190c336-2354-4639-9f88-9ea10c7d9d14︠
alpha = (QQ).random_element()
u = random_vector(QQ, 4)
alpha, u, T(alpha*u) == alpha*T(u)

︡62795147-908b-49b2-8b37-aafcff5334b7︡︡
︠ba584365-07db-44e4-a1b6-058b4a0bff6ex︠
%html
<p>We can do <q>arithmetic</q> with linear transformations, though the addition seems to allow bad things to happen.</p>
︡efff8b66-0258-4388-90be-3d6963a2ddb4︡︡
︠8c9c83ae-3aba-45d1-b12f-96594ead1178︠
R+S

︡924f0e3d-a2f2-4f5c-ba58-a41c46361716︡︡
︠99c57afa-72e7-4d05-8081-a3fb277b1244x︠
%html
<p>Scalar multiples also, and they are well-behaved.</p>
︡49c9ca42-a652-43d2-9f9c-aa4810ff145b︡︡
︠252bcd81-dee5-48ef-a9b3-86a097dd825f︠
12*T

︡bc7b40c3-5bb9-4822-a4e9-ab5f3e479a5e︡︡
︠0281e1c9-c5b8-4f39-afad-c0b217306ba0x︠
%html
<p>The following is wrong.  (In other words, there is a bug in Sage.)</p>
︡ab30576d-c13f-4435-aeee-b9c11a7a2771︡︡
︠005808b6-e96e-4cf2-aac0-d5bf61130c55︠
P = R + L
P

︡65ef62c1-045a-429a-84a6-c1e57cdb6ee0︡︡
︠01a6444e-685f-4dca-80f6-779041dc6983x︠
%html
<p>As we can see…</p>
︡7baa5c6e-fbc3-4ce7-be5a-bdebd0446b02︡︡
︠82cc4b29-9f7d-422d-9df8-0d91d403f310︠
Q = L + R
Q.is_equal_function(P)

︡2e0d0f49-ac16-420f-af8d-641493a62a34︡︡
︠1be40228-adfd-480b-9a95-28739b891a1bx︠
%html
<p>The problem is that Sage is simply adding the matrices representing the linear transformations, without checking that they are defined using domains with the <em>same</em> basis.  We will understand the subtlety better in Chapter R.</p>
︡f6b6f1d5-5a18-470a-a658-b1faea4b9cd2︡︡

