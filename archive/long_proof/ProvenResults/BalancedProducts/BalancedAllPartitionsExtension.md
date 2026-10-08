# Extending the strict-corner balanced identity to every row partition

**Status: proved within the accepted reconstruction framework.** The
[fixed-corner polynomial certificate](BalancedFourSeedIdentity.json) and
[all-corner interval certificate](BalancedAllCornersCertificate.json) now
supply the two computational inputs used below. The
[independent audit](BalancedFourSeedIdentityAudit.md) checks both and the
extension argument. Approximate positivity or interval residuals merely
containing zero would not supply these inputs.

For a raw order-six Hadamard X and a three-element row set S, define

    g_S(X)=sum_(j=0)^5 product_(r in S) X_rj
                         product_(r not in S) conjugate(X_rj).

The aim here is to pass from the already derived identity for the selected upper three rows of a strict matched reconstruction to all 20 row triples. No connectedness or irreducibility assumption is needed.

## 1. Inputs and precise conclusion

Use the current canonical four-seed reconstruction and its accepted side/completion statements. Assume:

1. The fixed-corner algebra proves g_{0,1,2}=0 for **both** matched completions at every strict corner R>0.
2. A seed point is certified to have R>0 and nonzero alpha on both horizontal and vertical side constructors, and **every one of the 20 by 20 positional 3-by-3 corner invariants is strictly positive on both matched sheets**. All required constructor divisors are certified nonzero there.

Then every current strict reconstructed matrix has g_S=0 for every three-element S, including all special points within R>0. The argument also covers the other matched sheet.

Combined with the accepted global class coverage, this proves the balanced identity for every non-Tao order-six Hadamard: the only additional exceptional class in that coverage, F6, satisfies the identity directly (Section 6).

This is a balanced Fourier-coefficient identity. It does not by itself prove an F3 block must occur in a compatible measurement triple.

## 2. The discarded side-square-root sign only permutes columns

This step is essential: it makes every algebraic square-root branch a physical side presentation on the generic strict domain.

Use the side constructor's notation and temporarily exclude alpha=0. The selected sign gives

    rho=(n+dF)/2, q=alpha/rho, sigma=u+mu q,
    |sigma|^2=rho, |u|=1,
    alpha=mu^2-u conjugate(mu), n=1-|mu|^2.

The opposite square-root sign gives

    rho'=(n-dF)/2=n-rho,
    q'=alpha/rho', sigma'=u+mu q'.

The accepted selected-side identities imply

    rho rho'=|alpha|^2, rho'>0, q'=1/conjugate(q).

Indeed, the row norm in 3MM*=G and |sigma|^2=rho give
n=rho(1+|q|^2). Therefore rho'=rho|q|^2.

The following elementary identity proves the cube-root gate transforms correctly. Put

    A=u conjugate(q)+q conjugate(mu)+mu(1+|q|^2).

Multiplying by rho gives

    rho A=u conjugate(alpha)+alpha conjugate(mu)+mu n=0.

Consequently

    sigma' conjugate(q)-q^2 conjugate(sigma)=A-q conjugate(A)=0.

It follows that |sigma'|^2=rho'. Define

    beta=sigma'/(q conjugate(sigma)),       |beta|=1.

Then

    sigma' rho'=q^3 conjugate(sigma) rho,
    beta^3/xi=xi',

where xi=sigma^2/rho and xi'=(sigma')^2/rho'. Thus, if w^3=xi, the valid choice

    w'=beta conjugate(w)

satisfies (w')^3=xi'. Direct substitution in the remaining side coefficients gives

    cplus'=cminus/q,       cminus'=cplus/conjugate(q),
    M'[:,1]=beta M[:,2],   M'[:,2]=conjugate(beta) M[:,1].

Let J exchange Fourier coordinates 1 and 2 and fix coordinate 0. With the side phase gate P(w)=diag(1,conjugate(w),w),

    M' P(w') = M P(w) J.

Since JF3=F3 Q, where Q reflects the column label j -> -j mod 3,

    S'=S Q.

The other cube-root choices only cycle columns. Hence both square-root signs and all three cube roots produce the six column permutations of the same side orbit. For the vertical constructor they give row permutations. In the completed matrix these are lower-three row and last-three column permutations, because the adjugate completion transforms covariantly.

Points with alpha=0 are excluded only for this generic algebraic argument; they are restored by continuity in Section 5. No valid selected-sign strict reconstruction is discarded.

## 3. All algebraic presentations form a finite reduced algebra

Work over K=C(a,b,c,d), with formal phase conjugation sending each seed to its reciprocal. Introduce

    tau^2=-R,

