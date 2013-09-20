︠82b3332e-68ac-48b5-93ed-4125fada6e78i︠
load('mathbook.css')

︡215255c1-284d-45af-9b77-167fbfb0d2ef︡︡
︠face0f76-5041-455e-986e-0f5f67ad2465x︠
%html
<div>\(\)</div>
︡0cafa5e6-4e2a-4c4f-ac78-382c76d57f95︡︡
︠e65f5ebf-6a8e-495a-88a8-6b424a83c639x︠
%html
<style></style><div class="headerblock">
<div class="title">Demo: Section SS</div>
<div class="authorgroup">
<div class="author-name">Robert Beezer</div>
<div class="author-department"></div>
<div class="author-institution"></div>
<div class="author-email"><a href="mailto:"></a></div>
</div>
<div class="date">Math 290, Fall 2013<br>September 19, 2013</div>
</div>
︡bafbb802-f094-4f48-bfc9-049fe0bdc805︡︡
︠a2c168f2-e867-4bc1-93d2-a95128786d39x︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">Vector Spaces</div>
</div></div>
︡9a889f0f-afcc-4676-98fc-8b85de587778︡︡
︠cff20336-aa4e-4ba7-81d9-29998bb64f94x︠
%html
<p>It is easy in Sage to make a reasonable facsimile of \(\mathbf{C}^n\).  We just restrict our attention to rational entries rather than complex entries.</p>
︡7496630f-15e2-4b29-9dbc-bbc4afb2e941︡︡
︠0957666c-2d92-4731-b466-da7d160fde8d︠
V = QQ^4
V
︡3dacc998-d967-4256-945a-fc7b5a247021︡︡
︠aab7b6c3-5f42-441d-90e6-60ea77b51b2ex︠
%html
<p>We can test membership using the word/command <tt class="code">in</tt>.</p>
︡bf916f07-80c5-4c56-bff0-8ec39b269bee︡︡
︠2af38896-911f-4028-9049-402680c80c97︠

︡93774d53-bba6-4e36-b431-f7795de50ed6︡︡
︠df82209c-7bff-495c-aa64-3b2ab67b1fd4x︠
%html
<div class="section"><div class="heading">
<div class="number">2</div>
<div class="title">Vector Form of Solutions to Homogeneous Systems</div>
</div></div>
︡20d962bc-211b-498a-aee5-04d410de997b︡︡
︠4e6f872c-1f0e-4d70-968a-9197892c675dx︠
%html
<p>These are the coefficient matrix and vector of constants from yesterday's big system that led to a colored matrix in reduced row-echelon form matrix.</p>
︡75a6b2ac-d1d5-4ef4-8e92-9900a1735915︡︡
︠86844839-3cb7-4920-ab37-703d77c6868ax︠
%html
<p>The <tt class="code">.right_kernel()</tt> method will give the vectors of the vector form of the solutions to a homogeneous system when used with the <tt class="code">basis='pivot'</tt> option.</p>
︡54bfc761-ca17-412f-9fd0-77b8d8087211︡︡
︠d759e85b-a808-4e44-a865-3dd716ecc82b︠
A = matrix(QQ, [[ 1, 2, 12, 1, 13, 5, 2],
[ -2, -3, -21, 0, -13, 2, -5],
[ 1, 3, 15, 4, 28, 25, 0],
[ -2, -3, -21, -1, -15, -6, -3],
[ 1, 1, 9, 1, 4, 9, 1]])
b = vector(QQ, [8, -15, 7, -10, 3])
︡cb80bc06-e8f7-4e9a-b504-619177c27074︡︡
︠d632702b-cf7b-4c11-ae54-8af46a9a787b︠
A.right_kernel(basis='pivot')
︡14ada094-6d50-45ed-9b9f-2f80fb061835︡︡
︠c0fab892-af4c-4e17-866f-ebdc7f0fa165x︠
%html
<p>Rows of the <q>basis matrix</q> are vectors in yesterday's linear combination (with scalars \(x_3\), \(x_5\), \(x_6\)).  This is a spanning set for null space of the matrix \(A\).</p>
︡a47c229d-f9c2-4ccc-9349-ae0e007c8576︡︡
︠a65c696b-062a-4d36-969f-bb76e9552a13x︠
%html
<p>Theorem PSPHS can explain how to use a single solution to the non-homogeneous system and the spanning set of the null space of the coefficient matrix to arrive at all solutions to the system.  Here is a single solution to the system.</p>
︡f3065828-6aad-4187-9e31-b09176cbe9cb︡︡
︠3227f90f-41c4-4a27-b42a-4a9ac2bcc0a3︠
A.solve_right(b)
︡641e1c14-56e3-4d4a-9bb0-9f41fa05408b︡︡
︠e98849f2-340a-4637-8ead-b546b07bc32bx︠
%html
<div class="section"><div class="heading">
<div class="number">3</div>
<div class="title">Spanning Sets</div>
</div></div>
︡7124e769-4c27-4f2c-acfa-240b1f947105︡︡
︠5b0545f0-8fbc-4470-a504-e0eae1781435x︠
%html
<p>Example ABS from FCLA.</p>
︡47b596f1-cd6f-41b9-887c-c2dd9d2e43f9︡︡
︠7d889fd5-d3b8-4d7e-9e62-3e5bc5a26491︠
x1 = vector(QQ,[1,1,3,1])
x2 = vector(QQ,[2,1,2,-1])
x3 = vector(QQ,[7,3,5,-5])
x4 = vector(QQ,[1,1,-1,2])
x5 = vector(QQ,[-1,0,9,0])
W = span([x1,x2,x3,x4,x5])
W
︡1818cee0-80ca-4df6-9f7d-f9fe78fde337︡︡
︠72d27b8a-8772-4219-ae33-738c3c491b9fx︠
%html
<p>Make a <q>random</q> linear combination and test for membership (which will be trivially true).  There are more like this.</p>
︡384ce05a-cea9-4a07-9fb7-4288e3694c2f︡︡
︠9d32e0f4-0e50-4966-be98-624470903e5f︠

︡0f5864c6-d09d-4471-a0d5-f9aaaf177191︡︡
︠f544be3b-15cb-4d6f-90c4-eabb4a1f2098x︠
%html
<p>But not any old vector is in \(W\).</p>
︡9dfc0137-ce55-4bef-b21f-a9a1fb9c1c28︡︡
︠0f7a7b61-6ca2-46e2-a3c7-183bd0045e6e︠
v = vector(QQ, [1, 1, -3, 2])
v in W
︡120a46b1-a74b-4cdc-84b4-aa19641c1458︡︡

