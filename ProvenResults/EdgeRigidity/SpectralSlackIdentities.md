# Spectral slack and Cauchy-Binet coupling of 3-by-3 minors

**Statement.** For a dephased 3-by-3 corner E of a phase Hadamard, G=6I-EE*=BB* (B the complementary block) and det G=|det B|^2 has the explicit four-seed formula; for T=H*K/sqrt(6), det T[I,J]=(1/(6 sqrt 6)) sum_S conj(det H[S,I]) det K[S,J]; and sum_J |det T[I,J]|^2=216 for every fixed three-row set I.

**Status.** Exact polynomial identities (unconditional). The positivity statement "slack>0 on every quartet edge" is the corollary in [QuartetEdgeCorollary.md](QuartetEdgeCorollary.md).

**Dependencies.** None for the identities. Strict positivity on quartet edges: [QuartetEdgeCorollary.md](QuartetEdgeCorollary.md).

**Provenance.** `NoFourMUBSArchive/90_replay_library/05_remaining_D2/spectral_forcing/SPECTRAL_IDENTITIES.md`, `verify_identities.py` (Cauchy-Binet and symbolic slack parts; its comparisons with the archive product-reconstruction compiler and dimension-three quartet control used archive-only modules and are omitted; an exact averaging control on F6, Tao and a Q(i,sqrt 33) carrier was added).

*Imported text.* The body below is the archive proof, copied without mathematical change. Only links, file names and replay instructions were edited. In archive wording, "owner" means "a result that settles this case", and "accepted" refers to the inputs listed under Dependencies above.

---

# Exact spectral slack and quartet coupling

## Seed polynomial and structure at equality

**Theorem:** for a physical Hadamard corner E, put G=6I-EE*. With the
horizontal reconstruction trace data s,t,r (for the dephased corner
E=[[1,1,1],[1,a,b],[1,c,d]] these are s=-(1+a+b), t=-(1+c+d), r=-(1+c/a+d/b)),

```
G = [3 s# t#; s 3 r#; t r 3],
Delta_E = 27-3(s*s#+t*t#+r*r#)+s*r*t#+s#*r#*t.
```

The block equations give G=BB* and hence Delta_E=|det B|^2>=0. A singular
G implies a singular complementary 3-by-3 block B, which forces a Karlsson
carrier by the classification's singular-corner lemma (in fact the Fourier family
or its transpose: [SingularCornerNormalForm.md](SingularCornerNormalForm.md)). The selected
product-regular frame has det B!=0, so its slack is strictly positive.
To prove only a Karlsson reduction it suffices to force equality at any
corner of any of the six relative carriers; that corner need not be guarded.
Converses are not asserted: a Karlsson carrier need not be detected by an
arbitrarily chosen corner.

## Coupling the minors, with exact normalization

**Theorem:** for T=H*K/sqrt(6) and three-element index sets I,J,

```
det T[I,J] = (1/(6 sqrt(6))) *
  sum_{S subset {0,...,5}, |S|=3} conjugate(det H[S,I])*det K[S,J].
```

Expand the determinant by multilinearity. Terms with a repeated intermediate
index cancel by antisymmetry. Grouping the remaining terms by the unordered
three-element set S gives the formula. This is Cauchy-Binet; the verifier
checks the full formal coefficient cancellation for 3-by-6 times 6-by-3
matrices, not merely a numerical sample. Squared magnitudes therefore carry
the factor 1/216. The same identities couple H,L and K,L. (In the archive, the
product reconstruction was substituted for H, including its forced D block.)

Thus an off-diagonal relative-corner slack is a squared modulus of an exact
20-term mixed-minor sum. The quartet equations additionally require all
entries of these relative matrices to have unit modulus. These mixed sums
are concrete algebraic objects on which to seek the forcing identity.
No cancellation of a particular sum has yet been proved.

## Why plain averaging is insufficient

**Theorem:** for any order-six Hadamard T and any fixed three-row set I,

```
sum_{|J|=3} |det T[I,J]|^2 = det(6I_3)=216.
```

Taking complementary three-column blocks gives the same sum for the 20
corner slacks. Their sum over all 400 positional corners is 4320 and their
mean is 54/5. This holds for a single Hadamard, without a third or fourth
basis. In particular the average is not zero. The relaxed requirements
Delta_F>=0 and these sums admit the strictly positive constant assignment
Delta_F=54/5; this is NOT asserted to come from an actual Hadamard or quartet.
It demonstrates only that those averaging constraints cannot force a zero.

**Open:** obtain a genuinely quartet-dependent cancellation or positivity
identity, using the mixed-minor relations AND entrywise mutual unbiasedness,
that forces a corner slack to vanish. The identities above do not establish
that implication, literal D2 emptiness, chamber coverage, or nonexistence
of four MUBs.
