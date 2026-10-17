# The exceptional product triple has no common unbiased ray

**Status: PROVED.** This is an elementary reproof of a known product-MUB
obstruction, not a new global classification theorem. It applies to the
exceptional product orbit from `LOCAL_ISOLATION.md`. It does not use the
Fourier-family exclusion E, the atlas, or the isolation theorem.

The obstruction is stronger than failure to extend to a fourth basis:
**there is no single unit vector unbiased to every vector of these three
product bases.**

For prior literature see D. McNulty and S. Weigert, *On the impossibility
to extend triples of mutually unbiased product bases in dimension six*,
International Journal of Quantum Information **10**, 1250056 (2012),
[arXiv:1203.6887](https://arxiv.org/abs/1203.6887),
[doi:10.1142/S0219749912500566](https://doi.org/10.1142/S0219749912500566).
The aligned-product argument is also given in
[Sun, arXiv:2610.12180v1, §8, Lemma 8.1](https://arxiv.org/html/2610.12180v1#S8).
The proof below is self-contained, including the small-dimensional
completeness argument it requires.

## 1. General product obstruction

Let \(A_0,A_1,A_2\) be three mutually unbiased orthonormal bases of
\(\mathbb C^2\), and let \(B_0,B_1,B_2,B_3\) be four mutually unbiased
orthonormal bases of \(\mathbb C^3\). Consider the three paired product
bases

\[
\mathcal P_n=A_n\otimes B_n,\qquad n=0,1,2.
\tag{1}
\]

**Theorem.** No unit vector in \(\mathbb C^2\otimes\mathbb C^3\) is
unbiased to all three bases (1).

### Step 1: the qubit marginal is maximally mixed

Suppose such a unit vector \(\psi\) exists, and write its two reduced
density matrices as \(\rho_2,\rho_3\). Summing its six probabilities
\(1/6\) in each product basis over the three qutrit outcomes gives

\[
\langle a_{n,s},\rho_2a_{n,s}\rangle=\frac12
\quad(n=0,1,2;\ s=0,1).
\tag{2}
\]

For any orthonormal basis \(A_n\), the two centered rank-one projectors
\(P_{n,s}-I_2/2\) span a one-dimensional real subspace of traceless
Hermitian matrices. Subspaces from mutually unbiased bases are
orthogonal for the trace inner product. The three mutually orthogonal
one-dimensional spaces exhaust the three-dimensional traceless
Hermitian space. Equation (2) therefore forces

\[
\rho_2=I_2/2.
\tag{3}
\]

The Schmidt eigenvalues of \(\rho_3\) are consequently
\(1/2,1/2,0\). For a uniquely determined ray \(w\in\mathbb C^3\),

\[
\rho_3=\frac12(I_3-|w\rangle\langle w|).
\tag{4}
\]

### Step 2: the missing qutrit ray belongs to the fourth basis

Summing probabilities over the two qubit outcomes gives
\(\langle b_{n,k},\rho_3b_{n,k}\rangle=1/3\) for \(n=0,1,2\).
By (4),

\[
|\langle b_{n,k},w\rangle|^2=\frac13
\quad(n=0,1,2;\ k=0,1,2).
\tag{5}
\]

For each qutrit basis \(B_n\), its centered projectors
\(Q_{n,k}-I_3/3\) span a two-dimensional traceless Hermitian subspace.
The four such subspaces are pairwise orthogonal and their dimensions
sum to eight, so they exhaust the traceless Hermitian space in dimension
three. By (5), \(|w\rangle\langle w|-I_3/3\) belongs to the subspace
from \(B_3\). Thus \(|w\rangle\langle w|\) is diagonal in \(B_3\).
A positive rank-one diagonal matrix is one of that basis's rank-one
projectors. Hence \(w\) is a ray of \(B_3\).

Let \(u,v\) be the other two unit basis vectors of \(B_3\). Expanding
\(\psi\) in this qutrit basis and using (4) yields orthonormal qubit
vectors \(a,b\) such that

\[
\psi=\frac1{\sqrt2}(a\otimes u+b\otimes v).
\tag{6}
\]

### Step 3: unbiasedness forces contradictory qubit Schmidt bases

Fix any \(n\in\{0,1,2\}\) and any unit basis vector \(a_{n,s}\in A_n\).
Set

\[
\alpha=\langle a_{n,s},a\rangle,
\quad\beta=\langle a_{n,s},b\rangle,
\quad c_k=\langle b_{n,k},u\rangle,
\quad d_k=\langle b_{n,k},v\rangle.
\]

Since \(a,b\) are orthonormal,
\(|\alpha|^2+|\beta|^2=1\). Since \(B_n\) and \(B_3\) are mutually
unbiased, \(|c_k|=|d_k|=1/\sqrt3\). Equation (6) gives

\[
|\langle a_{n,s}\otimes b_{n,k},\psi\rangle|^2
=\frac16+\operatorname{Re}(\alpha\overline\beta\,c_k\overline d_k).
\tag{7}
\]

All these probabilities equal \(1/6\). Consequently
\(\operatorname{Re}(\alpha\overline\beta\,\zeta_k)=0\) for the three
unit complex numbers \(\zeta_k=3c_k\overline d_k\).

Orthogonality of \(u,v\) implies \(\sum_k\zeta_k=0\). These three
unit numbers span \(\mathbb C\) as a real vector space: if they lay on
one real line, each would equal either \(\zeta\) or \(-\zeta\), and an
odd number of such terms could not sum to zero. Thus (7) forces

\[
\alpha\overline\beta=0.
\tag{8}
\]

In dimension two, (8) says that \(a_{n,s}\) is one of the two rays
\(a,b\). Thus the unordered basis \(A_n\) is exactly \(\{a,b\}\).
Applying this conclusion for \(n=0\) and \(n=1\) says that two mutually
unbiased qubit bases have identical rays, a contradiction. This proves
the theorem. ∎

## 2. Application to the exceptional triple

Using the notation of `LOCAL_ISOLATION.md`, take

\[
A_0=I_2,\quad A_1=F_2/\sqrt2,
\quad A_2=\operatorname{diag}(1,i)F_2/\sqrt2,
\]

\[
B_0=I_3,\quad B_1=F_3/\sqrt3,
\quad B_2=D_3F_3/\sqrt3,
\quad B_3=D_3^2F_3/\sqrt3,
\quad D_3=\operatorname{diag}(1,\omega,\omega).
\tag{9}
\]

The three qubit bases and four qutrit bases are mutually unbiased.
`verify_isolated.py:check_local_factor_mubs` checks their flatness,
orthogonality and all nontrivial cross-modulus identities exactly in
\(\mathbb Q(i,\sqrt3)\). The coordinate-basis overlaps follow immediately
from the flat entries.

The product bases \(A_0\otimes B_0,A_1\otimes B_1,A_2\otimes B_2\)
are precisely \(I,H_0/\sqrt6,K_0/\sqrt6\). The theorem therefore excludes
even a single common unbiased ray for the exceptional product triple.
Allowed unitary and ray equivalences preserve this property, so the
entire exceptional orbit is strongly unextendible.

**Scope.** This is an algebraic exclusion at the isolated product class.
It does not replace the two-parameter Fourier-edge exclusion E on all
Fourier matrices, or solve A, C, F or F′.
