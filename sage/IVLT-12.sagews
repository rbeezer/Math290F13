︠c7381671-948f-4b23-9160-5b86e7f4676fi︠
load('mathbook.css')

︡bf1c666c-080a-4405-926d-55e798ba1178︡{"once":false,"file":{"show":false,"uuid":"db0fa80f-8a2d-4b83-910b-3cc8127f55fc","filename":"mathbook.css"}}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"$.get(\"/blobs/mathbook.css?uuid=db0fa80f-8a2d-4b83-910b-3cc8127f55fc\", function(css) { $('<style type=text/css></style>').html(css).appendTo(\"body\")});"},"once":false}︡
︠b61c43b7-c170-4c08-9748-31416013a9e8i︠
%html
<div>\(\)</div>
︡2bf9116a-dcfa-45bd-9bdd-9b17fcbae997︡{"html":"<div>\\(\\)</div>"}︡
︠75508a89-5c94-45db-a034-a062aee07bfbi︠
%html
<style></style><div class="headerblock">
<div class="title">Demo: Section IVLT</div>
<div class="authorgroup"><div class="author-info">
<div class="author-name">Robert Beezer</div>
<div class="author-department"></div>
<div class="author-institution"></div>
<div class="author-email"></div>
</div></div>
<div class="date">Math 290, Fall 2013<br>November 15, 2013</div>
</div>
︡8f251488-a2fe-4e40-b213-d9d44c18e1a4︡{"html":"<style></style><div class=\"headerblock\">\n<div class=\"title\">Demo: Section IVLT</div>\n<div class=\"authorgroup\"><div class=\"author-info\">\n<div class=\"author-name\">Robert Beezer</div>\n<div class=\"author-department\"></div>\n<div class=\"author-institution\"></div>\n<div class=\"author-email\"></div>\n</div></div>\n<div class=\"date\">Math 290, Fall 2013<br>November 15, 2013</div>\n</div>"}︡
︠651e593f-fbf1-4953-a8a5-1f25bbcc72efi︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">Invertible Linear Transformations</div>
</div></div>
︡225cdcd9-43d4-4126-b690-23a7300b8321︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">1</div>\n<div class=\"title\">Invertible Linear Transformations</div>\n</div></div>"}︡
︠c5c682ce-894a-4bc2-aa97-ddb10d2ce42ei︠
%html
<p>A carefully-crafted invertible linear transformation from \(\mathbb{Q}^5\) to \(\mathbb{Q}^5\).</p>
︡2d9f1a21-03d2-4bd2-9324-f5068d987f6f︡{"html":"<p>A carefully-crafted invertible linear transformation from \\(\\mathbb{Q}^5\\) to \\(\\mathbb{Q}^5\\).</p>"}︡
︠e86b92e4-a403-4c4a-bd4a-5ebcaf5657e6︠
A = matrix(QQ, [[1, 1, -1, -2, 0], [-3, -2, 1, 4, 7],
    [2, 2, -1, -3, -4], [-4, -3, 3, 8, 3], [5, 6, -7, -8, 8]])
T = linear_transformation(QQ^5, QQ^5, A, side='right')
T

︡1c98ad66-34e5-4447-b718-b6eee729a745︡{"stdout":"Vector space morphism represented by the matrix:\n[ 1 -3  2 -4  5]\n[ 1 -2  2 -3  6]\n[-1  1 -1  3 -7]\n[-2  4 -3  8 -8]\n[ 0  7 -4  3  8]\nDomain: Vector space of dimension 5 over Rational Field\nCodomain: Vector space of dimension 5 over Rational Field\n"}︡
︠0521364b-7063-42c8-b985-295cafeb7a12︠
T.is_injective(), T.is_surjective()

︡75f8c66f-8527-42b9-9856-c54e7f6e6015︡{"stdout":"(True, True)\n"}︡
︠3fc4687f-f255-419d-a533-25469c609763︠
T.is_invertible()

︡9ed1050e-389a-4ed9-88f1-0513d278f0d8︡{"stdout":"True\n"}︡
︠75335660-683a-4fe2-b33f-286fe9c2494e︠
S = T.inverse()
S

