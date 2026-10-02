# Global completion and imbalance: proofs and exact certificates

## 1. Conventions, quantifiers, and the supplied criterion

All rays in the statements below are normalized; vectors differing by a unit scalar represent the same ray. A raw Hadamard H has unit-modulus entries and HH^dagger=6I. Its normalized unitary is U=H/sqrt(6).

Let V have four orthonormal columns, each flat in I and in U. Put Pi=I-VV^dagger. Then Pi is an orthogonal projector of rank two and

    <a|Pi|a> = 1/3

for every vector a in either reference basis. Choose any isometry C:C^2 -> ran(Pi). For each reference projector P_a, the compression is

    C^dagger P_a C = (I_2+n_a.sigma)/6,   |n_a|=1.

The trace identity gives

    G12[a,b] = n_a.n_b = 18 Tr(P_a Pi P_b Pi)-1.

Thus G12 is a real Gram matrix of unit vectors in R^3. A pair of orthogonal rays in ran(Pi) is specified by an axis r, |r|=1, and its projectors are C(I_2 +/- r.sigma)C^dagger/2. Their probabilities in reference ray a are

    (1 +/- n_a.r)/6.

Therefore they are simultaneously flat in both bases if and only if r is perpendicular to all twelve n_a, equivalently rank(G12)<=2. If a unit anchor w has |V_j^dagger w|^2=1/6 for j=0,...,3, then <w|Pi|w>=1/3, so it supplies another unit Bloch vector n_w. Balance on the missing pair is equivalent to n_w.r=0. A balanced flat completion exists if and only if rank(G13)<=2.

This proves the supplied criterion again without a reconstruction assumption. It requires the four anchor overlaps, but not anchor flatness in I,U; the latter are additional equations in an actual 4+1 configuration. No use below silently substitutes the former for the latter.

## 2. Global exclusion of rank one

### Theorem 1

For every mutually unbiased pair of orthonormal bases I,U in C^6, and every rank-two orthogonal projector Pi whose diagonal is identically 1/3 in each of these bases,

    rank(G12) in {2,3}.

This statement does not require a choice of four flat rays spanning ker(Pi). Such a choice, when present, is sufficient to meet its hypotheses.

### Proof

The diagonal entries of G12 are one, so rank zero is impossible. Suppose rank one. All twelve unit Bloch vectors lie on one line and hence equal n or -n. Choose the complement frame in which that line is the z-axis, and denote its two orthonormal columns by f and g.

For a standard coordinate e_i, the compression is either diag(1/3,0) or diag(0,1/3). Hence exactly one of f_i,g_i is nonzero and its modulus is 1/sqrt(3). Since f and g each have norm one, each has support of size three and their supports partition the six coordinates. The same argument in the U basis shows that U^dagger f and U^dagger g have disjoint supports of size three, with every nonzero entry again of modulus 1/sqrt(3).

Permuting coordinates and multiplying them by phases, and independently relabeling and rephasing the U columns, preserves the mutually unbiased property. These operations arrange, simultaneously,

    f = (1,1,1,0,0,0)^T/sqrt(3) = a,
    g = (0,0,0,1,1,1)^T/sqrt(3) = b,
    U^dagger f = a,   U^dagger g = b.

For completeness, if L sends the original f,g to a,b, choose a column monomial R with R^dagger U^dagger f=a and R^dagger U^dagger g=b; replace U by LUR. The disjoint supports make both choices simultaneous. Thus U^dagger a=a and U^dagger b=b, and unitarity also gives Ua=a and Ub=b.

Write the raw matrix H=sqrt(6)U in 3-by-3 blocks, with B the upper-right block. From Hb=sqrt(6)b and H^dagger a=sqrt(6)a,

    B (1,1,1)^T = 0,
    (1,1,1) B = 0.

All nine entries of B have modulus one.

**Elementary lemma.** Any 3-by-3 unit-modulus matrix with zero row sums and zero column sums has rank one and operator norm 3.

To prove the lemma, let omega=(-1+i sqrt(3))/2. A unit-modulus triple (z_1,z_2,z_3) summing to zero is a phase multiple of either

    v=(1,omega,omega^2),  or  vbar=(1,omega^2,omega).

