# Handoff S: endpoint exclusion by one anchored quadratic rule

**Status: proved, conditional only on the candidate part of the supplied critical-strip classification.** The two existing endpoint exclusions are not used.

The new rule holds for every three-by-six matrix with unit-modulus entries and mutually orthogonal rows. It is a quadratic inequality in the invariants of the ten corners containing one fixed column. Together with the existing first-moment rule, it excludes every classified count pattern, including both rational endpoints. The finite separation is at least **4**.

This is an incidence-sensitive quadratic rule: it retains which two anchored corners share another column. The proof below bounds it for every assignment of the classified types and every sign of their signed cubic invariants. No completion theorem, reconstruction divisor, numerical approximation, or endpoint normal form enters the new argument.

## 1. Definitions and the statement

Let \(T\in\mathbb C^{3\times6}\) satisfy
\[
 |T_{aj}|=1,\qquad TT^*=6I_3.
\]
Columns are labelled \(0,1,\ldots,5\). For a three-element column set \(C\), let \(E_C=T[:,C]\), and use the reconstruction convention of the supplied project:
\[
 G_C=6I_3-E_CE_C^*=E_{C^c}E_{C^c}^*
 =\begin{pmatrix}
 3&\bar s_C&\bar t_C\\
 s_C&3&\bar r_C\\
 t_C&r_C&3
 \end{pmatrix}.
\]
Define
\[
 X_C=|s_C|^2,\quad Y_C=|t_C|^2,\quad Z_C=|r_C|^2,
 \quad p_C=X_C+Y_C+Z_C,
\]
\[
 J_C=s_Cr_C\bar t_C+\bar s_C\bar r_Ct_C,\qquad
 W_C=X_CY_C+X_CZ_C+Y_CZ_C-X_CY_CZ_C.
\]
In particular \(J_C\) is real and retains its sign. The Gram of the selected corner has the negatives of these three off-diagonal entries, so
\[
 |\det E_C|^2=27-3p_C-J_C. \tag{1}
\]
Same-row complementation preserves \(X,Y,Z,p,W\) and reverses \(J\):
\[
 (X,Y,Z,p,W)_{C^c}=(X,Y,Z,p,W)_C,\qquad J_{C^c}=-J_C. \tag{2}
\]
Using the corner's own Gram throughout changes every \(J_C\) to \(-J_C\); the result below is unchanged.

Fix an anchor \(c\). Identify its ten corners \(C=\{c,i,j\}\) with the ten edges \(\{i,j\}\) of the complete graph on the other five columns. Put
\[
 A_C=X_C^2+Y_C^2+Z_C^2,\qquad
 d_i=\sum_{j\notin\{c,i\}}J_{\{c,i,j\}},\qquad
 D_c=\sum_{i\ne c}d_i^2.
\]
Each inner sum has four terms, all among the same ten anchored corners.

**Universal quadratic rule.** Every such strip satisfies
\[
 \boxed{\quad
 \mathcal Q_c:=
 \sum_{\substack{|C|=3\\c\in C}} A_C-6D_c\ \ge 162.
 \quad} \tag{S}
\]
The first-moment rule is
\[
 \sum_{\substack{|C|=3\\c\in C}}p_C=54. \tag{3}
\]

**Counting theorem.** Suppose the ten anchored corners all have one of the following types, where \(p_*\) is one fixed irrational number:

| Type | \(p_C\) | \(J_C\) | Further scalar data |
|---|---:|---:|---|
| Zero | \(0\) | \(0\) | \(X_C=Y_C=Z_C=0\) |
| Five | \(5\) | \(0\) | \(W_C=4\) |
| Seven | \(7\) | \(\pm2\) | \(\{X_C,Y_C,Z_C\}=\{1,1,5\}\) |
| Equicorrelated | \(27/5\) | \(\pm54/25\) | \(X_C=Y_C=Z_C=9/5\) |
| Irrational | \(p_*\) | unrestricted here | no further data needed |

Then (3) forces
\[
 \boxed{\mathcal Q_c\le158,} \tag{4}
\]
contradicting (S). Thus no such strip exists.

The candidate portion of the critical-strip classification gives this table in the setting of Handoff S. Section 5 derives the only additional five-type bound and checks the irrationality input without either endpoint exclusion.

## 2. First moment and signed-\(J\) balance