︡102d48eb-47a8-42e5-9794-4c979fb4905c︡{"stdout":"Vector space morphism represented by the matrix:\n[-57 -21 -85   3 -20]\n[  7   4  13  -1   3]\n[ 10   6  18  -1   4]\n[-11  -4 -17   1  -4]\n[  3   1   4   0   1]\nDomain: Vector space of dimension 5 over Rational Field\nCodomain: Vector space of dimension 5 over Rational Field\n"}︡
︠9bb9f181-bac0-4d5f-aac6-52ac5399c72fi︠
%html
<p>The <tt class="code">*</tt> operator, like we would use for multiplication, will create a composition.  This will perfectly natural once we discuss Section MR.  Here, composing an invertible linear transformation with its inverse will yield an identity linear transformation.</p>
︡acbdbae3-e1f7-4102-b141-07a78f4dcc05︡{"html":"<p>The <tt class=\"code\">*</tt> operator, like we would use for multiplication, will create a composition.  This will perfectly natural once we discuss Section MR.  Here, composing an invertible linear transformation with its inverse will yield an identity linear transformation.</p>"}︡
︠3fc20c71-494d-4109-8b44-deae6dfb75bf︠
comp = S*T
comp

︡11c868f4-a89f-45d6-adfe-be1fdd0fcd08︡{"stdout":"Vector space morphism represented by the matrix:\n[1 0 0 0 0]\n[0 1 0 0 0]\n[0 0 1 0 0]\n[0 0 0 1 0]\n[0 0 0 0 1]\nDomain: Vector space of dimension 5 over Rational Field\nCodomain: Vector space of dimension 5 over Rational Field\n"}︡
︠75f079a2-deb2-47c8-86b4-2b27f2dfc972︠
comp.is_identity()

︡58082aa0-9cfd-40eb-8f2f-bd063817bb7c︡{"stdout":"True\n"}︡
︠9a090554-ea94-425a-9368-a4ebefd616fai︠
%html
<div class="section"><div class="heading">
<div class="number">2</div>
<div class="title">Defining an Invertible Linear Transformation on Bases</div>
</div></div>
︡0c81232d-9dff-4d4c-9d1e-19ba0d417571︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">2</div>\n<div class=\"title\">Defining an Invertible Linear Transformation on Bases</div>\n</div></div>"}︡
︠ee9d2d78-922f-4470-96f1-91c8f009900di︠
%html
<p>Now, an invertible linear transformation defined on a basis, and the resulting inverse linear transformation.  We get two <q>random</q> bases of \(\mathbb{Q}^7\) from nonsingular (determinant one) matrices.</p>
︡b0d745ce-d440-4110-a3b3-29ebf67fd52a︡{"html":"<p>Now, an invertible linear transformation defined on a basis, and the resulting inverse linear transformation.  We get two <q>random</q> bases of \\(\\mathbb{Q}^7\\) from nonsingular (determinant one) matrices.</p>"}︡
︠32bff727-a055-4e55-a1a4-c7b408581e1a︠
C = random_matrix(QQ, 7, 7, algorithm='unimodular', upper_bound=99)
Cbasis = C.columns()
D = random_matrix(QQ, 7, 7, algorithm='unimodular', upper_bound=99)
Dbasis = D.columns()

︡a999587e-243f-42c9-806f-bbbf88b4a938︡
︠9475f6f4-57b9-4dcd-815e-c1d169c3b9edi︠
%html
<p>Vector spaces with defined user bases.</p>
︡356ec67d-d77a-406c-86e0-82f5ffc316dc︡{"html":"<p>Vector spaces with defined user bases.</p>"}︡
︠47eb9aff-853c-49ab-9173-e41fbe9f0584︠
Cspace = (QQ^7).subspace_with_basis(Cbasis)
Dspace = (QQ^7).subspace_with_basis(Dbasis)
Cspace, Dspace

︡75bf100d-55fa-452f-8d1d-b9fe8107922b︡{"stdout":"(Vector space of degree 7 and dimension 7 over Rational Field\nUser basis matrix:\n[  4   3   2  -3  -3   2  -3]\n[-13 -11 -10   9   7  -9  12]\n[ 20  17  15 -14  -9  18 -19]\n[ 62  55  52 -42 -31  54 -65]\n[ 97  78  63 -70 -49  73 -78]\n[  9  32  63   7  -7  36 -76]\n[ 17   4 -13 -18  -7   9  13], Vector space of degree 7 and dimension 7 over Rational Field\nUser basis matrix:\n[  0   0  -2  -1   1   1   0]\n[  4   1   3  -3   1  -6  -5]\n[  3   1   4  -3   1  -5  -3]\n[ -4  -1  -6   2   1   8   6]\n[  5   1  11  -1  -4 -13  -8]\n[ -5  -3  14  14 -19 -10  -7]\n[  0   5 -76 -34  66  68  45])\n"}︡
︠513a3029-d682-45a5-b4d1-f6c7e77d2ee9i︠
%html
<p>The invertible linear transformation defined with images as the vectors in the codomain basis <tt class="code">D</tt>.</p>
︡70ee5935-7040-4f6b-abfa-d53166347972︡{"html":"<p>The invertible linear transformation defined with images as the vectors in the codomain basis <tt class=\"code\">D</tt>.</p>"}︡
︠42d7d37e-9ab6-49b5-88b2-f2d7efb4b741︠
T = linear_transformation(Cspace, QQ^7, Dbasis)
T

