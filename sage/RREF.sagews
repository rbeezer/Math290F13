︠9c88fbe1-ac2b-4b07-9a4d-1de436fb50afi︠
load('mathbook.css')

︡916f0198-dfab-42b6-b326-fb7c7391c083︡︡
︠b759cd25-09b5-495f-a4ab-691ddb179b34x︠
%html
<div>\(\)</div>
︡2373c749-078d-455b-b8cc-d98f3b93e5fd︡︡
︠b667d3ce-ea58-4d1b-aece-7f9b52fe4669x︠
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
︡9bcf258e-8d3e-4c8c-bedc-c52ee290a6b9︡︡



    

   ︠50cce5e4-2514-4937-a09a-c8da34bb2301x︠
%html
<p>To specify a matrix, first specify that your entries are rational numbers, <tt class="code">QQ</tt> in Sage.  This is very important, though difficult to explan why.  Then the number of rows and columns.  Follow this with a list of rows for the matrix.  We use square brackets, <tt class="code">[, ]</tt> to organize lists.  To actually see <tt class="code">A</tt> we just write it as the last line.</p>
︡3c95b08a-b479-4965-a582-bdbc40734773︡︡

   
   ︠80800e48-5287-4199-acfd-9d8d8bfd1eab︠
A = matrix(QQ, 3, 4, [[-1, 1, 1, 1], [2, -1, -2, -3], [-2, 2, 1, -1]])
A           
       
︡50639f85-9fd7-4c1f-98dd-34742a2c12df︡︡

   
   ︠07ae3e1b-69ea-4b63-89f8-8f411f9adbb6x︠
%html
<p>Then use the <tt class="code">.rref()</tt> method to compute the reduced row-echelon form.</p>
︡9cba7739-63c7-40ce-acfc-65c48fa2ac45︡︡

   
   ︠0ac28913-c4c3-4f22-89e8-d342cf36e8d8︠

       
︡69608768-2fe6-4e9d-ade7-a1b430e4457d︡︡

   
   ︠eae754c0-1a99-4754-afbd-ba7fceb6fb38x︠
%html
<p>Here is a larger example.</p>
︡8ef707ea-9bc3-4685-8f58-0ee19b128727︡︡

   
   ︠ab4495d9-52e9-43b1-a64b-2955b956bab1︠
B = matrix(QQ, 
    [[0, 0, -1, 3, 3, -1, 2, -1], 
    [1, -5, 0, -4, 5, -2, 4, 4], 
    [-1, 5, -1, 7, -2, 2, -5, -7], 
    [-1, 5, 1, 1, -8, 3, -6, -3]])
B    
       
︡31d956e4-4df5-488e-99d6-29a13c79a544︡︡


   ︠93928d7b-61f6-41d0-a3b3-9a30d8e055d6︠

       
︡6a729fec-7669-4470-8935-a3fa10aa32fa︡︡

   
   

