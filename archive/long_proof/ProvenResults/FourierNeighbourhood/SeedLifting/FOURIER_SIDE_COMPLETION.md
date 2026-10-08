# The strict Fourier side fixes its entire carrier

**Theorem (unconditional).** Suppose the first three rows of a physical
raw order-six Hadamard are

    [1, 1, 1,   1, 1, 1],
    [1, ω, ω²,  1, ω, ω²],
    [1, z, w,  −1,−z,−w],

with |z|=|w|=1 and R(E₂(z,w))>0. Then its remaining three rows, up to
individual phases and permutation, are uniquely determined. The whole
matrix is exactly the Fourier-family matrix

    N(z,w)=[[F₃,F₃],[F₃ diag(1,z,w),−F₃ diag(1,z,w)]],

with the displayed rows in order (0,1,3).

Thus the B_F endpoint of DirectLift has **known family parameters z,w**;
one need not invoke general classification or test every family member
having the same corner. This identifies the reference needed to use
parameter-dependent tube radii. It does not classify completions of a
seed before its horizontal side has been forced to B_F.

## Proof

Write a possible fourth flat row in three column pairs as

    (m_j+d_j, m_j−d_j), j=0,1,2,

where the pair positions are j,j+3. Orthogonality to the first two rows
forces `m_j=t ω^(2j)` for one complex scalar t. Flatness gives

    |t|²+|d_j|²=1,    Re(t ω^(2j) conj(d_j))=0.

If 0<|t|<1, these equations imply

    d_j=i(t/|t|) sqrt(1−|t|²) s_j ω^(2j),  s_j∈{−1,+1}.

Orthogonality to the third row, with e=(1,z,w), then requires
`Σ s_j ω^(2j) conj(e_j)=0`. Divide by s₀. Three unit complex numbers
summing to zero, the first equal to one, have the other two equal to
ω,ω² in either order. Therefore, for signs ε,η∈{−1,+1},

    (z,w)=(εω,ηω²)  or  (ε,η).

Every one of these eight pairs has

    (z²−w)(w²−z)(zw−1)=0.

The exact surface formula
`R=9|z²−w|²|w²−z|²|zw−1|²` contradicts strictness. This excludes
all intermediate values of |t|, without assuming a generic z or w.

If |t|=1, then d_j=0 and the row is a phase multiple of

    (1,ω²,ω, 1,ω²,ω).

If t=0, then |d_j|=1 and `Σ d_j conj(e_j)=0`. The same equilateral
argument gives precisely the two row directions

    (e_j ω^j,−e_j ω^j),   (e_j ω^(2j),−e_j ω^(2j)).

These three directions are mutually orthogonal and are the three
missing rows of N(z,w). Every remaining flat row belongs to one of
them; pairwise orthogonality forces each direction to be used once.
This proves the assertion.

The exact replay in [verify.py](verify.py) checks the eight exceptional
phase pairs and all Gram identities for the reconstructed N(z,w).
The continuous row-mean argument above supplies the exhaustive scope.

## Scope at R=0

The intermediate-|t| argument can fail when R=0. The theorem does not
assert uniqueness there or a quantitative bound on nearby rows. A
uniform R=0 lifting estimate remains a separate target.