For any fixed pair of rows, set
\[
 u_j=T_{aj}\overline{T_{bj}}.
\]
These are six unit complex numbers with \(\sum_j u_j=0\). Put
\[
 U_C=\left|\sum_{j\in C}u_j\right|^2.
\]
Every diagonal term in the expansion occurs in ten of the twenty triples, and every ordered off-diagonal term occurs in four. Consequently
\[
 \sum_{|C|=3}U_C
 =10\cdot6+4\left(\left|\sum_j u_j\right|^2-6\right)=36.
\]
Also \(U_{C^c}=U_C\). The ten corners containing \(c\) select exactly one member of each complementary pair, so
\[
 \sum_{C\ni c}U_C=18.
\]
Adding the three row-pair equations proves
\[
 \sum_{C\ni c}X_C=\sum_{C\ni c}Y_C
 =\sum_{C\ni c}Z_C=18,
\]
and hence (3).

The independent signed balance is
\[
 \boxed{\sum_{C\ni c}J_C=0\quad\text{for every column }c.} \tag{5}
\]
Here is a determinant proof valid even when corner minors vanish.

Let \(v_c\) be column \(c\) of \(T\), so \(\|v_c\|^2=3\). Weight that column by the scalar variable \(t\) in the Gram product. Cauchy--Binet gives the polynomial identity
\[
 \det\!\left(6I_3+(t-1)v_cv_c^*\right)
 =
 \sum_{c\notin C}|\det E_C|^2
 +t\sum_{c\in C}|\det E_C|^2.
\]
The rank-one determinant formula, or direct determinant expansion, evaluates its left side as
\[
 216\left(1+\frac{t-1}{6}\|v_c\|^2\right)=108(1+t).
\]
Comparison of the coefficients of \(t\) yields
\[
 \sum_{C\ni c}|\det E_C|^2=108.
\]
Using (1) and (3), this is
\[
 108=10\cdot27-3\cdot54-\sum_{C\ni c}J_C,
\]
which proves (5).

The stronger pair-containing rule is
\[
 \boxed{\sum_{C\supset\{c,i\}}J_C=0\quad(c\ne i).} \tag{6}
\]
Indeed, if \(B_i=\sum_{C\ni i}J_C\), complementation gives
\[
 B_i=2d_i-B_c.
\]
Both \(B_i\) and \(B_c\) vanish by (5), so \(d_i=0\). In particular,
\[
 D_c=0. \tag{7}
\]
This is the source of the cross-corner term in (S). Replacing \(J\) by \(|J|\) before taking the degree sums would invalidate this step.

## 3. An exact fourth-moment identity

**Lemma.** If \(u_0,\ldots,u_5\) are unit complex numbers with zero sum, then for every anchor \(c\),
\[
 \boxed{\sum_{C\ni c}
 \left|\sum_{j\in C}u_j\right|^4
 =54+\left|\sum_{j=0}^5u_j^2\right|^2.} \tag{8}
\]

**Proof.** For \(i\ne j\), write
\[
 a_{ij}=\operatorname{Re}(u_i\bar u_j),\qquad
 A_2=\sum_{i<j}a_{ij}^2,\qquad
 q_C=\sum_{\{i,j\}\subset C}a_{ij}.
\]
The zero-sum condition gives
\[
 \sum_{j\ne i}a_{ij}
 =\operatorname{Re}\!\left(u_i\overline{-u_i}\right)=-1,
 \qquad \sum_{i<j}a_{ij}=-3. \tag{9}
\]
Each edge belongs to four triples, hence \(\sum_Cq_C=-12\).

For the squares, each \(a_{ij}^2\) occurs four times. Each product of two distinct incident edges occurs in one triple. The sum of those products over all vertices is
\[
 \frac12\sum_i\left[
 \left(\sum_{j\ne i}a_{ij}\right)^2-\sum_{j\ne i}a_{ij}^2
 \right]=3-A_2.
\]
It follows that
\[
 \sum_{|C|=3}q_C^2=4A_2+2(3-A_2)=2A_2+6.
\]
Since \(U_C=3+2q_C\),
\[
 \sum_{|C|=3}U_C^2
 =180+12(-12)+4(2A_2+6)=60+8A_2. \tag{10}
\]
Unit modulus also gives
\[
 \left|\sum_j u_j^2\right|^2
 =6+2\sum_{i<j}(2a_{ij}^2-1)=4A_2-24. \tag{11}
\]
Substitution in (10) yields the twenty-corner identity
\[
 \sum_{|C|=3}U_C^2
 =108+2\left|\sum_j u_j^2\right|^2.
\]
Complementary values agree, so every anchored sum is half this expression. This proves (8). \(\square\)

Apply (8) to the three row-pair sequences. Define
\[
 M_{ab}=\sum_{j=0}^5
       \left(T_{aj}\overline{T_{bj}}\right)^2
 \quad(0\le a<b\le2).
\]
Then
\[
 \sum_{C\ni c}A_C
 =162+\sum_{0\le a<b\le2}|M_{ab}|^2. \tag{12}
\]
Together with (7), this gives the exact identity
\[
 \boxed{\mathcal Q_c
 =162+\sum_{0\le a<b\le2}|M_{ab}|^2\ge162,}
\]
proving (S).

