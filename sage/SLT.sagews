︠2af80493-8390-4fe1-821f-9c08a70ab93ei︠
load('mathbook.css')

︡ccb210e6-37da-47f3-8efd-96a33f338f45︡︡
︠3975ed1a-d4ac-45dc-95e6-f008576c2db7x︠
%html
<div>\(\)</div>
︡6965a032-2a3a-4885-982c-44b87badb6b2︡︡
︠1953a299-8960-4f67-b44e-296417133236x︠
%html
<style></style><div class="headerblock">
<div class="title">Demo: Section SLT</div>
<div class="authorgroup"><div class="author-info">
<div class="author-name">Robert Beezer</div>
<div class="author-department"></div>
<div class="author-institution"></div>
<div class="author-email"></div>
</div></div>
<div class="date">Math 290, Fall 2013<br>November 15, 2013</div>
</div>
︡1ea16723-ee14-4773-8795-4f79ac45f6c5︡︡
︠a3e45fb3-cb9c-44f6-90b5-a0d3b10d1d71x︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">Surjective Linear Transformations</div>
</div></div>
︡a2c90cde-c718-43b6-af33-82dc04f2a162︡︡
︠ac43f8bc-4db8-422a-88ca-6c700727968cx︠
%html
<p>Two carefully-crafted linear transformations: <tt class="code">T</tt> is surjective, <tt class="code">S</tt> is not.</p>
︡fe25ae3f-860c-4365-8451-985f9dfeb4e5︡︡
︠04c4e02f-c1c9-424c-90b5-a4fab9fa5e8f︠
A = matrix(QQ, [[2, 2, 5, -2], [2, 3, 1, -4], [-3, -4, -4, 5]])
T = linear_transformation(QQ^4, QQ^3, A, side='right')

︡0380ea23-b8a1-4584-a204-1616fcd2e07b︡︡
︠a0d637e1-d5b1-4e62-8255-2bde64011b8b︠
T.is_surjective()

︡4cec6828-a581-4aa9-b912-ee7bfeed7673︡︡
︠efea2a09-096f-4eb3-8341-323f62829b96x︠
%html
<p>The range is known in Sage as the <q>image.</q>  For a surjective linear transformation, it will be the entire codomain.  Note that the image is a vector space.</p>
︡9fca367a-a17d-4aff-a786-95597d51f395︡︡
︠ef12841b-b103-4f9e-a620-373982e0b0eb︠
T.image()

︡e962992b-faee-444c-a77c-8ce9cad9eaa2︡︡
︠4df6dc50-ac82-4dd2-b01b-bb80b58f6150︠
T.image() == T.codomain()

︡e6b5dcc2-e2f5-49cb-9959-640775ab8e26︡︡
︠0956859e-a7cd-4d52-a541-4892b1f21ea6︠
B = matrix(QQ, [[1, -2, 0, 3], [3, -5, 1, 7], [-1, 4, 2, -7]])
S = linear_transformation(QQ^4, QQ^3, B, side='right')

︡1758e033-95cd-4c07-945c-a4a2fc1c9926︡︡
︠e1843375-ba23-48e7-8cef-6890923605f0︠
S.is_surjective()

︡eadaef80-ce1b-4203-981d-8a1d23067103︡︡
︠663bcdbf-a8f8-4dce-9d25-e24664687943︠
IM = S.image()
IM

︡f6d9ef6e-e55b-4bf8-99f5-3821b227dbb3︡︡
︠d46c492c-2f12-4020-8e09-72cb6badd141︠
IM == S.codomain()

︡8a0ff418-a1c9-4884-8b8c-a039342c6fbe︡︡
︠414c00aa-4cc5-43ea-821c-8736344e6985x︠
%html
<div class="section"><div class="heading">
<div class="number">2</div>
<div class="title">Pre-Images</div>
</div></div>
︡6fedb9a6-edb6-41c7-b6b9-6a2225516922︡︡
︠85b9cb51-66c9-4977-b3f7-a887417f81ddx︠
%html
<p>We can create inputs associated with any output.  First, we make an arbitrary output, but make sure it really is an output, as a linear combination of a basis of the image (see basis above).  We print the two vectors in the opposite of what we would consider the <q>normal</q> order.</p>
︡27924915-4ffe-42c8-816e-625ba707afa0︡︡
︠2f79a9f5-0321-4a7d-b4ea-26ed6ed69c71︠
bas = IM.basis()
out = ()*bas[0] + ()*bas[1]
inp = S.preimage_representative(out)
out, inp

︡ecbc5e9f-7c08-474c-b7d1-5bbdb70d323a︡︡
︠923ae421-39d9-452b-8181-719a73ded41cx︠
%html
<p>A check on our work.</p>
︡9437ff10-8393-42d5-80be-a8384db13354︡︡
︠eab477ee-cf80-429b-88c7-fc351285fd91︠
S(inp)

︡48a4d874-fc48-4858-87a4-c413aac3cd81︡︡
︠f074bfe3-bf77-41a5-8f58-263377a86e62x︠
%html
<p>We can make other inputs, using the kernel.</p>
︡530d5615-d819-40f2-b1d1-f5183d2492d3︡︡
︠b543dcc0-fd8e-44ce-b948-6f3d9ebb7de8︠
K = S.kernel()
K

︡803d069c-6757-4482-8681-b0b9c9c6f41a︡︡
︠7f401073-0293-4317-a650-b72e86956f8ax︠
%html
<p>Any value of <tt class="code">new_inp</tt> is in the preimage of <tt class="code">out</tt>, and every element of the preimage can be built this way.  Notice the role the kernel plays, much like in the worksheet about injective linear transformations.</p>
︡4b3cebc0-91d6-47c5-80d3-10931ad5d47e︡︡
︠efe3ee55-49a6-47b7-b63c-550a109b68ae︠
z = K.random_element()
new_inp = inp + z
new_inp, S(new_inp)

︡3ba34594-dd96-4324-862a-72cc23c63c45︡︡
︠d12dc1e4-9542-4d7f-bdfc-055915334011x︠
%html
<p>Elements outside the range (image) will have empty preimages.  We mildly <q>wreck</q> an element of the range.</p>
︡477b8219-9788-4944-afbf-706e532309c5︡︡
︠4d5a6c3b-26c7-48ba-ab20-b9dbc26d93b7︠
in_range = ()*bas[0] + ()*bas[1]
in_range

︡f29e8981-0372-4226-a418-7e2d61c62027︡︡
︠68b35c87-12af-43fe-8bae-59648b591aa0x︠
%html
<p>With two initial entries determined by the zeros and ones in the basis vectors, the third entry must be determined, so we can <q>twiddle</q> it just a bit to obtain a vector of the codomain that lies outside the range.  We will ask Sage for a pre-image representative anyway and see what happens.</p>
︡b5c47ee8-bcb0-4f06-9952-c3da4a56024d︡︡
︠8ad672bd-a22a-4b4a-a650-6df2ab65650c︠
outside_range = vector(QQ, [ , , ])
S.preimage_representative(outside_range)

︡f9ae5e11-d4d8-427b-b037-fc702cedaa29︡︡