︡8d9549b7-3098-4dbf-a409-7f9806aa4361︡{"stdout":"Vector space morphism represented by the matrix:\n[  0   0  -2  -1   1   1   0]\n[  4   1   3  -3   1  -6  -5]\n[  3   1   4  -3   1  -5  -3]\n[ -4  -1  -6   2   1   8   6]\n[  5   1  11  -1  -4 -13  -8]\n[ -5  -3  14  14 -19 -10  -7]\n[  0   5 -76 -34  66  68  45]\nDomain: Vector space of degree 7 and dimension 7 over Rational Field\nUser basis matrix:\n[  4   3   2  -3  -3   2  -3]\n[-13 -11 -10   9   7  -9  12]\n[ 20  17  15 -14  -9  18 -19]\n[ 62  55  52 -42 -31  54 -65]\n[ 97  78  63 -70 -49  73 -78]\n[  9  32  63   7  -7  36 -76]\n[ 17   4 -13 -18  -7   9  13]\nCodomain: Vector space of dimension 7 over Rational Field\n"}︡
︠44b2b206-8788-4db1-a586-2b3326eb2ef3︠
T.is_invertible()

︡bdef61fd-27aa-442e-a794-0113a546e520︡{"stdout":"True\n"}︡
︠811a2fc6-4d1d-4d38-a2cd-1e12588bf58bi︠
%html
<p>Now we simply <q>turn around</q> the definition, to make the inverse.</p>
︡bc957905-0d4a-4f00-a000-a5d6735c4a32︡{"html":"<p>Now we simply <q>turn around</q> the definition, to make the inverse.</p>"}︡
︠9ecb4b11-1075-40d4-b413-b672556bd18d︠
S = linear_transformation(Dspace, QQ^7, Cbasis)
S

︡b39526d5-9613-4850-8402-29b169b299e2︡{"stdout":"Vector space morphism represented by the matrix:\n[  4   3   2  -3  -3   2  -3]\n[-13 -11 -10   9   7  -9  12]\n[ 20  17  15 -14  -9  18 -19]\n[ 62  55  52 -42 -31  54 -65]\n[ 97  78  63 -70 -49  73 -78]\n[  9  32  63   7  -7  36 -76]\n[ 17   4 -13 -18  -7   9  13]\nDomain: Vector space of degree 7 and dimension 7 over Rational Field\nUser basis matrix:\n[  0   0  -2  -1   1   1   0]\n[  4   1   3  -3   1  -6  -5]\n[  3   1   4  -3   1  -5  -3]\n[ -4  -1  -6   2   1   8   6]\n[  5   1  11  -1  -4 -13  -8]\n[ -5  -3  14  14 -19 -10  -7]\n[  0   5 -76 -34  66  68  45]\nCodomain: Vector space of dimension 7 over Rational Field\n"}︡
︠6a4460d3-e840-414c-8ab6-57ab7ba65715︠
S.is_invertible()

︡ae2b698d-eb20-4b0f-8089-b7a4df6fd3b7︡{"stdout":"True\n"}︡
︠29df9eb4-57bf-4f89-a58e-8d96f21ef80ci︠
%html
<p>Composition with vector spaces using different bases does not seem to be working properly.  So we just check some random inputs to the composition.</p>
︡c1dfd09a-6a80-446f-963c-e839b3128cb4︡{"html":"<p>Composition with vector spaces using different bases does not seem to be working properly.  So we just check some random inputs to the composition.</p>"}︡
︠797a52c8-3b7a-4bec-8a5b-f7f50a282313︠
comp = S*T
comp.is_identity()

︡c0e40aad-32de-436c-8518-5194d758b0ae︡{"stdout":"False\n"}︡
︠725ed002-3efe-4f67-9b0a-55898702b5d0︠
v = random_vector(QQ, 7)
v, T(S(v)) == v, S(T(v)) == v

