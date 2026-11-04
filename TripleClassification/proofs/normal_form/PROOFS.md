# The cubic normal-form witness: statements and proofs

The witness was proposed for the hardest balls by a separate AI agent (Antigravity), then reviewed and repaired. The
original-ball integration left open below is the overlap witness ([`overlap.py`](../../certifier/certifier/overlap.py);
[`NATIVE_REVIEW.md`](../NATIVE_REVIEW.md), F1), checked for every leaf of the final atlas on 3 November 2026.

> **Independent review, 2 November 2026.** This corrected copy incorporates the algebraic and code-correspondence repairs established in the accompanying `REVIEW.md`. Verdicts apply within the represented H-branch scope and the reviewed native hypotheses; original-ball integration remains a separate obligation.

> **Arithmetic scope.** The new witness recomputes bounds in 160-bit Arb arithmetic (`python-flint 0.9.0`) and accepts by rigorous interval inequalities or exact comparisons. The inherited native setup retains its separately reviewed numerical proposals and conservative binary64 enclosures. The full executable is not claimed to make zero floating-point decisions.

---

## 1. Notation and Reviewed Results Used

We follow the notation of `PROOF_815.md` §2–§5 (`handoffs/TC_annulus_20261101/refs/PROOF_815.md`) and `family_neighbourhoods/PROOF.md`:

- All transition matrices have unit-modulus entries, $H = e^{i q}$ and $K = e^{i y}$ (indexed by $6 r + c$ for row $r \in \{0,\dots,5\}$ and column $c \in \{0,\dots,5\}$).
- The residual map $F(q, y) \in \mathbb{R}^{66}$ consists of:
  - the $30$ off-diagonal $K$-Gram components $\operatorname{Re}(K^* K)_{ab}$ and $\operatorname{Im}(K^* K)_{ab}$ for $0 \le a < b < 6$, and
  - the $36$ mixed unbiasedness residuals $\frac{1}{6}|(H^* K)_{ab}|^2 - 1$ for $a, b \in \{0,\dots,5\}$.
- $W_6 \in \mathbb{R}^{6 \times 5}$ is the single-column Helmert isometry ($W_6^\top W_6 = I_5$, $W_6^\top \mathbf{1}_6 = 0$), and $E = \operatorname{diag}(W_6, \dots, W_6) \in \mathbb{R}^{36 \times 30}$ (arranged by column $c$ at rows $6r+c$ and columns $5c+j$) is the block-Helmert isometry ($E^\top E = I_{30}$) onto column-centred phases.
- Given an invertible right frame $T \in \mathbb{R}^{30 \times 30}$ and left preconditioner $B \in \mathbb{R}^{30 \times 66}$, we split coordinates in $\mathbb{R}^{30} = \mathbb{R}^{28} \oplus \mathbb{R}^2$ into the **strong block** $s = \{0,\dots,27\}$ (rows $0..27$) and the **weak block** $w = \{28, 29\}$ (rows $28..29$). For any matrix $M$ with $30$ rows and $a \in \{s, w\}$, $M_a$ denotes the submatrix of rows in $a$, and $\|M_a\|$ denotes its spectral norm $\|M_a\|_2$.

The witness chains the following **reviewed** results with the reviewed lemmas below:

1. **N9. Native fine bins** (`family_neighbourhoods/PROOF.md` §9, [`fine_patterns.py`](../../../proof/theorems/TC_triple_classification/family_neighbourhoods/fine_patterns.py)):
   For a pattern (6-clique of colour classes) of the cell's complete cover, every column $c \in \{0,\dots,5\}$ of every actual completing basis in the pattern lies in one of its colour's retained closed fine bins with centre $v_k = \frac{2\pi}{192}(0, k_1, \dots, k_5)^\top$ and mean-zero phase radius $\rho = \pi\sqrt{29/6}/m$, where $m=96$ is the final Stage C resolution (the midpoint grid uses $\mathrm{DEN}=2m=192$) (`cover['bin_radius']`). Pairwise edge filtering (`stagec.joint_filter`) and arc-consistency (`fine_patterns.arc_consistent`) prune only bin pairs and bins that cannot participate in any valid completion.
2. **A. The 180-ridge representation and Gram-tensor bounds** (`PROOF_815.md` §3–§7, audited in `AUDIT_815.md`):
   - Universal operator norm bounds $\|F_{HH}\| \le 2\sqrt{6}$ and $\|F_{HK}\| \le 2$ (`PROOF_815.md` §3 (1)).
   - For $G(\zeta) = B F(q^*, y^* + E T \zeta)$, the exact 180-ridge cosine/sine expansion
     $$G(\zeta) = \sum_{l=1}^{180} \bigl(c_l (\cos(a_l^\top \zeta) - 1) + s_l \sin(a_l^\top \zeta)\bigr) + G(0),$$
     where $A = [a_1^\top; \dots; a_{180}^\top] = [A_s \;\; A_w] \in \mathbb{R}^{180 \times 30}$, $C_f = B C_{\text{raw}} = [c_1 \dots c_{180}] \in \mathbb{R}^{30 \times 180}$, $S_f = B S_{\text{raw}} = [s_1 \dots s_{180}] \in \mathbb{R}^{30 \times 180}$, and $G(0) = C_f \mathbf{1}_{180}$.
   - For each block $a \in \{s, w\}$ and each $(n, k)$ with $2 \le n \le 8$ and $0 \le k \le n$, the scaled partial derivative norm bound
     $$c_{a, n, k} := \frac{h^{(a)}_{n,k}}{(n-k)!\,k!} \ge \frac{1}{(n-k)!\,k!} \sup_{\|\zeta_s\|_2 \le 1,\, \|\zeta_w\|_2 \le 1} \left\| D^n_{s^{n-k} w^k} G_a(0)[\zeta_s^{n-k}, \zeta_w^k] \right\|_2,$$
     certified via the minimum of the three Gram flattenings (`output`, `strong`, `weak` in `tensor_bounds`, `PROOF_815.md` (5)–(6)), together with the degree-9 Lagrange remainder tail
     $$T_{a,9}(S_{\text{full}}, W) := \left\| \left( \sum_{l=1}^{180} \sqrt{C_f[i,l]^2 + S_f[i,l]^2} \, \frac{(\|a_{l,s}\|_2 S_{\text{full}} + \|a_{l,w}\|_2 W)^9}{9!} \right)_{i \in a} \right\|_2.$$
3. **N6. Native averaged moving contraction** (`family_neighbourhoods/PROOF.md` §6, `NATIVE_REVIEW.md`, [`moving_symmetry.py`](../../../proof/theorems/TC_triple_classification/family_neighbourhoods/moving_symmetry.py)):
   Given a per-column moving enclosure $v_c = v_{0,c} + T_c u + e_c$ with mean-zero error $\|e_c\|_2 \le \varepsilon_c$, the native contraction certifies that every solution in the tube has balanced order-three ($\mathbb{Z}_3$) symmetry whenever $q_{\text{native}} = \eta + \|\Delta_c\|_2 + r\|[V_1 \dots V_4]\|_2 + h + R < 1$.

---

## 2. Reviewed and Corrected Mathematical Lemmas

### Lemma P1.1 (REVIEWED PASS — The Binomial Isometry on $\mathbb{R}^2$ for Homogeneous Weak Polynomials and Combined Operators)

**Statement.** Let $w = (w_1, w_2)^\top \in \mathbb{R}^2$ and let $d \ge 1$ be an integer. Define the scaled monomial vector $\phi_d(w) \in \mathbb{R}^{d+1}$ by
$$\phi_d(w) := \left( \sqrt{\binom{d}{j}} \, w_1^{d-j} w_2^j \right)_{j=0}^d = \left( w_1^d, \, \sqrt{d}\, w_1^{d-1} w_2, \, \dots, \, \sqrt{\binom{d}{j}}\, w_1^{d-j} w_2^j, \, \dots, \, w_2^d \right)^\top.$$

1. **(Norm identity.)** For every $w \in \mathbb{R}^2$,
   $$\|\phi_d(w)\|_2 = \|w\|_2^d.$$