Indeed divide by z_1, write the second coordinate u, and use |1+u|=1 to get Re(u)=-1/2. There are precisely the two displayed possibilities. No zero entry or exceptional divisor occurs because every entry has modulus one.

Each row of B is accordingly c_i v or c_i vbar with c_i nonzero. The vectors v and vbar are linearly independent (in fact orthogonal). The column-sum condition says that the sum of the coefficients of each orientation vanishes separately. With three nonzero rows, a mixture of orientations would have a group of size one, whose sole nonzero coefficient could not sum to zero. Thus all three rows use the same orientation. B has rank one, and its only nonzero singular value equals its Frobenius norm, which is sqrt(9)=3. This proves the lemma.

On the other hand, B is a submatrix of H. Coordinate restriction and inclusion have operator norm one, so

    ||B|| <= ||H|| = sqrt(6).

This contradicts 3>sqrt(6). Rank one is impossible. Together with the Gram rank bound at most three, this proves the theorem. QED.

### Corollary 1.1: nondegeneracy and uniqueness without an imported theorem

For any four orthonormal common-unbiased rays, either rank(G12)=3 and no flat completion exists, or rank(G12)=2 and a flat completion exists. In the latter case the orthogonal complement of the Bloch plane is one-dimensional, so its unit axes are exactly r and -r. They define one unordered pair of rays; column phases and exchange are the only freedom.

In particular, the rank<=1 branch described in the supplied criterion cannot occur for an actual order-six mutually unbiased carrier. This is not a genericity assertion. The proof covers every such carrier and Pi, including reconstruction-boundary and other singular presentations. Neither anchor equations nor seed restrictions enter it. It proves uniqueness conditional on existence, not existence itself.

## 3. A scalar imbalance identity with a justified denominator

### Theorem 2

Assume the hypotheses for four common-unbiased orthonormal rays and an anchor with the four required overlaps. Assume additionally that a flat completion exists. Let its missing probabilities be 1/6 +/- beta. Then

    e3(G13) = 36 beta^2 e2(G12),
    e2(G12)>0.

Here e_j is the sum of j-by-j principal minors, equivalently the j-th elementary symmetric polynomial of the eigenvalues.

### Proof

By Theorem 1, rank(G12)=2. Place the two-dimensional Bloch span in the first two coordinates and let its frame operator be

    F = sum_(a=0)^11 n_a n_a^T
      = [[A,C,0],[C,D,0],[0,0,0]].

Its two positive eigenvalues equal those of G12. Hence e2(G12)=AD-C^2>0. Writing n_w=(x,y,z), a direct determinant expansion gives

    det(F+n_w n_w^T)=(AD-C^2)z^2.

The nonzero eigenvalues of this 3-by-3 frame operator equal those of G13. Since rank(G13)<=3, its determinant is e3(G13). Finally z=n_w.r=6 beta. This proves the identity, including beta=0. QED.

The positivity of e2 is now established globally on the completion branch; no independent nondegeneracy assumption is being smuggled into division by it. Nevertheless this is an identity, not a new estimate on the numerator. To prove |beta|<=B one still needs e3(G13)<=36 B^2 e2(G12) from further equations.

For a **genuine** 4+1 anchor, after a flat completion the sum of squared deviations from 1/6 over the three full bases I,U,K is

    E(w)=2 beta^2=e3(G13)/(18 e2(G12)).

A separately certified bound E(w)>=gamma in an explicitly overlapping carrier domain would therefore need to be contradicted by e3(G13)<18 gamma e2(G12). No missing external gap certificate is assumed or used here. The one-basis anchor below is not flat in U, so its full three-basis deviation sum must not be replaced by 2 beta^2.

## 4. An exact pure obstruction to one-basis balance forcing

### 4.1 The proposition being refuted

Consider the implication

> I,U are mutually unbiased; V consists of four orthonormal rays flat in both; V admits a flat completion; w is a pure unit vector flat in I and unbiased to the four columns of V. Then some flat completion is balanced for w.

The example below disproves this implication. It does **not** disprove the stronger implication that additionally requires w flat in U.

### 4.2 Exact carrier and completed third basis

