︠9c88fbe1-ac2b-4b07-9a4d-1de436fb50afi︠
load('mathbook.css')

︡916f0198-dfab-42b6-b326-fb7c7391c083︡︡
︠b759cd25-09b5-495f-a4ab-691ddb179b34i︠
%html
<div>\(\)</div>
︡f2d919cd-96e2-4b17-a994-c7b5e56e818e︡{"html":"<div>\\(\\)</div>"}︡
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






︡0af48872-a6fd-46b5-912f-0e6dc8cc4ffc︡{"html":"<style></style><div class=\"headerblock\">\n<div class=\"title\">Demo: Section RREF</div>\n<div class=\"authorgroup\">\n<div class=\"author-name\">Robert Beezer</div>\n<div class=\"author-department\"></div>\n<div class=\"author-institution\"></div>\n<div class=\"author-email\"><a href=\"mailto:\"></a></div>\n</div>\n<div class=\"date\">Math 290, Fall 2013</div>\n</div>"}︡
︠50cce5e4-2514-4937-a09a-c8da34bb2301i︠
%html
<p>To specify a matrix, first specify that your entries are rational numbers, <tt class="code">QQ</tt> in Sage.  This is very important, though difficult to explan why.  Then the number of rows and columns.  Follow this with a list of rows for the matrix.  We use square brackets, <tt class="code">[, ]</tt> to organize lists.  To actually see <tt class="code">A</tt> we just write it as the last line.</p>



︡961232a1-9009-4a49-9937-cdd557363045︡{"html":"<p>To specify a matrix, first specify that your entries are rational numbers, <tt class=\"code\">QQ</tt> in Sage.  This is very important, though difficult to explan why.  Then the number of rows and columns.  Follow this with a list of rows for the matrix.  We use square brackets, <tt class=\"code\">[, ]</tt> to organize lists.  To actually see <tt class=\"code\">A</tt> we just write it as the last line.</p>"}︡
︠80800e48-5287-4199-acfd-9d8d8bfd1eab︠
A = matrix(QQ, 3, 4, [[-1, 1, 1, 1], [2, -1, -2, -3], [-2, 2, 1, -1]])
A




︡8f8e866d-5ff2-4012-9968-1d4bce52f0f3︡{"stdout":"[-1  1  1  1]\n[ 2 -1 -2 -3]\n[-2  2  1 -1]\n"}︡
︠07ae3e1b-69ea-4b63-89f8-8f411f9adbb6i︠
%html
<p>Then use the <tt class="code">.rref()</tt> method to compute the reduced row-echelon form.</p>



︡2b73bba8-0655-4216-aff2-67019c84047f︡{"html":"<p>Then use the <tt class=\"code\">.rref()</tt> method to compute the reduced row-echelon form.</p>"}︡
︠2afc8026-fc27-483c-988f-d7f3310d8e95︠
A.rref()
︡5b518098-d8ee-47bf-a092-049b4e2de1a2︡{"stdout":"[ 1  0  0  1]\n[ 0  1  0 -1]\n[ 0  0  1  3]\n"}︡
︠0ac28913-c4c3-4f22-89e8-d342cf36e8d8︠


︡69608768-2fe6-4e9d-ade7-a1b430e4457d︡︡



︠eae754c0-1a99-4754-afbd-ba7fceb6fb38i︠
%html
<p>Here is a larger example.</p>



︡94b70994-b7a7-4af9-b77a-9a0817904bd2︡{"html":"<p>Here is a larger example.</p>"}︡
︠ab4495d9-52e9-43b1-a64b-2955b956bab1︠
B = matrix(QQ,
    [[0, 0, -1, 3, 3, -1, 2, -1],
    [1, -5, 0, -4, 5, -2, 4, 4],
    [-1, 5, -1, 7, -2, 2, -5, -7],
    [-1, 5, 1, 1, -8, 3, -6, -3]])
B




︡cee8a7a3-04a9-4163-85a4-d919a5530f7a︡{"stdout":"[ 0  0 -1  3  3 -1  2 -1]\n[ 1 -5  0 -4  5 -2  4  4]\n[-1  5 -1  7 -2  2 -5 -7]\n[-1  5  1  1 -8  3 -6 -3]\n"}︡
︠93928d7b-61f6-41d0-a3b3-9a30d8e055d6︠
B.rref()

︡b3c3b646-0500-4264-aa62-3d76c1cd1bb3︡{"stdout":"[ 1 -5  0 -4  5  0 -2  0]\n[ 0  0  1 -3 -3  0  1  3]\n[ 0  0  0  0  0  1 -3 -2]\n[ 0  0  0  0  0  0  0  0]\n"}︡
︠c681e1de-5d15-47e9-b512-e8791e402e9a︠
B[2,4]
︡304ea17a-6633-4996-8830-d296eaeddbd8︡{"stdout":"-2\n"}︡
︠e755d8c5-438f-41b0-bce2-1f6b2912b884︠
C = B.rref()
︡9f16a3b0-a683-4906-9787-1698fa40edce︡
︠66cf6e80-72ad-41d5-8399-f4addf101181︠
C[2,4]
︡ec5df2ff-ab80-4f70-be24-b254383c9339︡{"stdout":"0\n"}︡
︠f21fe8f8-9f8d-44ee-8e69-abd9c635b96c︠









