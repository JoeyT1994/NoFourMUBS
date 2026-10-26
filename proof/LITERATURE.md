# Literature and credit

## What is new, and what is credited

| Result here | Prior literature | Assessment |
|---|---|---|
| **Theorem 1:** the positive local maxima of the corner invariant R form one 18-point orbit, max R = 3¹³/2¹², at α(1, 2, −1, −2), α = arccos(1/4) | R is the corner invariant of the classification [CT]. No earlier occurrence of the value or of the arccos(1/4) orbit was found | Appears new |
| **Theorem 2:** (𝓗/≅) ∖ {S₆} is connected | Bengtsson, Bruzda, Ericsson, Larsson, Tadej and Życzkowski (2007) observed that the *then-known* order-6 Hadamard matrices form a connected set apart from S₆ | New as a theorem about **all** order-6 Hadamard matrices; it upgrades the 2007 observation and rests on [CT] |
| **Exceptional classes** | [CT] singles out S₆ and one Karlsson matrix, H_cross, as lacking a product-regular frame | Not a gap: MC1 gives H_cross a strict corner, so it lies in the image used by Step 2 |
| **Uniform conditioning** (rank J = 21, σ ≥ √3 away from S₆) | Tadej–Życzkowski's defect; Szöllősi and Bondal–Zhdanovskiy on the 4-parameter family | Open, and not needed: every Record certifies its own σ |
| **Stage C** (vector labels, O/U graphs, clique exclusion) | openai/math (2026) §6, after Jaming–Matolcsi–Móra–Szöllősi–Weiner (2009) and Jaming–Matolcsi–Móra (2010) | Method credited; every inequality is reproved in [`atlas/STAGEC.md`](atlas/STAGEC.md) and formalised in Lean |

## The openai/math proof

OpenAI, *The maximum number of mutually unbiased bases in dimension six* (preprint, 24 Sep 2026), proves N(6) = 3, computer-assisted and conditional on binary64 arithmetic and stated compiler conditions. Its pipeline:

1. **Seed cover.** 249,878 balls cover the nine seed phases of every Hadamard up to equivalence.
2. **Stages A and B.** Completion turns each ball into certified *Records*: a centre, a tangent frame and a normal-displacement bound. This gives 22,379 fine Records.
3. **Stage C.** This excludes two further bases on each Record. Unbiased vectors are binned and compressed into labels, which are pairwise neither orthogonal nor unbiased. Labels are joined by O and U edges unless necessary tests (with the shared tangent displacement) exclude them. An exact search shows there are no two disjoint 6-cliques of O with all 36 cross edges in U.

**What we take.**

| Theirs | Ours |
|---|---|
| Stage C (§6) | [`atlas/stagec.py`](atlas/stagec.py), with Arb-tabulated exponentials; inequalities reproved ([`atlas/STAGEC.md`](atlas/STAGEC.md)) |
| Records (centre, frame, normal bound) | Ball Records ([`atlas/ballrecord.py`](atlas/ballrecord.py)); σ by an Arb Cholesky factorisation and the base-independent bound ‖Φ″‖ ≤ 2√3 |
| Seed cover and Stage A (how every Hadamard is reached) | **Replaced** by topology: the non-Tao quotient is connected, so any finite union of Records whose boundaries transfer into one another covers it |

**How the two proofs differ.**

| | openai/math | This proof |
|---|---|---|
| Coverage | 9-dimensional seed cover and a searched completion; no classification | Connectedness of (𝓗/≅) ∖ {S₆}, from exact algebra and the corner reconstruction; no classification |
| Cover object | 22,379 Records from 249,878 seed balls | One atlas of ⟨N⟩ seed balls in the four seed phases of a corner, and one ball at F6 excluded by return X, with certified boundary transfers |
| Arithmetic | binary64 with one-sided margins | Arb for every enclosure and transfer; binary64 with margins only inside Stage C; a second, independent interval implementation |

## Sources

- [CT] M. Cárdenes Wuttig, J. Tindall, [*A complete classification of complex Hadamard matrices of order six*](https://arxiv.org/abs/2608.18053), arXiv:2608.18053.
- I. Bengtsson, W. Bruzda, Å. Ericsson, J.-Å. Larsson, W. Tadej, K. Życzkowski, [*Mutually unbiased bases and Hadamard matrices of order six*](https://chaos.if.uj.edu.pl/~karol/pdf/BBELTZ07.pdf), J. Math. Phys. 48 (2007) 052106.
- F. Szöllősi, [*Complex Hadamard matrices of order 6: a four-parameter family*](https://arxiv.org/abs/1008.0632).
- [*Four-parameter families of complex Hadamard matrices of order six*](https://arxiv.org/abs/1207.2593); [*Families of complex Hadamard matrices*](https://arxiv.org/abs/1202.1181); [*Defect of a Kronecker product of unitary matrices*](https://arxiv.org/abs/1009.4037).
- [*Mutually unbiased bases in composite dimensions — a review*](https://arxiv.org/abs/2410.23997).
- [OAI] OpenAI, *The maximum number of mutually unbiased bases in dimension six*, preprint (2026), openai/math.
