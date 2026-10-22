# Sources and provenance

## User-provided source discussion

The authoritative source for the requested scope is the preceding assistant discussion supplied by the user in this conversation. It contained eight sections:

1. Count one elementary side fiber and propagate it over the connected strict domain.
2. An optional matched-flatness proof by analytic continuation.
3. Equality of the global matched-completion images.
4. A weaker classification chain for the main exclusion theorem.
5. Character reduction of the cube-root cases and a singular-minor lemma.
6. Improved normal displacement, shell, and boundary-transfer estimates.
7. Ten-ray and eight-ray quartet-completion reductions.
8. The remaining global obstruction, trace witnesses, and the limits of connectedness.

`BRIEF.md` preserves all eight topics and adds the explicit hypotheses identified during review. It is an audited restatement, not a verbatim transcript.

The discussion cites `no_four_MUBs-11.pdf`, S.1–S.6, Eq. (9), and Eq. (A.103). That PDF, its manuscript sources, the Lean project, and certificate files were not available for this package and are not included. Their definitions and theorem status must be checked by the recipient. No inaccessible conversation citation identifiers have been converted into fabricated references.

The reported values `Ψ(B₀)=56−8i`, `R(E₀)=256`, the Gram-Jacobian identity, the Fourier path formula, and the complementary-corner invariant laws remain explicitly identified manuscript dependencies.

## Optional external input

Alexey Bondal and Ilya Zhdanovskiy, **Orthogonal pairs and mutually unbiased bases**, arXiv:1510.05317.

- [Abstract and version record](https://arxiv.org/abs/1510.05317)
- [Author manuscript PDF](https://arxiv.org/pdf/1510.05317)

The primary manuscript was consulted while preparing the handoff. Lemma 11 identifies the standard Fourier-related point and its tangent information; Theorem 17 supplies the four-dimensional component. Corollary 21 and Theorem 22 provide the real mutually unbiased locus and the four-dimensional family. Theorem 22's proof uses smoothness at the point from Lemma 11.

Using this input in the proposed continuation argument still requires an explicit bridge to the project's locally ordered, dephased Hadamard representatives and to the strict matched corner map. The bridge and any formalization of the external theorem have not been supplied here. The external paper is not bundled.

## Other literature mentioned in the source discussion

The source discussion also mentioned MU-constellations, an existing obstruction involving `3×3` Hadamard subblocks, and the computer-assisted Fourier-family exclusion associated with Jaming and coauthors. Their precise versions and formal dependencies were not supplied. This handoff gives direct proof plans for the elementary completion/subblock reductions and treats every pre-existing Fourier or Tao exclusion as an explicit repository dependency.

Do not import a theorem merely from an author name or unresolved citation. Locate the actual source, verify its assumptions, and record any formal trust boundary if that input is used.