No second harmonic moment is assumed to vanish. The nonnegative terms are retained. In the gauge \(T=(1;x;y)\), the right-hand remainder is
\[
 \left|\sum_jx_j^2\right|^2+
 \left|\sum_jy_j^2\right|^2+
 \left|\sum_j(y_j\bar x_j)^2\right|^2.
\]

## 4. Why this is one quadratic rule on ten corners

Every variable on the left of (S) belongs to a corner containing \(c\). There are no extra-corner variables.

If \(e,f\) denote the edges of the five-column complete graph, the quadratic expands as
\[
 \mathcal Q_c
 =\sum_e(X_e^2+Y_e^2+Z_e^2)
 -12\sum_eJ_e^2
 -12\!\!\sum_{\substack{\{e,f\}\\e\ne f,\ e\cap f\ne\varnothing}}\!\!J_eJ_f,
 \tag{13}
\]
where the last sum is over unordered adjacent edge pairs. Thus all coefficients are explicit integers.

The coefficient six in \(-6D_c\) is a convenient way to combine the signed incidence identities with the fourth-moment lower bound. Since \(D_c=0\) on every actual strip, any coefficient would preserve the universal identity. Six is the smallest integer that separates all four relaxed count bounds below; any real coefficient strictly larger than \(11/2\) also works.

An unlabelled moment such as \(\sum J_C\) alone loses this incidence information. Rule (S) retains it, and the finite bounds below hold independently of how the multiset is placed on the ten labelled corners.

## 5. Scalar inputs, including the five-type bound

For brevity write \(K_C=X_CY_CZ_C\). Since \(X,Y,Z\ge0\), \(K_C\ge0\).

At the five type, the critical discriminant in the source notation reduces to
\[
 R(5,0,W)=2304-(W-52)^2.
\]
Thus \(R=0\) gives \(W=4\) or \(W=100\). But
\[
 W=XY+XZ+YZ-XYZ\le XY+XZ+YZ
 \le\frac{(X+Y+Z)^2}{3}=\frac{25}{3}<100.
\]
Therefore \(W=4\), independently of either endpoint proof. Hence
\[
 A_C=p_C^2-2(X_CY_C+X_CZ_C+Y_CZ_C)
 =25-2(4+K_C)=17-2K_C\le17. \tag{14}
\]
The complete bounds required for the finite step are
\[
\begin{array}{c|cccc}
 p_C&0&5&7&27/5\\ \hline
 A_C\text{ upper bound}&0&17&27&243/25.
\end{array} \tag{15}
\]
The last two entries use only the candidate modulus data
\(\{1,1,5\}\) and \(\{9/5,9/5,9/5\}\).

The exceptional value in the source is
\[
 p_*=9-\frac4{1+\kappa^2},\qquad
 3\kappa^3+\kappa^2+\kappa-1=0,\quad\kappa>0.
\]
Its irrationality has an elementary verification. If \(p_*\) were rational, \(q=\kappa^2=4/(9-p_*)-1\) would be rational, and the cubic would give
\[
 \kappa=\frac{1-q}{1+3q}\in\mathbb Q.
\]
The rational-root theorem permits only
\(\kappa\in\{1,-1,1/3,-1/3\}\), none of which is a root. This is a contradiction.

No field-degree endpoint argument is being imported here: this four-value rational-root check concerns only the already classified exceptional scalar. The one fixed value \(p_*\) is important. This proof does not replace it by independently varying numbers in an interval.

## 6. The complete finite feasibility check

Let \(n_*\) count the irrational-type corners. Equation (3) expresses
\(n_*p_*\) as a rational number. Therefore \(n_*=0\).

Write the remaining counts as \((n_0,n_5,n_7,n_e)\). They satisfy
\[
 n_0+n_5+n_7+n_e=10,\qquad
 25n_5+35n_7+27n_e=270. \tag{16}
\]
Reduction modulo five shows \(n_e\in\{0,5,10\}\).

* If \(n_e=10\), all other counts vanish.
* If \(n_e=5\), then \(5n_5+7n_7=27\), with \(n_5+n_7\le5\). Its only solution is \(n_5=4,n_7=1,n_0=0\).
* If \(n_e=0\), then \(5n_5+7n_7=54\), which forces \(n_7\equiv2\pmod5\). The two possibilities are \(n_7=2,n_5=8,n_0=0\) and \(n_7=7,n_5=1,n_0=2\).

There are exactly four patterns.

