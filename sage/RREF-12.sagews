︠9c88fbe1-ac2b-4b07-9a4d-1de436fb50afi︠
load('mathbook.css')

︡916f0198-dfab-42b6-b326-fb7c7391c083︡︡
︠b759cd25-09b5-495f-a4ab-691ddb179b34i︠
%html
<div>\(\)</div>
︡e9bc096b-e4ef-46b5-a9e1-d86f8ea5057c︡{"html":"<div>\\(\\)</div>"}︡
︠b667d3ce-ea58-4d1b-aece-7f9b52fe4669i︠
%html
<style></style><div class="headerblock">
<div class="title">Demo: Section RREF</div>
<div class="authorgroup">
<div class="author-name">Robert Beezer</div>
<div class="author-department"></div>
<div class="author-institution"></div>
<div class="author-email"><a href="mailto:"></a></div>
</div>
<div class="date">Math 290, Fall 2013</div>
</div>






︡234a4338-e335-441f-8fcd-70bbdee464a3︡{"html":"<style></style><div class=\"headerblock\">\n<div class=\"title\">Demo: Section RREF</div>\n<div class=\"authorgroup\">\n<div class=\"author-name\">Robert Beezer</div>\n<div class=\"author-department\"></div>\n<div class=\"author-institution\"></div>\n<div class=\"author-email\"><a href=\"mailto:\"></a></div>\n</div>\n<div class=\"date\">Math 290, Fall 2013</div>\n</div>"}︡
︠50cce5e4-2514-4937-a09a-c8da34bb2301i︠
%html
<p>To specify a matrix, first specify that your entries are rational numbers, <tt class="code">QQ</tt> in Sage.  This is very important, though difficult to explan why.  Then the number of rows and columns.  Follow this with a list of rows for the matrix.  We use square brackets, <tt class="code">[, ]</tt> to organize lists.  To actually see <tt class="code">A</tt> we just write it as the last line.</p>



︡64a82e56-b0f2-4d1f-9c09-143ed9a6e364︡{"html":"<p>To specify a matrix, first specify that your entries are rational numbers, <tt class=\"code\">QQ</tt> in Sage.  This is very important, though difficult to explan why.  Then the number of rows and columns.  Follow this with a list of rows for the matrix.  We use square brackets, <tt class=\"code\">[, ]</tt> to organize lists.  To actually see <tt class=\"code\">A</tt> we just write it as the last line.</p>"}︡
︠80800e48-5287-4199-acfd-9d8d8bfd1eab︠
A = matrix(QQ, 3, 4, [[-1, 1, 1, 1], [2, -1, -2, -3], [-2, 2, 1, -1]])
A











︡19ea0fcc-7e7e-4324-8f53-c601e3e75b73︡{"stdout":"[-1  1  1  1]\n[ 2 -1 -2 -3]\n[-2  2  1 -1]\n"}︡
︠07ae3e1b-69ea-4b63-89f8-8f411f9adbb6i︠
%html
<p>Then use the <tt class="code">.rref()</tt> method to compute the reduced row-echelon form.</p>



︡9fa56e3c-38a6-4a42-b063-a62f326a8660︡{"html":"<p>Then use the <tt class=\"code\">.rref()</tt> method to compute the reduced row-echelon form.</p>"}︡
︠84684571-14bc-45cf-9749-ed76c8438c28︠
A.rref()
︡44ce96d7-0819-4da0-8683-34781cdb8959︡{"stdout":"[ 1  0  0  1]\n[ 0  1  0 -1]\n[ 0  0  1  3]\n"}︡
︠0ac28913-c4c3-4f22-89e8-d342cf36e8d8︠


︡69608768-2fe6-4e9d-ade7-a1b430e4457d︡︡



︠eae754c0-1a99-4754-afbd-ba7fceb6fb38i︠
%html
<p>Here is a larger example.</p>



︡fafd6fe6-92e8-4d09-9422-34026c1040a9︡{"html":"<p>Here is a larger example.</p>"}︡
︠ab4495d9-52e9-43b1-a64b-2955b956bab1︠
B = matrix(QQ,
    [[0, 0, -1, 3, 3, -1, 2, -1],
    [1, -5, 0, -4, 5, -2, 4, 4],
    [-1, 5, -1, 7, -2, 2, -5, -7],
    [-1, 5, 1, 1, -8, 3, -6, -3]])
B




︡864953fa-094f-4b3b-9752-3ff287ab0766︡{"stdout":"[ 0  0 -1  3  3 -1  2 -1]\n[ 1 -5  0 -4  5 -2  4  4]\n[-1  5 -1  7 -2  2 -5 -7]\n[-1  5  1  1 -8  3 -6 -3]\n"}︡
︠93928d7b-61f6-41d0-a3b3-9a30d8e055d6︠
B.rref()

︡ea3246e6-a67e-4147-834d-4906c2bb5856︡{"stdout":"[ 1 -5  0 -4  5  0 -2  0]\n[ 0  0  1 -3 -3  0  1  3]\n[ 0  0  0  0  0  1 -3 -2]\n[ 0  0  0  0  0  0  0  0]\n"}︡
︠a6e682c6-a661-45e5-beb4-d769136f24dc︠
B[2,4]
︡649ea052-d6b4-41c0-a104-a0f42fb45974︡{"stdout":"-2\n"}︡
︠72dbb87f-2342-4976-b2dc-ff3d44e0cf4e︠
C=B.rref()
C
︡c419cf84-31c3-4953-8ba0-d4a4817d9afa︡{"stdout":"[ 1 -5  0 -4  5  0 -2  0]\n[ 0  0  1 -3 -3  0  1  3]\n[ 0  0  0  0  0  1 -3 -2]\n[ 0  0  0  0  0  0  0  0]\n"}︡
︠fec122eb-72a7-4476-b875-cb2b7e9e801b︠
B.rref()[2,4]
︡59df5c28-c7f5-435d-85c3-8205af14c40e︡{"stdout":"0\n"}︡
︠f68c9831-34f6-47e3-a90f-1c8e22ba62e7︠