then the horizontal and vertical side square roots, followed by the two cube roots of xi. There are at most

    2 sheets x 2 horizontal square-root signs x 2 vertical signs
             x 3 horizontal cube roots x 3 vertical cube roots =72

presentations, counted with multiplicity when matrices coincide.

Conjugation involves no additional independent root choices:

    conjugate(tau)=-tau,
    conjugate(delta)=g/(27 delta),
    conjugate(w)=1/w.

These are the formal counterparts of the unit-phase side identities. All constructor expressions, and hence g_S, are rational expressions in this finite radical algebra.

After inverting its finitely many denominators and discriminants, the algebra is finite and reduced over K, of rank 72 with the full root-choice presentation. It may split into several fields. No irreducibility claim is needed. The witness with all presentations defined shows that the inverted denominator/discriminant norms are not identically zero.

By Section 2, the auxiliary signs and cube roots only permute the physical side presentations on a generic strict seed neighborhood. Therefore checking the all-corner condition on the two matched sheet matrices suffices; checking all eight sheet/sign combinations is a redundant valid alternative.

## 4. Why one certified open witness proves every branch identity

Strict positivity at the witness persists on an open neighborhood U of the seed torus. All 72 presentations there are physical Hadamards, and all their positional corners are strict. They are not Tao matrices: Tao has an F3 corner, for which R=0, and this property is invariant under monomial equivalence.

Fix a row triple S and any presentation X on U. Move S and a column triple to the leading positions and dephase. Its corner remains strict. The accepted strict completion exhaustion identifies this non-Tao completion with one of the two matched completions, modulo side permutations. The fixed-corner identity from Input 1 therefore applies.

Dephasing does not affect whether g_S vanishes: column phases cancel, column permutations reorder the sum, and row phases multiply it by a single nonzero scalar. Thus g_S(X)=0 on U for every presentation.

Now consider multiplication by the algebraic element g_S on the finite algebra of Section 3. Its characteristic polynomial has coefficients in K. Its roots are exactly the values of g_S on all presentations, counted with multiplicity. On U every root is zero, so the polynomial specializes to

    T^72.

Every nonleading coefficient is a rational function of the four seeds vanishing on an open subset of T^4. It is identically zero: after clearing denominators, restrict successively to a product of four open circle arcs and apply the elementary one-variable polynomial zero theorem in each variable.

Hence the characteristic polynomial is identically T^72 over K. Cayley-Hamilton makes g_S nilpotent; the algebra is reduced, so g_S=0. Equivalently, every algebraic branch vanishes wherever its rational presentation is defined. Repeat this argument for the 20 choices of S.

Using only a product/norm would be insufficient: a vanishing norm proves that at least one branch vanishes. The full characteristic polynomial, or all elementary symmetric functions of the branch values, proves that **every** branch vanishes.

## 5. Exceptional strict seeds and presentation switches

The exceptional locus removed in Section 3 is the zero set of finitely many nonzero rational-function numerators or denominators, so it has empty interior in every open subset of the seed torus. This follows from the same circle-arc polynomial argument, without any connectedness assumption.

At any actual selected-sign strict seed, its own required divisors are nonzero. Choose the square-root and cube-root branches continuously through that point; their radicands are nonzero. On this local presentation, approximate the seed by generic seeds outside the finite exceptional locus. The matrix entries and g_S are continuous, so the identities extend to the limiting seed.

If the canonical sign convention changes at dF=0, follow a locally continuous presentation instead. Section 2 identifies the alternate generic presentation by side permutations; the assertion for all row triples is invariant under those permutations. Limits therefore recover the canonical matrix as well. This also handles alpha=0, where the discarded square-root presentation can have rho'=0 while the selected strict presentation stays regular.

## 6. Passing from the reconstruction to Hadamard equivalence classes

The property g_S=0 for every row triple is invariant under all row/column monomial equivalences. Thus the accepted positive-sheet covering transfers it from the strict construction to every non-F6, non-Tao class.

For F6, index rows by 0,...,5. For any three-element S,

    g_S(F6)=sum_(j=0)^5 exp[2 pi i j(2 sum_(r in S)r-15)/6]=0,

because 2 sum_(r in S)r-15 is odd and therefore not divisible by 6.

The global conclusion therefore requires exactly the audited fixed-corner identity, the certified strict all-corner witness, and the already accepted coverage/exhaustion inputs. It does not require a theorem that each row triple of every matrix directly admits a strict corner, a proof that the strict seed domain is connected, or a global positivity claim for every other corner invariant.