2. **(Homogeneous vector polynomials on $\mathbb{R}^2$.)** Let $P: \mathbb{R}^2 \to \mathbb{R}^m$ be any homogeneous polynomial of degree $d$, written as
   $$P(w_1, w_2) = \sum_{j=0}^d p_{d-j, j} \, w_1^{d-j} w_2^j, \qquad p_{d-j, j} \in \mathbb{R}^m.$$
   Define the $m \times (d+1)$ coefficient matrix
   $$M(P) := \begin{bmatrix} p_{d,0} & \dfrac{p_{d-1,1}}{\sqrt{\binom{d}{1}}} & \cdots & \dfrac{p_{d-j,j}}{\sqrt{\binom{d}{j}}} & \cdots & p_{0,d} \end{bmatrix} \in \mathbb{R}^{m \times (d+1)}.$$
   Then $P(w) = M(P) \phi_d(w)$, and for every $w \in \mathbb{R}^2$,
   $$\|P(w)\|_2 \le \|M(P)\|_2 \, \|w\|_2^d.$$
3. **(Combined bilinear-quadratic operator bound on $\mathbb{R}^n \times \mathbb{R}^2$.)** Let $L_{20}, L_{11}, L_{02} \in \mathbb{R}^{m \times n}$ be matrices, and consider the map $B: \mathbb{R}^n \times \mathbb{R}^2 \to \mathbb{R}^m$ given by
   $$B(\zeta_s', w) := \bigl(w_1^2 L_{20} + 2 w_1 w_2 L_{11} + w_2^2 L_{02}\bigr) \zeta_s'.$$
   Define the horizontal $m \times 3n$ matrix and vertical $3m \times n$ matrix
   $$M_{\text{horiz}} := \begin{bmatrix} L_{20} & \sqrt{2}\, L_{11} & L_{02} \end{bmatrix} \in \mathbb{R}^{m \times 3n}, \qquad M_{\text{vert}} := \begin{bmatrix} L_{20} \\ \sqrt{2}\, L_{11} \\ L_{02} \end{bmatrix} \in \mathbb{R}^{3m \times n},$$
   and set $\kappa := \min\bigl(\|M_{\text{horiz}}\|_2, \, \|M_{\text{vert}}\|_2\bigr)$. Then for all $\zeta_s' \in \mathbb{R}^n$ and $w \in \mathbb{R}^2$,
   $$\|B(\zeta_s', w)\|_2 \le \kappa \, \|\zeta_s'\|_2 \, \|w\|_2^2.$$

**Proof.**
1. By the binomial theorem,
   $$\|\phi_d(w)\|_2^2 = \sum_{j=0}^d \binom{d}{j} (w_1^2)^{d-j} (w_2^2)^j = (w_1^2 + w_2^2)^d = \|w\|_2^{2d}.$$
2. By definition of $M(P)$ and $\phi_d(w)$, the $j$-th column of $M(P)$ multiplied by the $j$-th entry of $\phi_d(w)$ is $\bigl(p_{d-j,j} / \sqrt{\binom{d}{j}}\bigr) \sqrt{\binom{d}{j}} w_1^{d-j} w_2^j = p_{d-j,j} w_1^{d-j} w_2^j$. Summing over $j=0,\dots,d$ gives $P(w) = M(P)\phi_d(w)$, and therefore $\|P(w)\|_2 \le \|M(P)\|_2 \|\phi_d(w)\|_2 = \|M(P)\|_2 \|w\|_2^d$.
3. For the horizontal bound, note that $B(\zeta_s', w) = M_{\text{horiz}} (\phi_2(w) \otimes \zeta_s')$, where $\|\phi_2(w) \otimes \zeta_s'\|_2 = \|\phi_2(w)\|_2 \|\zeta_s'\|_2 = \|w\|_2^2 \|\zeta_s'\|_2$. Thus $\|B(\zeta_s', w)\|_2 \le \|M_{\text{horiz}}\|_2 \|\zeta_s'\|_2 \|w\|_2^2$.
   For the vertical bound, by the triangle inequality and Cauchy–Schwarz in $\mathbb{R}^3$,
   $$\begin{aligned}
   \|B(\zeta_s', w)\|_2
   &\le w_1^2 \|L_{20} \zeta_s'\|_2 + (\sqrt{2}\,|w_1 w_2|)\bigl(\sqrt{2}\,\|L_{11} \zeta_s'\|_2\bigr) + w_2^2 \|L_{02} \zeta_s'\|_2 \\
   &\le \sqrt{w_1^4 + 2 w_1^2 w_2^2 + w_2^4} \, \sqrt{\|L_{20} \zeta_s'\|_2^2 + 2 \|L_{11} \zeta_s'\|_2^2 + \|L_{02} \zeta_s'\|_2^2} \\
   &= \|w\|_2^2 \, \|M_{\text{vert}} \zeta_s'\|_2 \le \|M_{\text{vert}}\|_2 \, \|\zeta_s'\|_2 \, \|w\|_2^2.
   \end{aligned}$$
   Taking the minimum of the two bounds yields $\|B(\zeta_s', w)\|_2 \le \kappa \|\zeta_s'\|_2 \|w\|_2^2$. $\blacksquare$

---

### Lemma P1.2 (REPAIRED IN REVIEW — Cubic Normal-Form Cancellation and Remainder Decomposition of $G(\zeta)$)

**Setting and Explicit Constants.** Let $G(\zeta) = B F(q^*, y^* + E T \zeta)$ have 180-ridge expansion with $C_f, S_f \in \mathbb{R}^{30 \times 180}$ and $A = [A_s \;\; A_w] \in \mathbb{R}^{180 \times 30}$, where $a_{w,1}[l] = A_w[l, 0]$ and $a_{w,2}[l] = A_w[l, 1]$ for $l \in \{0,\dots,179\}$.

Define the quadratic normal-form map $q_2: \mathbb{R}^2 \to \mathbb{R}^{28}$ by
$$q_2(w) := -\frac{1}{2} D^2_{ww} G_s(0)[w, w] = m_{20} w_1^2 + 2 m_{11} w_1 w_2 + m_{02} w_2^2,$$
where for each $i \in \{0,\dots,27\}$,
$$m_{20}[i] = \frac{1}{2} \sum_{l=0}^{179} C_f[i, l] a_{w,1}[l]^2, \quad m_{11}[i] = \frac{1}{2} \sum_{l=0}^{179} C_f[i, l] a_{w,1}[l] a_{w,2}[l], \quad m_{02}[i] = \frac{1}{2} \sum_{l=0}^{179} C_f[i, l] a_{w,2}[l]^2.$$
For each ridge $l \in \{0,\dots,179\}$, let $(A_s q_2(w))_l = b_{20}[l] w_1^2 + 2 b_{11}[l] w_1 w_2 + b_{02}[l] w_2^2$, where
$$b_{20}[l] = (A_s m_{20})_l, \qquad b_{11}[l] = (A_s m_{11})_l, \qquad b_{02}[l] = (A_s m_{02})_l.$$

Define the cubic normal-form map $q_3: \mathbb{R}^2 \to \mathbb{R}^{28}$ by
$$q_3(w) := -\left( D^2_{sw} G_s(0)[q_2(w), w] + \frac{1}{6} D^3_{www} G_s(0)[w, w, w] \right) = q_{30} w_1^3 + q_{21,3} w_1^2 w_2 + q_{12,3} w_1 w_2^2 + q_{03} w_2^3,$$
where for each $i \in \{0,\dots,27\}$,
$$\begin{aligned}
q_{30}[i] &= \sum_{l=0}^{179} \left( C_f[i, l] b_{20}[l] a_{w,1}[l] + \frac{1}{6} S_f[i, l] a_{w,1}[l]^3 \right), \\
q_{21,3}[i] &= \sum_{l=0}^{179} \left( C_f[i, l] (b_{20}[l] a_{w,2}[l] + 2 b_{11}[l] a_{w,1}[l]) + \frac{1}{2} S_f[i, l] a_{w,1}[l]^2 a_{w,2}[l] \right), \\
q_{12,3}[i] &= \sum_{l=0}^{179} \left( C_f[i, l] (2 b_{11}[l] a_{w,2}[l] + b_{02}[l] a_{w,1}[l]) + \frac{1}{2} S_f[i, l] a_{w,1}[l] a_{w,2}[l]^2 \right), \\
q_{03}[i] &= \sum_{l=0}^{179} \left( C_f[i, l] b_{02}[l] a_{w,2}[l] + \frac{1}{6} S_f[i, l] a_{w,2}[l]^3 \right).
\end{aligned}$$
For each ridge $l \in \{0,\dots,179\}$, let $(A_s q_3(w))_l = b_{30}[l] w_1^3 + b_{21,3}[l] w_1^2 w_2 + b_{12,3}[l] w_1 w_2^2 + b_{03}[l] w_2^3$, where $b_{\bullet}[l] = (A_s q_{\bullet})_l$.

By Lemma P1.1, define the following spectral-norm constants (matching the exact variable names in `curved_expansion` of [`witness.py`](../../certifier/certifier/normal_form/witness.py)):
- `kap_q` $= \|M(q_2)\|_2$ ($28 \times 3$), so $\|q_2(w)\|_2 \le \text{kap\_q}\,\|w\|_2^2$.
- `kap_q3` $= \|M(q_3)\|_2$ ($28 \times 4$), so $\|q_3(w)\|_2 \le \text{kap\_q3}\,\|w\|_2^3$.
- `kap_swq2` $= \|M(D^2_{sw} G_s(0)[q_2(w), w])\|_2$ ($28 \times 4$), so $\|D^2_{sw} G_s(0)[q_2(w), w] + q_3(w)\|_2 = \|\frac{1}{6} D^3_{www} G_s(0)[w^3]\|_2$ or, for the flat bound on $N_s(\zeta) + q_2(w) + q_3(w)$, the exact identity $\frac{1}{6}D^3_{www}G_s(0)[w^3]+q_3(w)=-D^2_{sw}G_s(0)[q_2(w),w]$ gives $\|\frac{1}{6} D^3_{www} G_s(0)[w^3] + q_3(w)\|_2 = \|D^2_{sw} G_s(0)[q_2(w), w]\|_2 \le \text{kap\_swq2}\,\|w\|_2^3$.
- `kap_w2` $= \|M(\frac{1}{2} D^2_{ww} G_w(0)[w, w])\|_2$ ($2 \times 3$).
- `kap_w3` $= \|M(D^2_{sw} G_w(0)[q_2(w), w] + \frac{1}{6} D^3_{www} G_w(0)[w^3])\|_2$ ($2 \times 4$), and `kap_w3_raw` $= \|M(\frac{1}{6} D^3_{www} G_w(0)[w^3])\|_2$ ($2 \times 4$).
- For each block $g \in \{0, 1\}$ ($s$ or $w$), define the degree-4 weak polynomial $P_{g,4}: \mathbb{R}^2 \to \mathbb{R}^{|g|}$ by
  $$P_{g,4}(w) := D^2_{sw} G_g(0)[q_3(w), w] + \frac{1}{2} D^2_{ss} G_g(0)[q_2(w), q_2(w)] + \frac{1}{2} D^3_{sww} G_g(0)[q_2(w), w, w] + \frac{1}{24} D^4_{wwww} G_g(0)[w^4],$$
  with explicit coefficients $q_{40}, q_{31,4}, q_{22,6}, q_{13,4}, q_{04}$ given in lines 331–355 of [`witness.py`](../../certifier/certifier/normal_form/witness.py), and set `kap_4[g]` $= \|M(P_{g,4})\|_2$ and `kap_4_raw[g]` $= \|M(\frac{1}{24} D^4_{wwww} G_g(0)[w^4])\|_2$.
- For each block $g \in \{0, 1\}$, define the combined operator matrices $L_{g,20}, L_{g,11}, L_{g,02} \in \mathbb{R}^{|g| \times 28}$ by
  $$\begin{aligned}
  L_{g,20}[i, \cdot] &= \sum_{l=0}^{179} \left(-C_{f,g}[i,l] b_{20}[l] - \frac{1}{2} S_{f,g}[i,l] a_{w,1}[l]^2\right) A_s[l, \cdot], \\
  L_{g,11}[i, \cdot] &= \sum_{l=0}^{179} \left(-C_{f,g}[i,l] b_{11}[l] - \frac{1}{2} S_{f,g}[i,l] a_{w,1}[l] a_{w,2}[l]\right) A_s[l, \cdot], \\
  L_{g,02}[i, \cdot] &= \sum_{l=0}^{179} \left(-C_{f,g}[i,l] b_{02}[l] - \frac{1}{2} S_{f,g}[i,l] a_{w,2}[l]^2\right) A_s[l, \cdot],
  \end{aligned}$$
  and set `kap_sw2[g]` $= \min\bigl(\|[L_{g,20} \;\; \sqrt{2} L_{g,11} \;\; L_{g,02}]\|_2, \, \|[L_{g,20}; \, \sqrt{2} L_{g,11}; \, L_{g,02}]\|_2\bigr)$.

**Claim.** Let $\zeta = (\zeta_s, w) \in \mathbb{R}^{28} \times \mathbb{R}^2$, and write
$$\tilde{\zeta}_s := \zeta_s - q_2(w) - q_3(w), \qquad \zeta_s' := \tilde{\zeta}_s + q_3(w) = \zeta_s - q_2(w).$$
Suppose $\|\tilde{\zeta}_s\|_2 \le S_t$, $\|\zeta_s'\|_2 \le S_{t3}$, $\|\zeta_s\|_2 \le S_{\text{full}}$, and $\|w\|_2 \le W$. Let $N(\zeta) := G(\zeta) - G(0) - D G(0)\zeta$ be the nonlinear part of $G(\zeta)$, and define the modified nonlinear remainder
$$\widetilde{N}_s(\zeta) := N_s(\zeta) + q_2(w) + q_3(w), \qquad \widetilde{N}_w(\zeta) := N_w(\zeta).$$
Then for each block $g \in \{0, 1\}$ ($s$ or $w$),
$$\|\widetilde{N}_g(\zeta)\|_2 \le P^{\text{curved}}_g(S_t, S_{t3}, S_{\text{full}}, W) + T_{g,9}(S_{\text{full}}, W),$$
where
$$\begin{aligned}
P^{\text{curved}}_g(S_t, S_{t3}, S_{\text{full}}, W)
&= \mathbf{1}_{g=1} \bigl(\text{kap\_w2}\, W^2 + \text{kap\_w3}\, W^3\bigr) + \text{kap\_4}[g]\, W^4 \\
&\quad + c_{g,2,1}\, S_t W + c_{g,2,0}\, S_{t3}^2 \\
&\quad + \text{kap\_sw2}[g]\, S_{t3} W^2 + c_{g,3,1}\, S_{\text{full}}^2 W + c_{g,3,0}\, S_{\text{full}}^3 \\
&\quad + \sum_{n=4}^8 \sum_{\substack{k=0 \\ (n,k) \ne (4,4)}}^n c_{g,n,k}\, S_{\text{full}}^{n-k} W^k.
\end{aligned}$$

**Proof.** By Taylor's theorem to order $8$ around $\zeta = 0$, $N_g(\zeta) = \sum_{n=2}^8 \frac{1}{n!} D^n G_g(0)[\zeta^n] + R_{g,9}(\zeta)$ with $\|R_{g,9}(\zeta)\|_2 \le T_{g,9}(S_{\text{full}}, W)$. Expanding the binomial powers of $\zeta = (\zeta_s, w)$ for $n = 2, 3, 4$:
- **At $n = 2$:**
  $$\frac{1}{2} D^2 G_g(0)[\zeta, \zeta] = \frac{1}{2} D^2_{ss} G_g(0)[\zeta_s, \zeta_s] + D^2_{sw} G_g(0)[\zeta_s, w] + \frac{1}{2} D^2_{ww} G_g(0)[w, w].$$
  Substitute $\zeta_s = \zeta_s' + q_2(w) = \tilde{\zeta}_s + q_2(w) + q_3(w)$ into the first two terms:
  $$\frac{1}{2} D^2_{ss} G_g(0)[\zeta_s, \zeta_s] = \frac{1}{2} D^2_{ss} G_g(0)[\zeta_s', \zeta_s'] + D^2_{ss} G_g(0)[\zeta_s', q_2(w)] + \frac{1}{2} D^2_{ss} G_g(0)[q_2(w), q_2(w)],$$
  $$D^2_{sw} G_g(0)[\zeta_s, w] = D^2_{sw} G_g(0)[\tilde{\zeta}_s, w] + D^2_{sw} G_g(0)[q_2(w), w] + D^2_{sw} G_g(0)[q_3(w), w].$$
- **At $n = 3$:**
  $$\frac{1}{6} D^3 G_g(0)[\zeta^3] = \frac{1}{6} D^3_{sss} G_g(0)[\zeta_s^3] + \frac{1}{2} D^3_{ssw} G_g(0)[\zeta_s^2, w] + \frac{1}{2} D^3_{sww} G_g(0)[\zeta_s, w^2] + \frac{1}{6} D^3_{www} G_g(0)[w^3],$$
  and substituting $\zeta_s = \zeta_s' + q_2(w)$ into the $(s,w,w)$ term gives
  $$\frac{1}{2} D^3_{sww} G_g(0)[\zeta_s, w^2] = \frac{1}{2} D^3_{sww} G_g(0)[\zeta_s', w^2] + \frac{1}{2} D^3_{sww} G_g(0)[q_2(w), w^2].$$

Now group all terms of $\widetilde{N}_g(\zeta)$ by their dependence on $(\tilde{\zeta}_s, \zeta_s', \zeta_s, w)$:
1. **Pure $w^2$ terms:** $\frac{1}{2} D^2_{ww} G_s(0)[w, w] + q_2(w) = 0$ identically for $g = 0$ ($s$), and $\|\frac{1}{2} D^2_{ww} G_w(0)[w, w]\|_2 \le \text{kap\_w2}\,W^2$ for $g = 1$ ($w$) by Lemma P1.1(2).
2. **Pure $w^3$ terms:** $D^2_{sw} G_s(0)[q_2(w), w] + \frac{1}{6} D^3_{www} G_s(0)[w^3] + q_3(w) = 0$ identically for $g = 0$ ($s$), and $\|D^2_{sw} G_w(0)[q_2(w), w] + \frac{1}{6} D^3_{www} G_w(0)[w^3]\|_2 \le \text{kap\_w3}\,W^3$ for $g = 1$ ($w$) by Lemma P1.1(2).
3. **Pure $w^4$ terms:** The four pure-$w$ terms of degree $4$,
   $$D^2_{sw} G_g(0)[q_3(w), w] + \frac{1}{2} D^2_{ss} G_g(0)[q_2(w), q_2(w)] + \frac{1}{2} D^3_{sww} G_g(0)[q_2(w), w^2] + \frac{1}{24} D^4_{wwww} G_g(0)[w^4] = P_{g,4}(w),$$
   satisfy $\|P_{g,4}(w)\|_2 \le \text{kap\_4}[g]\,W^4$ by Lemma P1.1(2).
4. **Remaining $\tilde{\zeta}_s w$ and $(\zeta_s')^2$ terms:** $\|D^2_{sw} G_g(0)[\tilde{\zeta}_s, w]\|_2 \le c_{g,2,1} S_t W$ and $\|\frac{1}{2} D^2_{ss} G_g(0)[\zeta_s', \zeta_s']\|_2 \le c_{g,2,0} S_{t3}^2$.
5. **Combined $\zeta_s' w^2$ terms:** By direct expansion of the 180 ridges,
   $$D^2_{ss} G_g(0)[\zeta_s', q_2(w)] + \frac{1}{2} D^3_{sww} G_g(0)[\zeta_s', w^2] = \bigl(w_1^2 L_{g,20} + 2 w_1 w_2 L_{g,11} + w_2^2 L_{g,02}\bigr)\zeta_s',$$
   whose norm is at most $\text{kap\_sw2}[g] \, S_{t3} W^2$ by Lemma P1.1(3).
6. **All remaining terms of degrees $3 \le n \le 8$:** Bounded term-by-term by $c_{g,3,1} S_{\text{full}}^2 W + c_{g,3,0} S_{\text{full}}^3 + \sum_{n=4}^8 \sum_{k=0, (n,k)\ne(4,4)}^n c_{g,n,k} S_{\text{full}}^{n-k} W^k$.

Summing these bounds by the triangle inequality proves the claim. $\blacksquare$

---

### Lemma P1.3 (REPAIRED IN REVIEW — Tightened H-Motion Floor, Split Operators, and 90-Ridge Bounds)

**Setting.** In the represented cell,
$$q(u,\xi)=Q_0+Uu+\frac12H_2(u\otimes u)+X\xi,\qquad \|u\|\le r,\quad\|\xi\|\le\tau.$$
Choose arbitrary reference phases $(q^*,y^*)$ and write
$$d=Uu,\quad h=\frac12H_2(u\otimes u)+\widetilde h,\quad
\widetilde h=Q_0-q^*+X\xi,\quad k=ET\zeta,\quad\zeta=z+\Lambda u,\quad\Lambda_w=0.$$
Put
$$\widetilde e_H=\|Q_0-q^*\|+\|X\|\tau,\qquad
e_H=\widetilde e_H+\frac12\|H_2\|r^2,\qquad d_u=\|U\|r,\qquad t=\|T\|.$$
Thus $\|\widetilde h\|\le\widetilde e_H$, $\|h\|\le e_H$, $\|d\|\le d_u$ and $\|k\|\le t\rho_\zeta$ whenever $\|\zeta\|\le\rho_\zeta$. All derivatives below are derivatives of the original residual $F$, with $H$ and $K$ denoting its first and second phase arguments. Define
$$J_H=F_H(q^*,y^*),\qquad L=DG(0)-I,\qquad K_u=DG(0)\Lambda+BJ_HU,$$
$$C_j=BF_{HK}(q^*,y^*)[Ue_j,ET\,\cdot]\quad(j=1,\dots,4),\qquad b_g=\|B_g\|\quad(g=s,w).$$
Displayed exact norms may be replaced by certified upper bounds, as in the implementation. No reference phase is assumed to solve the equations.

#### 1. Exact H-motion decomposition

Keep the pure-H Taylor expansion at the fixed phase $y^*$. Define
$$R_{HH}=F(q^*+d+h,y^*)-F(q^*+d,y^*)-J_Hh,$$
$$R_{HHH}=F(q^*+d,y^*)-F(q^*,y^*)-J_Hd-\frac12F_{HH}(q^*,y^*)[d,d].$$
The global bound $\|F_{HH}\|\le2\sqrt6$ implies
$$\|R_{HH}\|\le2\sqrt6\|d\|\|h\|+\sqrt6\|h\|^2.$$
Indeed, first subtract $F_H(q^*+d,y^*)h$ and apply the second-order integral remainder in $h$; the difference between this derivative and $J_H$ contributes at most $2\sqrt6\|d\|\|h\|$. There is **no** additional subtraction of $J_HH_2(u\otimes u)/2$ in this remainder.

For the joint increment, define the exact four-corner remainder
$$\begin{aligned}
R_h={}&F(q^*+d+h,y^*+k)-F(q^*+d,y^*+k)\\
&-F(q^*+d+h,y^*)+F(q^*+d,y^*),
\end{aligned}$$
and the integral remainder
$$R_{HHK}=\int_0^1(1-s)\bigl(F_{HH}(q^*+sd,y^*+k)-F_{HH}(q^*+sd,y^*)\bigr)[d,d],ds.$$
The reviewed global mixed-derivative bounds give
$$\|R_h\|\le2\|h\|\|k\|,\qquad
\|R_{HHK}\|\le\sqrt2\|d\|^2\|k\|.$$
The first follows by integrating $F_{HK}[h,k]$ over the unit square. The second follows from $\|F_{HHK}[d,d',k]\|\le2\sqrt2\|d\|\|d'\|\|k\|$ and $\int_0^1(1-s)ds=1/2$.

Taylor's formula in $d$, applied to the difference between the two K phases, now gives the exact identity
$$\begin{aligned}
F(q^*+d+h,y^*+k)={}&F(q^*,y^*+k)+J_H(d+h)+\frac12F_{HH}(q^*,y^*)[d,d]\\
&+R_{HH}+R_{HHH}+R_h+R_{HHK}\\
&+\bigl(F_H(q^*,y^*+k)-J_H\bigr)d.
\end{aligned}$$
Thus the $h$-dependent mixed terms are all included in $R_h$, while the mixed quadratic H remainder is all included in $R_{HHK}$.

#### 2. Uniform derivative constants, including the cubic H tail

For any $x\in\mathbb R^6$, set $z=x-\overline x\mathbf1$. Then
$$\sum_{s<t}(x_s-x_t)^2=6\|z\|^2,\qquad
\max_{s,t}|x_s-x_t|\le\sqrt2\|z\|\le\sqrt2\|x\|.$$
Consequently
$$\sum_{s<t}|x_s-x_t|^3\le6\sqrt2\|x\|^3.$$
Every mixed residual is a sum of cosine ridges with coefficient $1/3$. Its third H derivative in direction $d$ therefore satisfies
$$|(F_{HHH}[d,d,d])_{ab}|\le2\sqrt2\|d_a\|^3,$$
where $d_a$ is H column $a$. Summing over the six K columns and all H columns gives, uniformly in both reference phases,
$$\frac16\|F_{HHH}[d,d,d]\|
\le\frac16\sqrt{48\sum_a\|d_a\|^6}
\le\frac2{\sqrt3}\|d\|^3.$$
The third-order integral remainder after the quadratic Taylor polynomial therefore obeys
$$\|R_{HHH}\|\le\frac2{\sqrt3}d_u^3.$$

For completeness, Cauchy–Schwarz applied to the pair differences in each mixed component gives
$$\|F_{HK}[d,k]\|\le2\|d\|\|k\|,\qquad
\|F_{HHK}[d,d',k]\|\le2\sqrt2\|d\|\|d'\|\|k\|.$$
For example, the second componentwise bound follows by bounding the K difference by $\sqrt2\|k_b\|$ and the sum of the products of the two H differences by $6\|d_a\|\|d'_a\|$. Summing squares over $(a,b)$ gives the displayed full-vector bound.

The same cubic difference estimate gives
$$\|F_{HKKK}[d,k,k,k]\|\le4\|d\|\|k\|^3.$$
For the fourth K derivative one needs the sharper fourth-power identity
$$\sum_{s<t}(x_s-x_t)^4
=6\sum_s z_s^4+3\left(\sum_s z_s^2\right)^2
\le9\|z\|^4\le9\|x\|^4.$$
Bounding the H difference by $\sqrt2\|d_a\|$ then gives
$$\|F_{HKKKK}[d,k,k,k,k]\|\le3\sqrt2\|d\|\|k\|^4.$$
These are global phase bounds. Their Taylor coefficients are respectively $4/6=2/3$ and $3\sqrt2/24=\sqrt2/8$.

#### 3. Correct combined quadratic floor and split linear operators

Define the preconditioned K-nonlinear H-derivative remainder
$$R_{H,j}(\zeta)=B\bigl(F_H(q^*,y^*+ET\zeta)-J_H-F_{HK}(q^*,y^*)[\,\cdot,ET\zeta]\bigr)Ue_j.$$
The last term of the exact identity in part 1 then splits as
$$B\bigl(F_H(q^*,y^*+k)-J_H\bigr)d
=\sum_{j=1}^4u_jC_jz+\sum_{j=1}^4u_jC_j\Lambda u+\sum_{j=1}^4u_jR_{H,j}(\zeta).$$
The quadratic coefficient has a **plus** sign. For $j_1,j_2\in\{1,\dots,4\}$, flatten the ordered pair into column $4(j_1-1)+(j_2-1)$ and set
$$\begin{aligned}
M_{\mathrm{comb}}[:,(j_1,j_2)]
=\frac12\bigl(&BJ_HH_2[:,(j_1,j_2)]
+BF_{HH}(q^*,y^*)[Ue_{j_1},Ue_{j_2}]\\
&+C_{j_1}\Lambda e_{j_2}+C_{j_2}\Lambda e_{j_1}\bigr).
\end{aligned}$$
Since $\|u\otimes u\|=\|u\|^2$, the constant floor in output block $g\in\{s,w\}$ is
$$\eta_g=r\|(K_u)_g\|+\widetilde e_H\|(BJ_H)_g\|
+r^2\|(M_{\mathrm{comb}})_g\|
+b_g e_H(2\sqrt6d_u+\sqrt6e_H)+\frac2{\sqrt3}b_gd_u^3.$$
This is the repaired matrix and floor evaluated by `curved_expansion`.

For coordinate block $a\in\{s,w\}$ define
$$C^{\mathrm{horiz}}_{g,a}=[(C_1)_{g,a}\ \cdots\ (C_4)_{g,a}],\qquad
C^{\mathrm{vert}}_{g,a}=[(C_1)_{g,a};\dots;(C_4)_{g,a}].$$
The horizontal bound follows by applying the concatenated matrix to $u\otimes z_a$. Cauchy–Schwarz over $j$ gives the vertical bound. Hence
$$\left\|\sum_j u_j(C_j)_{g,a}z_a\right\|
\le r\min(\|C^{\mathrm{horiz}}_{g,a}\|,\|C^{\mathrm{vert}}_{g,a}\|)\|z_a\|,$$
and the valid split coefficients are
$$\beta_{g,s}=\|L_{g,s}\|+r\min(\|C^{\mathrm{horiz}}_{g,s}\|,\|C^{\mathrm{vert}}_{g,s}\|),$$
$$\beta_{g,w}=\|L_{g,w}\|+r\min(\|C^{\mathrm{horiz}}_{g,w}\|,\|C^{\mathrm{vert}}_{g,w}\|).$$

#### 4. Exact 90-ridge expansion and its Gram bounds

For mixed ridge $(b,s,t)$, $s<t$, put
$$\phi_{ab,st}=-q^*_{sa}+y^*_{sb}+q^*_{ta}-y^*_{tb},\qquad
\delta_{j,a,st}=U_{ta,j}-U_{sa,j}.$$
The H derivative of that residual ridge is exactly
$$-\frac{\delta_{j,a,st}}3\sin(\phi_{ab,st}+a_l^\top\zeta)
=-\frac{\delta_{j,a,st}\sin\phi_{ab,st}}3\cos(a_l^\top\zeta)
-\frac{\delta_{j,a,st}\cos\phi_{ab,st}}3\sin(a_l^\top\zeta).$$
Thus `raw_s_j` must have coefficient $-\delta_j\sin\phi/3$, and `raw_c_j` must have coefficient $-\delta_j\cos\phi/3$. With
$$BC_j=B\,\mathrm{raw\_s}_j,\qquad BS_j=B\,\mathrm{raw\_c}_j,$$
one obtains the exact identity
$$BF_H(q^*,y^*+ET\zeta)Ue_j
=\sum_{l=0}^{89}\bigl(BC_j[:,l]\cos(a_{90+l}^\top\zeta)
+BS_j[:,l]\sin(a_{90+l}^\top\zeta)\bigr).$$
All 30 K-Gram components have zero H derivative. After subtracting the constant and linear terms, this is the ridge expansion of $R_{H,j}$.

For output block $g$, stack the four coefficient matrices vertically:
$$V_{C,g}=[(BC_1)_g;\dots;(BC_4)_g],\qquad
V_{S,g}=[(BS_1)_g;\dots;(BS_4)_g].$$
The stacking is valid because
$$\left\|\sum_j u_j(R_{H,j})_g\right\|
\le\|u\|\left(\sum_j\|(R_{H,j})_g\|^2\right)^{1/2}.$$
Let $A_s^m,A_w^m$ be the 90 mixed-ridge frequency matrices, with
$K_s^m=A_s^m(A_s^m)^\top$, $K_w^m=A_w^m(A_w^m)^\top$, and let $\circ$ denote the Hadamard product. The quadratic coefficients are bounded by
$$\begin{aligned}
\mathrm{fhkk\_ss}[g]&=\frac12\sqrt{\left\|(A_s^m)^\top\bigl((V_{C,g}^\top V_{C,g})\circ K_s^m\bigr)A_s^m\right\|},\\
\mathrm{fhkk\_sw}[g]&=\sqrt{\left\|(A_s^m)^\top\bigl((V_{C,g}^\top V_{C,g})\circ K_w^m\bigr)A_s^m\right\|},\\
\mathrm{fhkk\_ww}[g]&=\frac12\sqrt{\left\|(A_w^m)^\top\bigl((V_{C,g}^\top V_{C,g})\circ K_w^m\bigr)A_w^m\right\|}.
\end{aligned}$$
These are strong/weak input Gram flattenings with the Taylor factors $1/2,1,1/2$. Their contribution is
$$\gamma_{u,2,g}=r\bigl(\mathrm{fhkk\_ss}[g]S_{\mathrm{full}}^2
+\mathrm{fhkk\_sw}[g]S_{\mathrm{full}}W+\mathrm{fhkk\_ww}[g]W^2\bigr).$$

For cubic degree with $k$ weak inputs, let $n_s=3-k$. If $n_s>0$, the Gram matrix is
$$(A_s^m)^\top\left((V_{S,g}^\top V_{S,g})\circ(K_s^m)^{\circ(n_s-1)}\circ(K_w^m)^{\circ k}\right)A_s^m.$$
For $k=3$ it is
$$(A_w^m)^\top\left((V_{S,g}^\top V_{S,g})\circ(K_w^m)^{\circ2}\right)A_w^m.$$
The square root of the spectral norm divided by $(3-k)!k!$ gives `fhkkk[g][k]`. These formulas are the standard input flattenings of the stacked derivative tensor and require no orthogonality among its four output copies beyond the direct-sum Euclidean norm.

For output coordinate $i$ and ridge $l$, let
$$A_{i,l}^{(u)}=\sqrt{\sum_j(BC_j[i,l]^2+BS_j[i,l]^2)},\qquad
v_l=\|(A_s^m)_{l,:}\|S_{\mathrm{full}}+\|(A_w^m)_{l,:}\|W.$$
Cauchy–Schwarz over $j$ bounds the amplitude after contraction with $u$ by $rA_{i,l}^{(u)}$. The fourth-order scalar Lagrange remainder on each ridge is at most this amplitude times $v_l^4/24$. Thus
$$\gamma_{u,4,g}^{\mathrm{ridge}}
=r\left\|\left(\sum_{l=0}^{89}A_{i,l}^{(u)}\frac{v_l^4}{24}\right)_{i\in g}\right\|$$
is valid. Define
$$\gamma_{u,4,g}=\min\left(\gamma_{u,4,g}^{\mathrm{ridge}},\frac{\sqrt2}{8}b_gd_u(t\rho_\zeta)^4\right),$$
$$\gamma_{u,3,g}=\min\left(\frac23b_gd_u(t\rho_\zeta)^3,
\ r\sum_{k=0}^3\mathrm{fhkkk}[g][k]S_{\mathrm{full}}^{3-k}W^k+\gamma_{u,4,g}\right).$$
The first candidate is a cubic Lagrange bound after the quadratic polynomial; the second retains the cubic polynomial and bounds its fourth-order tail. Both bound the same remainder, so their minimum is valid. Combining the exact decomposition above yields precisely
$$\gamma_g=2b_ge_Ht\rho_\zeta+\sqrt2b_gd_u^2t\rho_\zeta
+\gamma_{u,2,g}+\gamma_{u,3,g}.$$
Every bound is uniform over all actual H and K phases in the stated enclosure. $\blacksquare$

---

### Lemma P1.4 (REPAIRED IN REVIEW — Combined Gram Flattenings and 16-Angle Directional Bound)

#### 1. Sixteen angular directions

For output block $g$, define
$$M_{g,sw,m}=-(C_{f,g}\operatorname{diag}(a_{w,m}))A_s\quad(m=1,2).$$
Then
$$D^2_{sw}G_g(0)[s,w]
=\|w\|\bigl(\cos\theta\,M_{g,sw,1}+\sin\theta\,M_{g,sw,2}\bigr)s,$$
when $w=\|w\|(\cos\theta,\sin\theta)$. Consider the 16 directions
$\theta_j=\pi j/16$, $0\le j<16$, modulo sign. The endpoint at $\pi$ is the negative of the endpoint at zero and therefore has the same operator norm. Between consecutive rays, a unit vector is a positive linear combination of the endpoints, with coefficient sum at most $1/\cos(\pi/32)$. To see this, rotate the two endpoints to angles $\pm\pi/32$: their combination has first coordinate $(\lambda+\mu)\cos(\pi/32)=\cos\delta\le1$.

It follows that the exact bilinear operator norm is at most
$$c^{\mathrm{ang}}_{g,2,1}
=\frac1{\cos(\pi/32)}\max_{0\le j<16}
\left\|\cos(\pi j/16)M_{g,sw,1}+\sin(\pi j/16)M_{g,sw,2}\right\|.$$
Consequently `c[g,2,1]` may be replaced by the minimum of its prior valid upper bound and a certified upper bound for $c^{\mathrm{ang}}_{g,2,1}$. This does not assert that every previously chosen overestimate is itself smaller than the new estimate.

#### 2. Combined degree-two bound

Fix any $\alpha>0$ and set
$$v=(s,\sqrt\alpha\,w),\qquad b_l=(a_{l,s}/2,a_{l,w}/\sqrt\alpha).$$
The strong and weak blocks belong to an orthogonal direct sum, so
$$\|v\|^2=\|s\|^2+\alpha\|w\|^2,\qquad
b_l\cdot b_m=\frac14(K_S)_{lm}+\frac1\alpha(K_W)_{lm}.$$
Moreover,
$$(a_{l,s}^\top s)(b_l^\top v)
=\frac12(a_{l,s}^\top s)^2+(a_{l,s}^\top s)(a_{l,w}^\top w).$$
Consider the linear map from the strong input into the output–feature tensor product,
$$\mathcal T_{g,2}:s\longmapsto\sum_l(C_{f,g})_{:,l}\otimes b_l\,(a_{l,s}^\top s).$$
Its Gram matrix is exactly
$$G^{(2)}_{g,\alpha}=A_s^\top\left((C_{f,g}^\top C_{f,g})\circ\left(\frac14K_S+\frac1\alpha K_W\right)\right)A_s.$$
Contracting the feature factor against $v$ produces the degree-two polynomial, up to the common minus sign from the cosine derivatives. Tensor contraction has norm at most $\|v\|$, so
$$\left\|\frac12D^2_{ss}G_g(0)[s,s]+D^2_{sw}G_g(0)[s,w]\right\|
\le\sqrt{\|G^{(2)}_{g,\alpha}\|}\,\|s\|\sqrt{\|s\|^2+\alpha\|w\|^2}.$$
This holds for every $\alpha>0$. The implementation uses $\alpha\in\{7/10,1,6/5\}$.

#### 3. Combined degree-three bound

Retain $v=(s,\sqrt\alpha\,w)$ and define the symmetric matrix feature
$$D_l=\begin{pmatrix}
 a_{l,s}a_{l,s}^\top/6 & a_{l,s}a_{l,w}^\top/(4\sqrt\alpha)\\
 a_{l,w}a_{l,s}^\top/(4\sqrt\alpha) & a_{l,w}a_{l,w}^\top/(2\alpha)
\end{pmatrix}.$$
Writing $x_l=a_{l,s}^\top s$ and $y_l=a_{l,w}^\top w$ gives
$$v^\top D_lv=\frac16x_l^2+\frac12x_ly_l+\frac12y_l^2.$$
The Frobenius inner products of these features are exactly
$$\langle D_l,D_m\rangle_F
=\frac1{36}(K_S)_{lm}^2
+\frac1{8\alpha}(K_S)_{lm}(K_W)_{lm}
+\frac1{4\alpha^2}(K_W)_{lm}^2.$$
The mixed term has two equal contributions, one from each off-diagonal block; this accounts for the factor $1/(8\alpha)$.

The linear map
$$\mathcal T_{g,3}:s\longmapsto\sum_l(S_{f,g})_{:,l}\otimes D_l\,(a_{l,s}^\top s)$$
has Gram matrix
$$G^{(3)}_{g,\alpha}=A_s^\top\left((S_{f,g}^\top S_{f,g})\circ\left(
\frac1{36}K_S^{\circ2}+\frac1{8\alpha}K_S\circ K_W+\frac1{4\alpha^2}K_W^{\circ2}\right)\right)A_s.$$
Contract the matrix feature against $v\otimes v$, whose norm is $\|v\|^2$. Up to the common sine-derivative sign, the resulting polynomial is the sum of the three cubic Taylor terms containing a strong input. Therefore
$$\begin{aligned}
\bigl\|\tfrac16D^3_{sss}G_g(0)[s^3]
+\tfrac12D^3_{ssw}G_g(0)[s^2,w]
+\tfrac12D^3_{sww}G_g(0)[s,w^2]\bigr\|
\le\sqrt{\|G^{(3)}_{g,\alpha}\|}\,\|s\|(\|s\|^2+\alpha\|w\|^2).
\end{aligned}$$
This again holds for every $\alpha>0$; the code uses $\alpha\in\{1,6/5\}$. These are exact Gram flattenings, not termwise comparisons of signed monomials. Certified spectral upper bounds and minima with independent split bounds preserve the inequalities. $\blacksquare$

---

### Lemma P1 (REPAIRED IN REVIEW — Cubic Normal-Form Localisation Lemma)

**Claim.** Write any putative zero over the cell in the column-phase convention as $y = y^* + E T(z + \Lambda u)$ with $\Lambda_w = 0$ (so $\zeta = z + \Lambda u$ has $\zeta_s = z_s + \Lambda_s u$ and $\zeta_w = z_w$). Define the cubic normal-form strong coordinate
$$\tilde{z}_s := z_s - q_2(z_w) - q_3(z_w) \in \mathbb{R}^{28},$$
and put $\tilde{S} := \|\tilde{z}_s\|_2$ and $W := \|z_w\|_2 = \|\zeta_w\|_2$. Suppose $\|\zeta\|_2 \le R$ and $\|\zeta_s\|_2 \le s_{\text{cap}}$. Then at any zero over the cell:
$$\tilde{S} \le \|G_s(0)\|_2 + \text{curved\_slack}_s(\tilde{S}, W; s_{\text{cap}}, R), \qquad W \le \|G_w(0)\|_2 + \text{curved\_slack}_w(\tilde{S}, W; s_{\text{cap}}, R),$$
where for each block $g \in \{0, 1\}$ ($s$ or $w$),
$$\text{curved\_slack}_g(\tilde{S}, W; s_{\text{cap}}, R) = \eta_g + \beta_{g,s} S_z + \beta_{g,w} W + \gamma_g(S_{\text{full}}, W, \rho_\zeta) + \min\bigl(P^{\text{curved}}_g, P^{\text{flat}}_g\bigr) + T_{g,9}(S_{\text{full}}, W),$$
with
$$\begin{aligned}
S_t &= \tilde{S} + \|\Lambda_s\|_2 r, \qquad S_{t3} = S_t + \text{kap\_q3}\,W^3, \\
S_{\text{full}} &= \min\bigl(s_{\text{cap}}, \, S_t + \text{kap\_q}\,W^2 + \text{kap\_q3}\,W^3\bigr), \\
S_z &= \min\bigl(\tilde{S} + \text{kap\_q}\,W^2 + \text{kap\_q3}\,W^3, \, s_{\text{cap}} + \|\Lambda_s\|_2 r\bigr), \\
\rho_\zeta &= \min\bigl(R, \, \sqrt{S_{\text{full}}^2 + W^2}\bigr).
\end{aligned}$$

**Proof.** At a zero $(q,y)$ of $F$, $0=BF(q,y)$. Apply the exact decomposition of repaired Lemma P1.3, with all pure-H remainders based at $y^*$ and the mixed $h$-increment included in its four-corner remainder $R_h$. Since $G(\zeta)=G(0)+(I+L)\zeta+N(\zeta)$ and $\zeta=z+\Lambda u$, this gives:
$$z = -\bigl[G(0) + L z + K_u u + N(\zeta) + B J_H \tilde{h} + M_{\text{comb}}(u \otimes u) + B R_{HH}(u, h) + B R_{HHH}(u) + \sum_{j=1}^4 u_j C_j z + B R_h + B R_{HHK} + \sum_{j=1}^4 u_j R_{H,j}(\zeta)\bigr].$$
Subtract $q_2(z_w) + q_3(z_w)$ from both sides of the strong block $s$ (noting $\zeta_w = z_w$ since $\Lambda_w = 0$): the left-hand side of block $s$ becomes $z_s - q_2(z_w) - q_3(z_w) = \tilde{z}_s$, and the outer minus sign means that the term inside the right-hand bracket becomes $\widetilde{N}_s(\zeta) = N_s(\zeta) + q_2(\zeta_w) + q_3(\zeta_w)$. The coordinate change itself is unchanged: it is the globally invertible polynomial shear $(z_s,w)\mapsto(z_s-q_2(w)-q_3(w),w)$, with inverse $(\widetilde z_s,w)\mapsto(\widetilde z_s+q_2(w)+q_3(w),w)$, so every original zero remains represented.
Note that $\|\tilde{\zeta}_s\|_2 = \|\tilde{z}_s + \Lambda_s u\|_2 \le \tilde{S} + \|\Lambda_s\|_2 r = S_t$, $\|\zeta_s'\|_2 = \|\tilde{\zeta}_s + q_3(w)\|_2 \le S_{t3}$, $\|\zeta_s\|_2 \le S_{\text{full}}$, and $\|z_s\|_2 \le S_z$.
Applying Lemmas P1.2, P1.3, and P1.4 to bound the norms of blocks $s$ and $w$ on the right-hand side gives the claim. Moreover, every term in $\text{curved\_slack}_g(\tilde{S}, W; s_{\text{cap}}, R)$ is monotonically non-decreasing in $\tilde{S}$ and $W$ and monotonically non-increasing in lower bounds on $W$ (via $s_{\text{cap}} = \min(\text{scap}, \sqrt{\max(0, R^2 - W_{\min}^2)})$), so evaluating $\text{curved\_slack}_g$ at the upper corner $(s_u, w_u)$ of a box $[s_l, s_u] \times [w_l, w_u]$ with $s_{\text{cap}} = \min(\text{scap}, \sqrt{\max(0, R^2 - w_l^2)})$ yields a valid upper bound over the entire box. $\blacksquare$

---

### Lemma E1′ (REVIEWED PASS — Weak-Ray Centred Strong Cap $\text{scap}(w_0)$ on the Colour Product)

**Statement.** Let $P_c \subset \mathbb{R}^5$ ($c = 0,\dots,5$) be the Helmert-projected bin centres of a pattern relative to $y^*$, with bin radius $\rho > 0$. For any proposed vector $w_0 \in \mathbb{R}^2$, let $\zeta_0 := (0_{28}, w_0)^\top \in \mathbb{R}^{30}$, $x_0 := T \zeta_0 \in \mathbb{R}^{30}$ (with 5-dimensional colour blocks $x_{0,c} \in \mathbb{R}^5$), and $\varepsilon_{w_0} := \|T^{-1} x_0 - \zeta_0\|_2$. Define
$$r_c(w_0) := \max_{p \in P_c} \|p - x_{0,c}\|_2 + \rho, \qquad \text{scap}_w(w_0) := \|T^{-1}\|_2 \sqrt{\sum_{c=0}^5 r_c(w_0)^2} + \varepsilon_{w_0}.$$
Then every point $x \in (P_0 + B_\rho) \times \dots \times (P_5 + B_\rho)$ has strong coordinate $\zeta_s = (T^{-1} x)_s$ satisfying
$$\|\zeta_s\|_2 \le \text{scap}_w(w_0).$$

**Proof.** Since $\zeta_0 = (0_{28}, w_0)^\top$ has zero strong part,
$$\|\zeta_s\|_2 \le \sqrt{\|\zeta_s\|_2^2 + \|\zeta_w - w_0\|_2^2} = \|\zeta - \zeta_0\|_2 = \|T^{-1}(x - x_0) + (T^{-1} x_0 - \zeta_0)\|_2 \le \|T^{-1}\|_2 \|x - x_0\|_2 + \varepsilon_{w_0}.$$
For each colour $c \in \{0,\dots,5\}$, $x_c = p_c + \delta_c$ with $p_c \in P_c$ and $\|\delta_c\|_2 \le \rho$, so $\|x_c - x_{0,c}\|_2 \le r_c(w_0)$ and $\|x - x_0\|_2 \le \sqrt{\sum_{c=0}^5 r_c(w_0)^2}$. $\blacksquare$

---

### Lemma E2′ (REVIEWED PASS — Per-Colour Split Tube Bound from Localisation to Step F)

**Statement.** For each column $c \in \{0,\dots,5\}$, let $T_{s,c} \in \mathbb{R}^{5 \times 28}$ be rows $5c..5c+4$, columns $0..27$ of $T$, and let $T_{w,c} \in \mathbb{R}^{5 \times 2}$ be rows $5c..5c+4$, columns $28..29$ of $T$. Put
$$\text{nTs\_c} := \max_{0 \le c < 6} \|T_{s,c}\|_2, \qquad \text{nTw\_c} := \max_{0 \le c < 6} \|T_{w,c}\|_2.$$
If a solution has $\|\tilde{z}_s\|_2 \le s_u$ and $\|z_w\|_2 \le w_u$, then its column-centred phase error $e_c = W_6 (T z)_c \in \mathbb{R}^6$ relative to the moving reference $y^*(u) = y^* + E T \Lambda u$ satisfies, for every $c \in \{0,\dots,5\}$,
$$\|e_c\|_2 \le \text{nTs\_c} \cdot \bigl(s_u + \text{kap\_q}\,w_u^2 + \text{kap\_q3}\,w_u^3\bigr) + \text{nTw\_c} \cdot w_u.$$

**Proof.** Since $W_6^\top W_6 = I_5$, $\|e_c\|_2 = \|W_6 (T z)_c\|_2 = \|(T z)_c\|_2 = \|T_{s,c} z_s + T_{w,c} z_w\|_2 \le \|T_{s,c}\|_2 \|z_s\|_2 + \|T_{w,c}\|_2 \|z_w\|_2$. By the triangle inequality, $\|z_s\|_2 = \|\tilde{z}_s + q_2(z_w) + q_3(z_w)\|_2 \le s_u + \text{kap\_q}\,w_u^2 + \text{kap\_q3}\,w_u^3$. Taking the maximum over $c \in \{0,\dots,5\}$ gives the bound. $\blacksquare$

---

### Lemma E3 (REVIEWED PASS — Recursive Core + Outer-Peel Exhaustion on the Retained Fine-Bin Graph)

**Statement.** Let $G = (V, \mathcal{E})$ be the retained 6-partite fine-bin compatibility graph produced by `fine_patterns.refine` (Reviewed Result N9) for a 6-clique of colours $\{0,\dots,5\}$, where $V = V_0 \sqcup \dots \sqcup V_5$. Let $U \subseteq V$ ($U_c = U \cap V_c$) be any subset of vertices, and let $I \subseteq U$ be any fixed subset of vertices ("core" bins, defined by an Arb threshold test $\neg(r_b > \tau)$ on the bin reach $r_b = \|p_b\|_2 + \rho$). For any starting colour index $s_{\text{col}} \in \{0,\dots,5\}$, define the $1 + (6 - s_{\text{col}})$ subsets of $U$:
- $U^{\text{core}} := \bigl(\bigsqcup_{c < s_{\text{col}}} U_c\bigr) \sqcup \bigl(\bigsqcup_{c \ge s_{\text{col}}} (U_c \cap I)\bigr)$, and
- for each $a \in \{s_{\text{col}}, \dots, 5\}$,
  $$U^{\text{out}, a} := \bigl(\bigsqcup_{c < s_{\text{col}}} U_c\bigr) \sqcup \bigl(\bigsqcup_{s_{\text{col}} \le c < a} (U_c \cap I)\bigr) \sqcup (U_a \setminus I) \sqcup \bigl(\bigsqcup_{c > a} U_c\bigr).$$
Then:
1. Every 6-tuple $(b_0, \dots, b_5) \in U_0 \times \dots \times U_5$ belongs to $U^{\text{core}}_0 \times \dots \times U^{\text{core}}_5$ or to $U^{\text{out}, a}_0 \times \dots \times U^{\text{out}, a}_5$ for a unique $a \in \{s_{\text{col}}, \dots, 5\}$.
2. On each branch $W \in \{U^{\text{core}}, U^{\text{out}, s_{\text{col}}}, \dots, U^{\text{out}, 5}\}$, applying arc-consistency (`propagate_ac` on $G|_W$, which repeatedly removes any vertex $v \in W_c$ that has no edge in $\mathcal{E}$ to $W_{c'}$ for some $c' \ne c$) preserves every 6-clique of $G$ contained in $W$.
3. Consequently, if a recursive partition tree starting from $U = V$ has every surviving leaf either emptied by `propagate_ac`, excluded by Lemma P1, or classified by Lemma P1 + Step F (N6 or Lemma P2), then the entire pattern $V$ is certified (EXCLUDED if all leaves are excluded, CLASSIFIED if any leaf is classified and none is open).

**Proof.**
1. For any $(b_0, \dots, b_5) \in U_0 \times \dots \times U_5$, either $b_c \in I$ for all $c \in \{s_{\text{col}}, \dots, 5\}$ (in which case $(b_0, \dots, b_5) \in U^{\text{core}}_0 \times \dots \times U^{\text{core}}_5$), or there is a smallest index $a \in \{s_{\text{col}}, \dots, 5\}$ such that $b_a \notin I$ (in which case $b_c \in I$ for all $s_{\text{col}} \le c < a$ and $b_a \in U_a \setminus I$, so $(b_0, \dots, b_5) \in U^{\text{out}, a}_0 \times \dots \times U^{\text{out}, a}_5$).
2. Any actual completion in the branch $W$ corresponds to a 6-tuple $(b_0, \dots, b_5) \in W_0 \times \dots \times W_5$ that forms a 6-clique in $G$ (by N9). Since every vertex $b_c$ of a 6-clique in $W$ has neighbour $b_{c'} \in W_{c'}$ for every $c' \ne c$, no vertex of a 6-clique can ever be removed by `propagate_ac`.
3. By induction on the finite partition tree, every 6-clique in $V$ lies in at least one surviving leaf, so discharging all leaves discharges $V$. $\blacksquare$

---

### Lemma P2 (REVIEWED PASS — Moving Contraction with a $u$-Affine Preconditioner)

*(Identical to `hardballs/PROOFS.md` P2; included for completeness as `moving.py` evaluates `ok = q_native < 1 or q_p2 < 1`.)*

**Setting** (N6, `family_neighbourhoods/PROOF.md` §6). Let $x$ be a putative solution in the joint gauge, $\bar{x}$ its canonical group average, $e = x - \bar{x} \in \operatorname{range} E$, and $A_0 = E A' Q_Y$ the native preconditioner ($A_0 F(\bar{x}) = 0$). Writing $M(u) = \int_0^1 D F(\bar{x} + s e)\,ds$, for every $\|u\|_2 \le r$,
$$A_0 M(u) E = E + \Delta_0 + \Delta_c + \sum_{k=1}^4 u_k V_k + \Delta_{\text{rest}},$$
with $\|\Delta_0\|_2 \le \eta$, $\|\Delta_{\text{rest}}\|_2 \le h + R$, and $V_k E = V_k$.

**Claim.** Let $\nu = \|[V_1 \;\; V_2 \;\; V_3 \;\; V_4]\|_2$ ($72 \times 288$) and $\mu = \|[V_j V_k]_{j,k=1..4}\|_2$ ($72 \times 1152$). If
$$q_2 := \mu r^2 + (1 + \nu r)(\eta + \|\Delta_c\|_2 + h + R) < 1,$$
then every putative solution in N6's enclosure has $e = 0$ (balanced order-three symmetry).

**Proof.** Set $\Pi(u) = I - \sum_{k=1}^4 u_k V_k$ and $A(u) = \Pi(u) A_0$. Then $A(u) F(\bar{x}) = 0$, so $0 = A(u)(F(x) - F(\bar{x})) = A(u) M(u) e$. Since $V_k E = V_k$,
$$E - A(u) M(u) E = \sum_{j,k=1}^4 u_j u_k V_j V_k - \Pi(u)(\Delta_0 + \Delta_c + \Delta_{\text{rest}}),$$
whose spectral norm on $\operatorname{range} E$ is at most $\mu \|u\|_2^2 + (1 + \nu \|u\|_2)(\eta + \|\Delta_c\|_2 + h + R) \le q_2 < 1$. Thus $e = E e = 0$. $\blacksquare$
