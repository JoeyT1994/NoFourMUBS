# Sources and attribution

## The reused interval engine

The interval-search code is adapted from Hao-Yu Sun,
**Mutually unbiased bases: common states, completion, and extension
obstructions**, [arXiv:2610.12180v1](https://arxiv.org/html/2610.12180v1).
The article's arXiv record specifies
[CC BY 4.0](https://creativecommons.org/licenses/by/4.0/).
The acquired source archive includes the ancillary neighborhood engine:

| Item | Original locator or SHA-256 |
|---|---|
| Pinned archive URL | https://arxiv.org/src/2610.12180v1 |
| Archive SHA-256 | 407c9a89ab2b4ddd8d7000bdc1b895814a8a806ee56edadce6c29aba4b885f06 |
| Engine within archive | anc/source_neighborhood/a119_independent.cpp |
| Original engine SHA-256 | 2c6692308f5a8ba99d5db0b0f1ff46b526ff9d1464c062267bcb012d36095d87 |
| Original header within archive | anc/source_neighborhood/fixed_inputs.h |
| Original header SHA-256 | 995e1f73ee83820516c284c19d03a57d01da2068b214812673a58a398277d666 |

The new Diţă source changes the anchor, candidate proposals, residual
allowance, acceptance condition, and exact-integer implementation. Its
modified source and arithmetic proof identify these changes. Sun's
historical search used a different anchor and 48 candidates; that result
is not evidence of the present 120-template cover. The current bundle
contains its own fresh completed run and exact checks.

The original engine and header may be retained under the bundle's
third-party source directory for comparison, with this attribution and
the CC BY license link. The full article, original historical run outputs,
and original source-input control run are unnecessary dependencies of
the new proof.

## The Diţă anchor and historical candidate counts

The raw anchor and affine deformation appear in Stephen Brierley and
Stefan Weigert,
[Constructing Mutually Unbiased Bases in Dimension Six,
arXiv:0901.4051v2](https://arxiv.org/abs/0901.4051v2):
Section 4.1, Equation (30), and Appendix A.2. The paper reports 120
candidate rays and ten companions at the special Diţă point. Its source
archive contains the paper and figures, rather than a complete exact
120-ray data certificate.

The related early calculation appears in Ingemar Bengtsson and coauthors,
[Mutually unbiased bases and Hadamard matrices of order six,
arXiv:quant-ph/0610161v3](https://arxiv.org/abs/quant-ph/0610161v3),
Section 7; published as
[J. Math. Phys. 48, 052106 (2007)](https://doi.org/10.1063/1.2716990).
Brierley–Weigert correct an interchange in the final two descriptions of
the earlier paper's Diţă list.

For acquisition reproducibility:

| Pinned source URL | Archive SHA-256 |
|---|---|
| https://arxiv.org/src/0901.4051v2 | 5d732e27c6371fcd1f66fcb1e59e8473e69c98bad21a4e3ea4507e609e6d95c0 |
| https://arxiv.org/src/quant-ph/0610161v3 | 5d62bf912e03ef8f803e6ef2c4ba1801a4f071bb2aa085097e34cc1dffb1f839 |

These articles supply historical context and formulas. Their full source
texts are not needed in the distributable bundle. The new exact atlas
checks every listed ray directly; its complete physical containment comes
from the new tube run, not from trusting the published count.

## Scope of other sources

Sun's Theorem 3.1 motivated the middle-minor finiteness reduction. The
included notes give the support, tangent, degree-252, and relative
finite-flat arguments explicitly. The relative flatness step uses the
[Stacks Project, Lemma 10.99.3](https://stacks.math.columbia.edu/tag/00MG).
No claimed universal quartet exclusion is imported from that paper.

The public [gecrooks/mub6](https://github.com/gecrooks/mub6) prototype was
inspected at commit c00dbc17ad084ab6e571be4df76da76858352020.
Its multistart pools and numerically padded continuation do not establish
the exhaustive physical cover required here. None of that repository's
code, logs, or assertions is a dependency of the certificate.