Put zeta_6=(1+i sqrt(3))/2, zeta_12=(sqrt(3)+i)/2 and omega=zeta_6^2. Use raw matrices H_(ij)=zeta_6^(h_ij), Kraw_(ij)=zeta_12^(k_ij), with exponent arrays

    h = [[0,0,0,0,0,0],
         [0,3,2,5,1,4],
         [0,5,4,3,1,2],
         [0,2,4,0,4,2],
         [0,3,0,3,3,0],
         [0,0,2,2,4,4]],

    k = [[0,0,0,0,0,0],
         [1,3,5,7,9,11],
         [1,11,9,7,5,3],
         [4,8,0,4,8,0],
         [9,3,9,3,9,3],
         [4,0,8,4,0,8]].

All indices in the certificates are zero-based. Set U=H/sqrt(6), K=Kraw/sqrt(6), V=K[:,0:4], and take the missing pair K[:,4],K[:,5]. Direct exact arithmetic verifies

    HH^dagger=Kraw Kraw^dagger=6I,
    |(H^dagger Kraw)_ij|^2=6 for every i,j.

This establishes every required four-ray flatness and orthogonality condition, as well as flatness of the completion, not just a Gram surrogate.

The upper-left dephased corner of H has seeds

    (a,b,c,d)=(-1,omega,-omega,omega^2).

Computing the current reconstruction invariants from 6I-EE^dagger and from 6I-E^T Ebar gives

    g=3, eta=1, chi=-3, R=27.

For the horizontal side B the side-sheet invariant in the common packet is

    z = -perm(B) det(B)^2 / (g product_(ij) B_ij)
      = omega = (chi+i sqrt(R))/(2g).

The vertical side invariant is its conjugate, and the bottom-right block also satisfies the strict Schur-completion formula. Thus this is a positive-sheet strict a=-1 carrier in the current presentation. No product-regularity guard was substituted. Complex conjugation preserves all probability and Gram assertions, sends the seeds to (-1,omega^2,-omega^2,omega), and sends z to the negative-sheet value at those conjugate seeds. This gives a negative-sheet version of the weakened counterexample; it is not an identification of the two sheets at the original fixed seeds.

The H and K matrices are inherited from the packet's known completed-triple fixture and independently reverified here. The new element is the following **pure anchor flat in one reference basis**, rather than the packet's synthetic anchors with neither reference flatness imposed.

### 4.3 Algebraic anchor coordinates and real branch

Let s be the unique real root in (39298/10000,39299/10000) of

    f(s)=9s^4+60s^3-488s^2-976s+5584.

The endpoints have opposite signs. Direct rational interval evaluation of f' on that entire interval lies between 153 and 154, proving uniqueness by strict monotonicity. Existence follows from the intermediate value theorem. This scalar s is local notation for the anchor parameter, not a reconstruction Gram entry.

Define, with every displayed square root positive,

    r=(6s^2+8s-120)/(3s-14),
    P=sqrt(s+2r),  D=sqrt(s-2r),
    p=(P+D)/2,    q=(P-D)/2,
    X=4-p^2,     Y=4-q^2,
    u=(2-P^2)/(4P),
    v=sqrt(3)(s-2)/(4D),
    kappa=(u+i v)/omega.

The rational interval certificate establishes P,D,X,Y>0, 3s-14<0, and 2<s<4, so every denominator and real branch used here is justified. In particular approximately

    r=-1.8557592183,
    P=0.4672761396, D=2.7643053131,
    p=1.6157907263, q=-1.1485145867,
    X=1.3892203287, Y=2.6809142440.

The exact relations, not these approximations, prove the probability equalities:

    r^2-s^2+12 = 3 f(s)/(3s-14)^2 = 0,
    p^2+q^2=s,  pq=r,
    XY=(s-2)^2, sqrt(XY)=s-2,
    u^2+v^2=1.

For the final equality, after clearing the positive denominator 16(s^2-4r^2), the numerator is

    (2-s-2r)^2(s-2r) + 3(s-2)^2(s+2r) -16(s^2-4r^2).

Modulo r^2=s^2-12 it reduces to

    -8(3rs-14r-6s^2-8s+120)=0,

by the definition of r. Therefore kappa is a phase.

