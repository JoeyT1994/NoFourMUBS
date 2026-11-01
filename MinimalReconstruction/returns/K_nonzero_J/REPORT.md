# Nonzero-J critical strips from two signed moment sums

**Return K · 17 October 2026 · input snapshot `368fbe04`**

## Result and status

**PROVED / CERTIFIED: target N1, and consequently N2.** The nonzero-J part of the critical-strip classification has a much smaller proof. It uses two sums of the **unsquared** corner signature, nine elementary moments, and four one-parameter substitutions. It does not use the twenty-corner square sum, the quartic `Q(k,K)`, its Bernstein/Sturm classification, or the former four-variable splitting-algebra certificate.

The new structural statement is:

> **Pole forcing.** In an all-critical orthogonal phase strip, every corner with nonzero J has at least one vanishing lambda denominator among its two complementary halves.

An explicit product of these six denominators then gives exactly

\[
 (k,K)\in\left\{
 \left(\frac13,\frac{729}{125}\right),\quad
 (1,5),\quad
 \left(\kappa,\frac{16\kappa^2}{(1+\kappa^2)^4}\right)
 \right\},
\]

where \(k=2|J|/(9-p)^2>0\) and \(\kappa\) is the unique positive root of
\(3k^3+k^2+k-1=0\).

**PROVED** labels the paper deductions below, using the upstream identities explicitly permitted in the brief. **CERTIFIED** labels finite algebra checked exactly by the returned verifier. **NOT ESTABLISHED here:** a compiled replacement Lean theorem or a successful run of `lean/check_axioms.py --full`. The supplied archive contains neither that script nor `NoFourMUBs/Identity` nor the complete Lean project, and this environment has no Lean installation. The return provides explicit integer polynomial circuits and the exact source calculations for integration; it does not represent Python replay as Lean kernel replay.

No numerical sampling, numerical root finding, interpolation, limiting argument, or floating-point acceptance criterion is used.

## 1. Setting and permitted inputs — PROVED UPSTREAM

Normalize the three rows of the strip to \((1;x;y)\), with six unit entries in each row and mutually orthogonal rows. For a three-column half set

\[
 s=\sum x_j,\qquad t=\sum y_j,\qquad r=\sum\bar x_jy_j,
\]
\[
 X=|s|^2,\quad Y=|t|^2,\quad Z=|r|^2,\quad
 p=X+Y+Z,\quad J=sr\bar t+\bar s\bar r t,
\]
\[
 K=XYZ,\qquad W=XY+XZ+YZ-XYZ.
\]

The complementary half has Gram correlations \((-s,-t,-r)\). Exchange halves if necessary so that \(J>0\). The permitted complementary-critical reduction gives

\[
 h=1+k^2,\qquad p=9-\frac4h,\qquad
 J=\frac{8k}{h^2},\qquad
 W=\frac{2(16-32h+18h^2)}{h^3},\qquad k>0.
\tag{1}
\]

In particular \(X,Y,Z>0\): the nonzero product \(sr\bar t\) has real part \(J/2\). Write

\[
 g_\pm=3(9-p)\pm J,\qquad z_\pm=-\frac{2(1\pm k)}h,
\]
\[
 L_{0,\pm}=g_\pm+(9-Z)z_\pm,\quad
 L_{1,\pm}=g_\pm+(9-Y)z_\pm,\quad
 L_{2,\pm}=g_\pm+(9-X)z_\pm.
\tag{2}
\]

These are real. On each actual invertible critical half, the permitted side identities give \(L_j\lambda_j=P_j\), including at \(L_j=0\). We use this cleared identity in §3. Division by an \(L_j\) occurs only in §5, under the explicit assumption that all six are nonzero.

For a corner \(E_C\), define

\[
 \Psi(E_C)=\frac{\operatorname{perm}(E_C)\det(E_C)^2}
 {\prod_{a,b}(E_C)_{ab}},\qquad
 D_C=\Psi(E_C)-\overline{\Psi(E_C)}.
\]

The given identity \(R=4(\operatorname{Im}\Psi)^2\) implies \(D_C=0\) for every all-critical corner. No constructor at a ramified point is assumed. The nonzero-J proof does not need the additional exclusion of geometric-progression rows.

## 2. Two small moment identities — CERTIFIED

Use whole-strip moments

\[
 M_{ab}=\sum_{j=1}^6x_j^a y_j^b,\qquad
 a=M_{11},\quad b=M_{2,-1},\quad c=M_{-1,2}.
\]

The six moments with indices \((\pm1,0),(0,\pm1),(1,-1),(-1,1)\) vanish by orthogonality. The exact signed-corner expansion gives

\[
 \boxed{\sum_{|C|=3}D_C=\bar a\,bc-a\,\bar b\bar c.}
\tag{3}
\]