︡ea2eb10c-cd8b-464c-8254-24e4833aac84︡{"stdout":"((0, 3, 1/6, 158, -14, 1, -5), True, True)\n"}︡
︠dd4c51c3-cb99-4d31-b475-c5c6529a8791i︠
%html
<div class="section"><div class="heading">
<div class="number">3</div>
<div class="title">Rank and Nullity</div>
</div></div>
︡183ffa83-b3df-4487-906a-5bb4981d5d3b︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">3</div>\n<div class=\"title\">Rank and Nullity</div>\n</div></div>"}︡
︠65900f94-b177-4ba4-9712-a0367eab8e55i︠
%html
<p>A general (i.e.  not invertible) linear transformation from \(\mathbb{Q}^6\) to \(\mathbb{Q}^5\).</p>
︡0a4a0a74-66cb-44cb-bfc5-b114e16670da︡{"html":"<p>A general (i.e.  not invertible) linear transformation from \\(\\mathbb{Q}^6\\) to \\(\\mathbb{Q}^5\\).</p>"}︡
︠fbd01011-a839-41de-a552-8b6f9203c9f9︠
F = matrix(QQ, [[1, 0, 2, -1, -4, 2], [-1, -1, -4, 3, 6, -5], [0, 1, 3, -2, -4, 5],
    [0, 4, 6, -8, -4, 8], [0, 1, 2, -2, -2, 3]])
R = linear_transformation(QQ^6, QQ^5, F, side='right')
R

︡86bb9df1-b471-4ee8-942e-c73d54875529︡{"stdout":"Vector space morphism represented by the matrix:\n[ 1 -1  0  0  0]\n[ 0 -1  1  4  1]\n[ 2 -4  3  6  2]\n[-1  3 -2 -8 -2]\n[-4  6 -4 -4 -2]\n[ 2 -5  5  8  3]\nDomain: Vector space of dimension 6 over Rational Field\nCodomain: Vector space of dimension 5 over Rational Field\n"}︡
︠ab306fd5-68e4-429f-a140-d326b0c730cdi︠
%html
<p>Rank is dimension of range (image).  Note there are not left/right variants.</p>
︡ba8b7d90-6f8b-473e-99b5-32d08e04ba9c︡{"html":"<p>Rank is dimension of range (image).  Note there are not left/right variants.</p>"}︡
︠f485f742-1db9-4768-a677-9ffef06f61dc︠
R.image()

︡912c06bb-c982-4886-b456-0e57801b4bcd︡{"stdout":"Vector space of degree 5 and dimension 3 over Rational Field\nBasis matrix:\n[ 1  0  0 -6 -1]\n[ 0  1  0 -6 -1]\n[ 0  0  1 -2  0]\n"}︡
︠29d8b348-ceeb-4e41-8fe7-7f1802a8f995︠
R.rank()

︡99622c9c-f048-476a-bc82-434fc3091338︡{"stdout":"3\n"}︡
︠0a5d184c-3249-49a6-86d5-8ef176ef298ei︠
%html
<p>Nullity is dimension of kernel.  Note there are not left/right variants.</p>
︡06593edb-6e9c-4db8-9271-44793a60eef3︡{"html":"<p>Nullity is dimension of kernel.  Note there are not left/right variants.</p>"}︡
︠4db4fe08-ae50-41a7-9850-70453c4de1f5︠
R.kernel()

︡9bf8de3d-b340-4667-b2f8-bdd686ee90e0︡{"stdout":"Vector space of degree 6 and dimension 3 over Rational Field\nBasis matrix:\n[   1    0    0  1/5  2/5  2/5]\n[   0    1    0  2/5 -1/5 -1/5]\n[   0    0    1  2/5 3/10 -1/5]\n"}︡
︠c0bc063a-503b-400b-bb0e-48b261c14fd1︠
R.nullity()

︡243544c0-5858-4414-9d12-5f90278beb88︡{"stdout":"3\n"}︡
︠d6ca0c2d-e565-43c8-bbd8-1991daa9cd1ci︠
%html
<p>Note that rank and nullity sum to the dimension of the domain (which is \(6\) here).</p>
︡29ffd426-e833-4dd3-8863-a64292c037e3︡{"html":"<p>Note that rank and nullity sum to the dimension of the domain (which is \\(6\\) here).</p>"}︡
︠3e1f228a-dd06-4a82-926e-9d56d23ab326︠