Define the six unit phases

    x_0=1,
    x_1=kappa omega^2(p-i sqrt(X))/2,
    x_2=kappa(q-i sqrt(Y))/2,
    x_3=1,
    x_4=kappa omega^2(p+i sqrt(X))/2,
    x_5=kappa(q+i sqrt(Y))/2.

Let (r_0,...,r_5)=(0,1,5,2,3,4) and set

    w_i = zeta_12^(r_i^2) x_(r_i) / sqrt(6).

These are complete exact coordinates. Because p^2+X=q^2+Y=4 and |kappa|=1, each x_j has modulus one, so w is exactly normalized and flat in I.

### 4.4 Exact four-overlap calculation

Let Fraw_(r,j)=zeta_6^(rj). The supplied Kraw satisfies

    Kraw_(i,j) = zeta_12^(r_i^2) Fraw_(r_i,j).

Consequently

    (K^dagger w)_j = (1/6) sum_(r=0)^5 zeta_6^(-rj) x_r.

Write the numerator as t_j. Pairing x_r with x_(r+3), for even j=2m one obtains

    t_(2m)=2+kappa p omega^(2-m)+kappa q omega^(-2m).

Put z=u+i v=kappa omega. Then

    t_2=2+z(p+q)=2+zP,
    t_0=2+z(p omega+q omega^2).

The definitions yield

    |t_2|^2=4+P^2+4Pu=6,
    |t_0|^2=4+s-r-2Pu-2 sqrt(3)(p-q)v=6.

For odd indices, let A1=x_1-x_4=-i kappa omega^2 sqrt(X) and B1=x_2-x_5=-i kappa sqrt(Y). Then

    t_(2m+1)=A1 zeta_6^(-1) omega^(-m)
              +B1 zeta_6^(-2) omega^(-2m).

The cross product relevant to the squared modulus is

    zeta_6 A1 conjugate(B1)=(s-2) zeta_6^(-1).

For m=0 and m=1 its real part after multiplication by omega^m is (s-2)/2. Since X+Y=8-s, this gives

    |t_1|^2=|t_3|^2=(8-s)+(s-2)=6.

Parseval applied separately to the even and odd three-point transforms now gives

    sum_(m=0)^2 |t_(2m)|^2=3(4+p^2+q^2)=12+3s,
    sum_(m=0)^2 |t_(2m+1)|^2=3(X+Y)=24-3s.

Hence |t_4|^2=3s and |t_5|^2=12-3s. Dividing all intensities by 36 proves

    |K_j^dagger w|^2=1/6 for j=0,1,2,3,
    |K_4^dagger w|^2=s/12,
    |K_5^dagger w|^2=(4-s)/12.

Thus beta=(s-2)/12. The isolating interval lies strictly above 98/25, so beta>4/25. Since s<4, beta<1/6. All of these are exact inequalities.

### 4.5 Basis-independent rank witness and failure of U-flatness

The verifier regenerates G12 from the original projectors, not from a chosen completion axis. It verifies

    G12^2=6G12, Tr(G12)=12,
    G12[0,1]=1/2, det G12[{0,1}]=3/4.

Thus rank(G12)=2, its positive eigenvalues are 6,6, and e2(G12)=36. The complete exact G12 array is in `data/fixture.json`.

Both first two reference Bloch vectors lie in the completion plane. Appending n_w gives

    det G13[{0,1,12}]
       = det G12[{0,1}] (n_w.r)^2
       = (3/4)(6 beta)^2
       = 3(s-2)^2/16 > 0.

This minor is also independently recomputed using the original-coordinate quantities Pi w and 18|a^dagger Pi w|^2-1 in the exact quotient algebra. Summing all 66 anchor-containing three-by-three principal minors gives

    e3(G13)=9(s-2)^2.

The first 220 minors, not containing the anchor, vanish because rank(G12)=2. Therefore rank(G13)=3. The criterion rules out every balanced flat completion, not just balance of a selected pair. Theorem 1 separately shows that the existing flat pair is the only one up to phases and exchange.

Crucially, direct evaluation of all six U measurement probabilities gives, approximately,

    (0.079230809109,
     0.055454207902,
     0.029478372421,
     0.117764707711,
     0.642195660546,
     0.075876242311).

The rigorous exclusion uses outward rational intervals, not these decimal approximations:

    79/1000 < |U_0^dagger w|^2 < 2/25 < 1/6.