The same expansion, weighted by the selected columns' \(xy\) coordinates, gives

\[
 \boxed{
 \begin{aligned}
 \mathcal T&:=\sum_{|C|=3}\left(\sum_{j\in C}x_jy_j\right)D_C\\
 &=6bc+\bar a cM_{30}+\bar a bM_{03}
 -\bar b\bar cM_{22}-a(b\bar b+c\bar c).
 \end{aligned}}
\tag{4}
\]

Both left sides vanish on an all-critical strip. The weights in (4) may be complex; zero follows term by term, so no positivity assertion about the weights is needed.

For completeness, the corner Laurent polynomial has only 48 terms. On summing over ordered triples and dividing by six, it gives an eight-term moment polynomial. Six terms contain at least two orthogonality moments, leaving (3). To obtain (4), attach variable column weights and differentiate in the direction \(x_jy_j\). Differentiation shifts a moment index by \((1,1)\); every discarded term still contains an orthogonality factor. This yields precisely the six displayed terms. The verifier also regenerates (4) independently by direct exponent shifts, without the differentiation argument. Repeated column indices contribute zero because the corner determinant vanishes.

## 3. A boundary restriction that also holds at poles — PROVED / CERTIFIED

Set

\[
 \begin{aligned}
 A&=rs^2+\bar r\,t^2-k(X+Y)st,\\
 B&=\bar t\,s^2+\bar r^{\,2}t-k(X+Z)s\bar r,\\
 C&=\bar s\,t^2+r^2s-k(Y+Z)tr,
 \end{aligned}
\qquad
 c_k=\frac{16k(3k^2+1)}{h^3}.
\]

The cleared lambda identities on the two halves imply

\[
 L_{0,+}L_{0,-}a=c_kA,\quad
 L_{1,+}L_{1,-}b=c_kB,\quad
 L_{2,+}L_{2,-}c=c_kC.
\tag{5}
\]

For example, on one half \(M_{11}=st-z\lambda_0\); multiply by its \(L_0\), add the complementary-half expression after clearing the other \(L_0\), and use (1). The verifier checks one polynomial identity covering all three cases. No \(L_j\) is canceled.

The following identity is universal in the independent formal Gram variables; it does not require criticality:

\[
 \boxed{
 \bar A BC-A\bar B\bar C
 =(1+k^2p)(sr\bar t-\bar s\bar r t)
 (X-Y)(Y-Z)(Z-X).}
\tag{6}
\]

It has 24 nonzero monomials after expansion. Multiply (3) by
\(\prod_{j,\pm}L_{j,\pm}\), use (5), and apply (6). Since \(k>0\) and \(1+k^2p>0\), all-criticality forces

\[
 \boxed{(sr\bar t-\bar s\bar r t)(X-Y)(Y-Z)(Z-X)=0.}
\tag{7}
\]

This includes the pole strata. Equivalently, the complete cleared identity is

\[
 h^{10}\left(\prod_{j,\pm}L_{j,\pm}\right)\sum_CD_C
 =4096k^3(3k^2+1)^5
 (sr\bar t-\bar s\bar r t)(X-Y)(Y-Z)(Z-X).
\]

Thus either two of \(X,Y,Z\) agree, or \(sr\bar t\) is real and

\[
 K=|sr\bar t|^2=J^2/4=K_{\min}:=16k^2/h^4.
\tag{8}
\]

## 4. Only four curves remain — PROVED / CERTIFIED

If two moduli agree, permute the three rows to write \(X=Y=u\), \(Z=p-2u\). Row permutations permute the three squared Gram correlations and preserve \(p,J,W\) and criticality. The necessary equation for \(W\) factors as

\[
 h^3\bigl[u^2+2u(p-2u)-u^2(p-2u)-W\bigr]
 =2(hu-2)\bigl(hu-(3k^2+2k+1)\bigr)
       \bigl(hu-(3k^2-2k+1)\bigr).
\tag{9}
\]

Hence the repeated-modulus cases are exactly the first three rows below. The fourth is (8).

| Curve | Chosen moduli | K |
|---|---|---|
| \(K_0\) | \(X=Y=2/h\), \(Z=(9k^2+1)/h\) | \(4(9k^2+1)/h^3\) |
| \(K_+\) | \(X=Y=(3k^2+2k+1)/h\), \(Z=(3k^2-4k+3)/h\) | \((27k^6+9k^4+17k^2+3+8kh)/h^3\) |
| \(K_-\) | \(X=Y=(3k^2-2k+1)/h\), \(Z=(3k^2+4k+3)/h\) | \((27k^6+9k^4+17k^2+3-8kh)/h^3\) |
| \(K_{\min}\) | \(X=4k^2/h^2\), \(Y+Z=p-X\), \(YZ=4/h^2\) | \(16k^2/h^4\) |