For the first two, \(D_c\ge0\) suffices. For the last two, all nonzero edge values \(J_e\) equal \(+2\) or \(-2\).

**Two nonzero edges.** If disjoint, \(D_c=16\). If adjacent, opposite signs give \(D_c=8\), and equal signs give \(D_c=24\). Thus \(D_c\ge8\) for every signed placement.

**Seven nonzero edges.** Write \(J_e=2\epsilon_e\) on their support and \(d_i=2r_i\), where \(\epsilon_e\in\{-1,1\}\) and \(r_i\in\mathbb Z\). Then
\[
 \sum_i r_i=2\sum_{\text{seven edges}}\epsilon_e
\]
is nonzero, since the sum of seven signs is odd. Moreover
\[
 \sum_i r_i^2\equiv\sum_i r_i\equiv0\pmod2.
\]
It is consequently a positive even integer, at least two. Therefore \(D_c=4\sum_i r_i^2\ge8\).

Combining these bounds with (15) gives the exact certificate:

| \((n_0,n_5,n_7,n_e)\) | Upper bound on \(\sum A_C\) | Lower bound on \(D_c\) | Upper bound on \(\mathcal Q_c\) | Gap below \(162\) |
|---|---:|---:|---:|---:|
| \((0,0,0,10)\) | \(486/5\) | \(0\) | \(486/5\) | \(324/5\) |
| \((0,4,1,5)\) | \(718/5\) | \(0\) | \(718/5\) | \(92/5\) |
| \((0,8,2,0)\) | \(190\) | \(8\) | \(142\) | \(20\) |
| \((2,1,7,0)\) | \(206\) | \(8\) | \(158\) | \(4\) |

Every upper bound is at most \(158<162\). This proves (4), and therefore the counting theorem. \(\square\)

The margin four is the guaranteed separation of this exact scalar relaxation. No claim is made that its upper bounds are attained by physical strips.

## 7. A short independent way to see the exclusion

The following unbundled version provides a useful cross-check.

The anchored signed balance reads
\[
 25\Delta_7+27\Delta_e=0,
\]
where each \(\Delta\) is the number of positive-\(J\) corners minus the number of negative-\(J\) corners of that type. Since both absolute values are at most ten, \(\Delta_7=\Delta_e=0\). Thus both endpoint counts must be even. This removes the second and fourth rows of the table.

The third row has only two nonzero signed edges on the five-column graph. Their degree sums cannot all vanish, by the two-edge calculation above. The first row would give
\[
 \sum_{C\ni c}X_C^2
 =10(9/5)^2=162/5<54,
\]
contradicting (8).

This second deduction agrees with the single-rule certificate but is not needed by it.

## 8. Integration boundary

The new universal identities use only unit-modulus entries and row orthogonality. They do not assume all-criticality, non-Fourier type, corner invertibility, any side denominator, or a flat completion.

For the application in Handoff S, those global hypotheses enter through the **candidate alternatives** of the existing critical-strip classification and the existing routing of its geometric-row branch. The new argument imports the endpoint scalar data as candidate data, not the later assertion that the candidates are already excluded.

The coverage deduction may therefore be organized as:

1. use the existing upstream hypotheses and routing to put the ten corners in the candidate table;
2. invoke the counting theorem in this return.

The separate arguments in \(\texttt{CRITICAL_P7_EXCLUSION.md}\) and \(\texttt{CRITICAL_EQUI_CORRELATION_EXCLUSION.md}\) are unnecessary for that deduction. The new theorem is a simultaneous classified-strip obstruction; it does not assert that it has independently replaced the stronger standalone endpoint theorems under every weaker hypothesis in which those theorems may be used.

This return supplies a paper proof and exact Python verification. It does not claim a compiled Lean port or modifications to the current Lean repository. The relevant formalization tasks are the universal anchored identities, the five-type bound, and the finite count lemma. The attachment contained only the brief; the source conventions were checked against the earlier PRM handoff recorded in \(\texttt{INPUTS.json}\).

## 9. Replay and what is checked

Run \(\texttt{python3 verify.py}\) from this directory. All arithmetic is exact and the verifier uses only the Python standard library. It verifies:

* the universal polynomial expansions underlying the moment and determinant arguments;
* the elementary scalar arithmetic used for the five type and the irrational-type reduction;
* all four solutions of the ten-corner integer equations;
* all \(\binom{10}{2}2^2=180\) signed two-edge assignments and all \(\binom{10}{7}2^7=15{,}360\) signed seven-edge assignments;
* the complete rational table of quadratic upper bounds and the minimum gap four.

The written proof supplies the analytic link from row orthogonality to these identities and the explicitly identified upstream classification supplies the candidate alternatives. The checker does not claim to re-prove that upstream classification.

