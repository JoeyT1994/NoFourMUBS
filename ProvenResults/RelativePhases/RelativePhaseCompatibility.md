# Exact relative-phase compatibility and a sharp cubic bound

**Proved reduction.** Relative row phases are equivalent to a zero-diagonal Hermitian matrix in an explicit linear kernel satisfying a quadratic matrix equation. Equivalently, compatibility is saturation of the sharp cubic inequality below. All kernel ranks are retained; finiteness of the solution set is not asserted.

## 1. Carriers and the corner determinant bound

Use the current PDF reconstruction, without changing its coordinates:

    H=H_+(a,b,c,d),       K0=P H_+(a',b',c',d'),
    K=diag(d_0,...,d_5) K0,       d_0=1.

Both seed tuples obey their own R>0 guard and P is a finite row permutation. Separate column monomials are irrelevant. The explicit F6 and Tao carriers can be adjoined where required; the lemmas below apply to them too.

For any positional 3-by-3 corner E of a Hadamard, G=6I-EE* is positive semidefinite with diagonal (3,3,3). Hadamard's determinant inequality gives

    g=det(G)<=27,

with equality if and only if G=3I, equivalently EE*=3I. Thus an F3 corner is exactly a corner attaining the maximal squared minor determinant 27. At such a corner, the reconstruction invariants are

    g=27, eta=9, chi=-162, R=0.

Thus an F3 corner lies on the R=0 boundary in that frame. The same Hadamard can have other strict corners; a boundary block does not invalidate the accepted class covering.

## 2. Exact linear-kernel and quadratic recovery lemma

For fixed H and K0 define 36 phase vectors

    v^(ij)_r=H_ri conjugate((K0)_rj).

Let V be the 30-dimensional real space of zero-diagonal Hermitian 6-by-6 matrices. Define a real-linear map on V by

    A_(H,K0)(W)_ij = (v^(ij))* W v^(ij).

Each row sum and column sum of A(W) is zero. Indeed, summing the rank-one matrices v^(ij)(v^(ij))* over either i or j gives 6I. Therefore

    rank(A)<=25,       dim_R ker(A)>=5.

These coefficients are explicit functions of the eight reconstruction seeds and the finite permutation. No relative phases occur in the linear map.

**Lemma.** Compatible relative phases d with d_0=1 are in bijection with matrices

    W in ker(A),        W^2-4W-5I=0.

The maps in the two directions are

    W=dd*-I,       d=(I+W)e_0.

**Proof.** Expanding M=H* diag(d) K0 gives

    |M_ij|^2 = 6 + A(dd*-I)_ij.

Hence mutual flatness is exactly the kernel condition. The matrix W=dd*-I has zero diagonal and satisfies W^2=4W+5I because d*d=6.

Conversely, a Hermitian zero-diagonal W satisfying that quadratic has eigenvalues in {5,-1}. Trace(W)=0 forces multiplicity one for 5 and five for -1. Thus I+W is positive semidefinite of rank one, with diagonal entries all one. It equals dd* for a phase vector d, uniquely after d_0=1; its first column gives d=(I+W)e_0. This proves both physicality and the stated recovery formula. No additional positivity test, torus filter or genericity assumption is required.

A basis of ker(A) gives W=sum_l t_l W_l with real t_l and only quadratic recovery equations. If rank(A)=25 this uses five real kernel coordinates. If the rank drops, keep the whole larger kernel; discarding it would lose exceptional configurations. The dimension of this *linear kernel* does not assert that the compatible solution set has that dimension or that it is finite.

## 3. Equivalent sharp cubic criterion

Every Hermitian trace-zero 6-by-6 matrix with Tr(W^2)=30 obeys

    Tr(W^3)<=120,

and equality holds exactly for spectrum (5,-1,-1,-1,-1,-1).

For completeness, maximize the cubic over the compact sphere of real eigenvalues with sum zero and squared sum 30. At a critical point the eigenvalues solve one common quadratic, so there are at most two distinct values. If the positive value has multiplicity k and the negative value has multiplicity 6-k, they are

    sqrt(5(6-k)/k),       -sqrt(5k/(6-k)).

The cubic sum is 30 sqrt(5)(6-2k)/sqrt(k(6-k)); its maximum over k=1,...,5 is 120, attained only at k=1. This proves the bound and the equality classification.

Combining this with the kernel lemma gives the exact scalar criterion

    H and diag(d)K0 are compatible for some d

if and only if

    max {Tr(W^3): W in ker(A), Tr(W^2)=30}=120.

The kernel sphere is nonempty and compact because dim ker(A)>=5. At any maximizer attaining 120, the phase vector is recovered by d=(I+W)e_0. Thus this is an exact sharp-inequality problem in a kernel determined entirely by the two reconstructed carrier shapes. It is not an approximation or an assumed finiteness statement.

## 4. Measured kernel sizes and reproducible checks

The [verifier](RelativePhaseCompatibility.py) and [receipt](RelativePhaseCompatibility.json) separate exact checks from numerical diagnostics.

- The saved exact Q1 complete triple has rank(A)=9 and kernel dimension 21, computed with exact SymPy arithmetic. Thus a five-dimensional kernel cannot be assumed on the compatible locus.
- Three pairs of fixed generic strict reconstructed carriers have numerical rank 25 and kernel dimension 5. Their smallest retained singular values are approximately 0.6603, 0.2637 and 0.1169, with the next singular values approximately 3e-15. This is diagnostic evidence at those shapes, not a proof of generic rank or of their compatibility.
- The product Fourier triple checks the kernel equations, W^2-4W-5I=0, Tr(W^2)=30, Tr(W^3)=120, and recovery of d exactly. A noncompatible phase vector checks that the quadratic spectral identity alone does not imply compatibility.

The four seed-angle tuples and every numerical singular value are recorded in the receipt. At rank 25 the cubic problem is indeed a sphere S^4 after choosing an orthonormal kernel basis. The exact compatible Q1 example instead gives S^20. This kernel rank is different from the rank-five phase Jacobian previously checked at that same triple.