To justify the displayed choice of \(X\) on \(K_{\min}\), the modulus cubic factors exactly:

\[
 T^3-pT^2+(W+K_{\min})T-K_{\min}
 =\left(T-\frac{4k^2}{h^2}\right)
  \left(T^2-\left(p-\frac{4k^2}{h^2}\right)T+\frac4{h^2}\right).
\tag{10}
\]

One of the actual three moduli equals the first root. Relabel to call it \(X\). This argument does not divide by a modulus discriminant or assume distinct roots.

## 5. The weighted sum excludes every point without poles — PROVED / CERTIFIED

Assume all six \(L_{j,\pm}\ne0\). Then \(\lambda_j=P_j/L_j\) may be used on each half. Only the nine moments appearing in (4) are required. With \(U=\lambda_0\bar\lambda_1\), \(V=\lambda_0\bar\lambda_2\), their nonconjugate formulas are

\[
 M_{11}=st-z\lambda_0,\qquad
 M_{2,-1}=s\bar r-z\bar\lambda_1,\qquad
 M_{-1,2}=tr-z\bar\lambda_2,
\]
\[
 M_{30}=s^3-3sU\bar s+3U,\quad
 M_{03}=t^3-3tV\bar t+3V,\quad
 M_{22}=M_{11}^2-2UV M_{-1,-1}.
\tag{11}
\]

The other three are conjugates. An independent sparse Laurent calculation checks these Newton formulas on six free phase variables. Adding the two halves and substituting into (4) gives the following exact table.

**Normalization.** The table is in the formal reciprocal row gauge \(s=t=1\), \(\bar s=X\), \(\bar t=Y\). It is a Laurent change of variables, not a claim that the rescaled entries remain unit complex numbers. Each \(D_C\) has row weight zero and \(\mathcal T\) has weight \((1,1)\); therefore the table represents \(\widehat{\mathcal T}=\mathcal T/(s_{\rm original}t_{\rm original})\). Since \(J\ne0\), both scaling factors are nonzero, and vanishing is preserved.

| Curve | Exact value of \(\widehat{\mathcal T}\), assuming all six L are nonzero |
|---|---|
| \(K_0\) | \(\displaystyle \frac{32k^2(3k^4+2k^2+3)}{h^3}\) |
| \(K_+\) | \(\displaystyle -\frac{64k^2(3k^2+1)^2}{h^4(3k^2+2k+1)}\) |
| \(K_-\) | \(\displaystyle -\frac{64k^2(3k^2+1)^2}{h^4(3k^2-2k+1)}\) |
| \(K_{\min}\) | \(\displaystyle -\frac{64k^2(1+k^2Z)}{h(3k^2+1)}\) |

Every value is nonzero. The first is positive; the other three are negative, since \(k>0\), \(Z>0\), and

\[
 3k^2\pm2k+1=3(k\pm1/3)^2+2/3>0.
\]

This contradicts \(\mathcal T=0\). **Consequently some \(L_{j,\pm}=0\).**

**Exact checking and denominator scope.** On a repeated-modulus curve the verifier uses the monic relation
\(r^2=(J/X)r-Z\): after clearing denominators, the error numerator is an explicitly certified multiple of that relation's polynomial numerator. On \(K_{\min}\), use
\(r=J/(2Y)\), \(\bar r=J/(2X)\), and

\[
 h^2Y^2-(9k^4+10k^2+5)Y+4=0.
\tag{12}
\]

After clearing the actual rational denominator, the error numerator is exactly (12) times an explicit polynomial quotient. The quotient is an identity certificate; (12) is never inverted at a physical point. The denominators originate only from \(h\), positive moduli, and the six guarded \(L\)'s. No permanent, discriminant, \(k-1\), or unlisted exceptional quantity is inverted.

The table is asserted under its nonzero-L hypotheses. Its simplified expressions must not be substituted at a pole to claim a contradiction there.

## 6. Reading the pole product proves N1 — PROVED / CERTIFIED

Define

\[
 a_k=3k^2+1,\qquad b_\pm=3k^2\pm2k+3,
\]
\[
 f(k)=3k^3+k^2+k-1,\qquad g(k)=3k^3-k^2+k+1.
\]

Let \(\mathcal L=\prod_{j,\pm}L_{j,\pm}\). Direct products of the linear expressions (2), using the four curves, give

| Curve | \(\mathcal L\) |
|---|---|
| \(K_0\) | \(\displaystyle \frac{256(k-1)(k+1)(3k-1)^3(3k+1)^3a_k^4}{h^{12}}\) |
| \(K_+\) | \(\displaystyle -\frac{4096k^2(k+1)(3k-1)^3b_+g(k)^2}{h^{10}}\) |
| \(K_-\) | \(\displaystyle -\frac{4096k^2(k-1)(3k+1)^3b_-f(k)^2}{h^{10}}\) |
| \(K_{\min}\) | \(\displaystyle \frac{256a_k^4b_+b_-g(k)^2f(k)^2}{h^{16}}\) |