All six exact algebraic probability arrays are included, and all six are regenerated. Interval calculations independently evaluate the explicit positive-radical coordinates and certify the displayed strict inequality. Thus this example is definitely **not a genuine 4+1 configuration**. It refutes only the proposition stated in Section 4.1. Swapping the two reference roles likewise shows that one cannot omit either reference-basis flatness condition merely by relabeling it.

## 5. A full linear-measurement obstruction when purity is dropped

### Theorem 3

For every mutually unbiased triple of full bases I,U,K, retain four columns of K and denote its two missing rank-one projectors by R_+,R_-. For every real b with |b|<=1/6, the operator

    rho_b=I_6/6+b(R_+-R_-)

is a density matrix satisfying all twelve I,U flatness probabilities and all four retained-column probabilities, with missing probabilities 1/6 +/- b.

### Proof

In the K basis its eigenvalues are

    1/6,1/6,1/6,1/6,1/6+b,1/6-b.

Thus rho_b is positive semidefinite exactly on the stated interval and has trace one. For any I or U basis projector P, flatness of the completion gives

    Tr(P R_+)=Tr(P R_-)=1/6.

Therefore Tr(P rho_b)=1/6. A retained K column is orthogonal to both missing ones, so its probability is also 1/6. Directly on the missing projectors, the probabilities are 1/6 +/- b. QED.

This is a counterexample family to balance forcing by **the specified relaxed ansatz** consisting of positivity, trace one, and all sixteen linear measurement constraints. It is not merely a single incomplete numerical point: every imbalance in the physically allowed probability interval occurs. It therefore also rules out a nontrivial uniform imbalance bound derived only from those relaxed hypotheses, on any carrier class containing a completed triple such as the strict a=-1 example above.

It does not refute a proof using pure-anchor polynomial consequences. Indeed

    Tr(rho_b^2)=1/6+2b^2 <=2/9<1,

so no member is pure; its rank is six in the interior and five at either endpoint. In particular its compressed anchor is generally not a pure qubit. One must not insert rho_b into the thirteen-unit-vector criterion and treat it as an actual ray. The obstruction is exactly to the relaxation that discards this rank-one/purity information.

## 6. Verification, independence, and scope

`verify.py` uses exact SymPy arithmetic for the cyclotomic H,K matrices and original-projector G12. It independently evaluates the anchor equations in a finite rational quotient algebra implemented in `exact_field.py`:

    Q[s]/(f(s)),
    P^2=s+2r, D^2=s-2r,
    A^2=(8-s-PD)/2, T^2=3, i^2=-1.

Here A represents the positive sqrt(X), T the positive sqrt(3), and the positive sqrt(Y) is represented by A*Y/(s-2). The identities XY=(s-2)^2 and s>2 establish that this is the required branch. Divisions are only by explicitly invertible base-field elements. A symbolic equality in this quotient algebra holds at the specified real embedding; nonzero formal expressions alone are not used to establish nonvanishing at that embedding.

`intervals.py` supplies rational endpoint arithmetic, exact bisection in the root-isolating interval, and square-root bounds using integer square roots. These checks prove all radical/denominator signs, beta bounds, the positive Gram minor, and actual nonflatness in U. No floating-point tolerance appears in acceptance. The raw H,K identities, every four-ray orthogonality condition, all anchor overlaps, and the seed/sheet invariants are checked in the original physical coordinates.

The global rank-one exclusion is an analytic proof, not a finite computer search. The verifier checks its elementary root-of-unity identities and norm constants; its universal scope follows from Section 2's argument.

Historical source packets and exploratory searches are in the recovery archive.
All data needed by this proof and its exact verifier are retained here.
The global theorem and the counterexamples use the physical hypotheses
stated above and do not depend on external reconstruction coverage.

## 7. What has not been proved

The actual full 4+1 equations have not been shown to force rank(G12)<=2. Even on a completion branch, they have not been shown to force rank(G13)=2 or a useful nontrivial upper bound on |beta|. No genuine 4+1 configuration and no four-ray noncompletion example is claimed. The surviving full problem is now cleanly divided between a rank-three no-completion branch and a rank-two unique-completion branch whose anchor may a priori be out of plane.
