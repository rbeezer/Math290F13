︠f2370076-164c-41d1-bbdb-14f3c41a0fe4i︠
load('mathbook.css')

︡9a3b269d-2c41-4cc7-8471-a3fdaff7dc6b︡︡
︠badce3fc-16c2-4a00-9a81-719226002a95x︠
%html
<div>\(\)</div>
︡200107e0-8971-456c-b14f-ea5559834c23︡︡
︠b73f0204-7bed-4a13-916b-a3aa95af43b8x︠
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
︡249f6920-98aa-4be6-9044-a75cf1e602a8︡︡
︠123d303b-7a21-4372-8339-81509da1e7bax︠
%html
<p>First, a nonsingular \(5\times 5\) matrix, created at random.</p>
︡6d700bdd-9a2f-48d3-b2af-c9088c5fee02︡︡
︠0ac0a039-4a80-4630-b2eb-2bcfbc32a0c2︠
A = random_matrix(QQ, 5, algorithm="unimodular", upper_bound=20)
A
        
︡91a94883-77a3-475e-b82c-d2621b9930e5︡︡
︠7721441e-d253-4304-bad4-e40b4325d551x︠
%html
<p>Augment with the zero vector and row-reduce (Definition NM), or don't augment (Theorem NMRRI).</p>
︡40a0be7f-7955-4630-8842-d736ff3a3c51︡︡
︠00ae74ac-2e2a-44ad-9ab4-bbf8c52c0b95x︠
%html
<p>Build some random vectors, augment and row-reduce.  Always a unique solution to the linear system represented by the augmented matrix.</p>
︡0da826cd-3c39-4cd2-986a-de6eb1aa3423︡︡
︠6aae6337-0549-47fb-b3c2-04db64af03f5x︠
%html
<p>Cheap, easy and powerful:</p>
︡83a5f812-8ca1-4af8-b9f4-4509976c4a60︡︡
︠a3f15f8a-3c08-4249-acea-8498ae569a6a︠
A.is_singular()
        
︡669951b5-91e0-43a8-801a-78865fec1ad7︡︡
︠722c3ae4-6165-4d53-93f9-87a53811b568x︠
%html
<p>Now, a carefully crafted singular matrix.</p>
︡cdb030a0-6569-4e48-a912-a31122c7dcbf︡︡
︠c213574f-adc6-459a-8745-ab8bc906c2d3︠
B = matrix(QQ,
    [[7,-1,-12,21,-8],
    [-3,3,0,-9,6],
    [3,3,-12,9,0],
    [2,3,-10,6,1],
    [-2,2,0,-6,4]])
B
        
︡2c7473cf-5a9b-41ef-8c07-8284872e7975︡︡
︠6aa6a327-609e-4d67-bbaf-c5897aa7b168x︠
%html
<p>Augment with the zero vector and row-reduce (Definition NM), or don't augment (Theorem NMRRI).</p>
︡420da941-4852-4f56-91bd-8b0bc496d92d︡︡
︠b333dce1-842c-4446-8aa7-f79b9c2f6e76x︠
%html
<p>Cheap, easy and powerful:</p>
︡0a7f3e1f-8c50-49bd-8e5e-53f7a3233faf︡︡
︠e9c46474-966e-46fe-8f9c-ebdd770bc393︠
B.is_singular()
        
︡2a1a182b-936b-4db1-b33c-2936615875d5︡︡
︠ef9344de-83e9-44ee-b628-6e150f6fc156x︠
%html
<p>Two carefully crafted vectors for linear systems with <tt class="code">B</tt> as coefficient matrix.</p>
︡20dbd01b-37f8-45a4-8109-7af5c52496c5︡︡
︠cfd37b96-e8b7-428a-a171-5f56ffb43bca︠
c = vector(QQ, [17,-15,-3,-5,-10])
d = vector(QQ, [-3,1,-2,1,2])
        
︡1b24c565-4663-4794-9235-13145fa59dc0︡︡
︠eb8b1e78-3740-43a8-8d43-7a6e153ca63cx︠
%html
<p>Which column vectors will create consistent systems? (Stay tuned.)</p>
︡92312c4d-fc22-4763-a4fd-b669862bd556︡︡
︠ddec1f21-c9be-4142-b61e-95cc4bbc2ccex︠
%html
<p>A null space is called a <q>right kernel</q> in Sage.</p>
︡380360fd-4ad6-4a74-b6dd-c5f224c0d687︡︡
︠29c1e43d-e3fa-4f23-8e88-bfd603dd672b︠
NS = B.right_kernel()
NS.list()           
       
︡5a6c6955-022d-426b-b78b-af821f212d14︡︡