No lambda value occurs in this calculation, so the product formulas apply at poles. Moreover

\[
 b_\pm=3(k\pm1/3)^2+8/3>0,\qquad
 g(k)=1+k\left[3(k-1/6)^2+11/12\right]>0.
\]

The polynomial \(f\) is strictly increasing for \(k>0\), is negative at zero, and positive at one. Thus it has exactly one positive root \(\kappa\). Since §5 proves \(\mathcal L=0\), the possible positive parameters are

| Curve | Positive zeros of \(\mathcal L\) |
|---|---|
| \(K_0\) | \(1/3,1\) |
| \(K_+\) | \(1/3\) |
| \(K_-\) | \(1,\kappa\) |
| \(K_{\min}\) | \(\kappa\) |

At \(k=1/3\), the relevant curves have
\(X=Y=Z=9/5\), \(K=729/125\), and \(J=54/25\).
At \(k=1\), they have \(\{X,Y,Z\}=\{1,1,5\}\), \(K=5\), and \(J=2\).
Finally

\[
 K_--K_{\min}=\frac{b_-f(k)^2}{h^4},
\]

so the \(\kappa\) case has \(K=K_{\min}\) on either curve. This proves N1, including the endpoint modulus data required by `EquiEndpoint` and `P7Endpoint`. The parameter \(k=1\) has not been lost through division by a permanent; on its minus half \(z_-=0\) and every \(L_{j,-}=4\).

## 7. N2 and the coverage interface — PROVED

Put \(u=\kappa^2\). Squaring \(1-\kappa^2=\kappa(3\kappa^2+1)\) gives

\[
 G(u):=9u^3+5u^2+3u-1=0.
\]

On \(u\ge0\), this polynomial is strictly increasing. Exact rational evaluations are

\[
 G(1/5)=-16/125<0,\qquad G(1/4)=13/64>0.
\]

Hence \(1/5<\kappa^2<1/4\), so

\[
 \frac{17}{3}<9-\frac4{1+\kappa^2}<\frac{29}{5}.
\]

This is exactly the nonzero-J half of `TopStripClassification`. The existing zero-J classification, endpoint exclusions, ten-corner sum argument, `PRM.strictCornerCoverage`, and downstream theorems can be retained.

The new proof does not establish a separate global no-four-MUB theorem or replay unrelated upstream project components. Its result is the requested replacement for this one heavy coverage branch.

## 8. Verification, certificate boundary, and integration

Run `python3 verify.py` from this return directory. The verifier reconstructs its targets from the phase-corner definition, the nine moment formulas, the displayed parameterizations, and the actual lambda numerators. It compares regenerated data with the shipped certificates and checks the integer polynomial circuits independently. Hash checks pin the input archive and the returned sources; provenance hashing is not presented as replay of the upstream paper or Lean proofs.

The input facts used are precisely `CRITICAL_CORNER_REDUCTION.md` (complementary-critical scalar curve), `SIDE_FIBER.md` §1 (identities on actual sides), and the phase-block identity relating R to the imaginary signature. The former nonzero-J quartic, square-sum data, and scalar sign certificate are not dependencies of the replacement verifier.

`INTEGRATION.md` describes the replacement theorem boundary and the finite certificate translation. `CERTIFICATE_FORMAT.md` defines the integer circuit interchange and its trust boundary. The exact Python checks succeed; Lean elaboration time, memory use, and a full axioms audit for the replacement remain **NOT ESTABLISHED** until integration in the complete repository.

### Measured replay and size — CERTIFIED

The complete shipped JSON certificate data occupy **290,611 bytes uncompressed**, below the 500,000-byte target. This includes both the readable cofactor records and their integer DAG encodings; it is not a compressed-size claim.

The DAGs contain **55 integer polynomial identities**: six signed/weighted moment identities, nine Newton identities, eight boundary/denominator identities, and 32 scalar identities. Full source regeneration, comparison, and independent sparse-integer replay passed. The initial packaged replay took approximately **6.3 seconds in this environment**. This is a Python replay measurement, not a prediction of Lean elaboration time.

The actual nine-moment builder used in the boundary calculations was separately checked against direct sums on independent Laurent variables. A deliberate alteration of one circuit target by +1 was rejected. `VERIFY_TRANSCRIPT.txt` records the final full replay; `CERTIFICATE_STATISTICS.json` lists the individual data sizes.

An optional independent result, `SUPPLEMENTARY_RANK_LEMMA.md`, proves that every order-six complex Hadamard has entrywise-square rank at least three. It removes the rank hypothesis from the permitted Fourier criterion, but it is not used by the N1/N2 proof above.

