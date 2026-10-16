Exact SOS search for a real corner signature
============================================

Status: three strengthening rounds completed; NO exact corner-reality
certificate has been found. A finite combination experiment is prepared;
see STATUS.json for its current execution state and SYSTEMATIC_SEARCH.txt
for its precise completeness boundary.
See CLASSIFICATION_REUSE.txt and STATUS.json for the current search.
This is one discovery route extending the existing proof. It is not a second
proof, a new Lean formalization, or an atlas-certification project.

The target is Im Psi(X)=0 for the top-left 3x3 corner X of H0, where a
hypothetical quartet is I,H0/sqrt(6),H1/sqrt(6),H2/sqrt(6). The search uses
108 original unit complex entry variables, without independently dephasing rows of
the three matrices. It keeps their physical alignment.
The strengthened search adds 108 auxiliary unit phases to expose the other
three transition Hadamards with exact integer-coefficient defining equations.

Reused work
-----------
* The existing witness's exact 55-term Psi expansion and its nine selected
  complementary-signature multiplier monomials are inputs.json. Its original
  witness, 668 coefficients, and primitive system are unchanged. The nine
  equality assumptions themselves are NOT inserted into this search.
* GitHub main 0636c223da1a0879b515fc69812332326136829e supplies the non-Tao
  Fourier theorem. Fourier squared norms F retain both cases: F=0 off Tao
  and F=9 on Tao. Thus F(F-9)=0 and all row/column F values agree. No Tao
  exclusion is assumed. See FOURIER_REUSE.txt.
* The scheduled source check detected return I on kernel/tangent-v2 at
  66b5c6535c01ca1589bca2ff8779c5000a4b22bd and stopped generation until review.
  Its existing seven-cofactor moment-norm identity and stored exact Tao
  values are reused. Its unchanged source lives at the CANONICAL repository
  path proof/coverage/returns/I_moment_reduction, not a parallel implementation.
  A standalone local workspace may keep a read-only upstream cache instead.
* The exact coefficient checker reuses audit/sos_linear.py::add_scaled and
  return I's existing verifier for its seven-cofactor identity.

First results
-------------
Run                         Moments  Largest Gram  Equations  Numerical target
pilot_w1                       7564       148          972       0.39782146
pilot_w3_fourier               26914       238         1527       0.39782136
pilot_w3_fourier_coupled_return_I
                              97710       493         2295       0.39782024

The target reported by the solver is |Psi-conj(Psi)|^2/2304, equivalently
(Im Psi)^2/576. All three numerical optima are positive. None is a candidate
for the requested zero upper bound. These are approximate solver outcomes,
not exact proofs of feasibility or impossibility of the selected ansatz.
Small residuals and eigenvalue errors are retained in each result.json.

All three use necessary finite relaxations, not a complete degree hierarchy.
The baseline uses only quartet orthogonality/unbiasedness and the unit torus.
The second adds the case-complete Fourier consequences. The third also adds
255 witness-times-mixed and three-basis-loop features and return I's norm
identity; its largest Laurent order is 14. No atlas data enter any model.

What the first GitHub run changed
--------------------------------
The first pilots allowed shifted equations only when their entire support
was already represented. Most high-degree reductions were therefore absent:
the orthogonality-localizer count remained 630. The first GitHub run added complete
shifted equations that touch the target's support, including all their new
moments. No outside term is discarded. It selects at most 128 such rows per
selected generator, with Laurent order at most 12, and uses all six column
indices for the mixed Gram blocks. This is a targeted enlargement, not a
claim of exhaustive search or a degree lower bound.

That completed run had 116,378 moments, 7,434 localizers and numerical
objective 0.39782108397588023. Its candidate mixes the exact Fourier-norm
sectors and lacks complementary-conjugacy moments. The next GitHub run
separates all six classification cases, reuses conjugacy and Tao algebra,
and applies the existing single-Hadamard identities to all six transitions.

Execution and acceptance
------------------------
The GitHub workflow 'Corner SOS search' runs source guards and twenty-two
focused tests. The finite-pool job reuses the fully non-Tao diagnostic probe.
It installs only Python SDP dependencies,
runs no Lean, and uploads all model and solver records. Every new upstream
head must be reviewed before generation; CI does not auto-approve new work.
The local three-pilot calculations used no new installation or Lean cache.

The transport workflow reused the six exact model artifacts from run 38898826837.
It checks their pinned model hashes, preserves the old indices and constraints,
and appends only 252 short matrix-composition equations and their Gram blocks.
CLASSIFICATION_RUN_RESULT.json records the first six results: approximately
0.269080 in the non-Tao target cases, and approximately 0.294 in the Tao target
cases (the latter reached the solver time limit). These remain numerical data.

For an authorized fresh run after reviewing GitHub, from this directory:

  python search.py --width 6 --fourier --coupled --moment-reduction \
    --frontier-cap 128 --classification-case 000 --transition-lift \
    --seconds 300 --output runs/next_unique_run

This runs only sector 000. The other five representatives remain necessary.

The preflight requires the scoped reuse review and a current repository
snapshot. Existing run directories cannot be overwritten. prepare_inputs.py
only reads the original source and witness; it does not solve/replay them.

A future candidate must be reconstructed with exact rational coefficients
and positive square weights, then checked by:

  python verify_exact.py path/to/model.json.gz path/to/certificate.json

That checker reconstructs the physical localizers and Gram indices, requires
bound<=0, expands every rational square, and demands exact coefficient
equality. A positive bound or floating coefficients are rejected. The known
identity and deliberate-corruption tests exercise acceptance and rejection.
The discovery code never labels numerical output an exact certificate.

A certificate using FourierVanishing is a modular analytical proof using
that upstream theorem. A single raw-generator Nullstellensatz/SOS identity
would additionally require cofactors for the derived Fourier equations.
Any final Lean check will run on GitHub, after an actual certificate exists.
AtlasCertificate is not silently discharged. No claim of an unconditional
no-four-MUB theorem is made by these search results.

The current workflow reuses the transport model from run 38900607750, case
000, and adds non-Tao constraints on the three auxiliary transitions. This
is ONE additional sector, not a proof for arbitrary quartets. See section 7
of CLASSIFICATION_REUSE.txt. TRANSPORT_RUN_RESULT.json records all six
completed transport runs, including solver tolerances and the unchanged
positive objectives. No exact certificate has been found.

Final probe result (run 38902440868): optimal numerical objective
0.2690795737493639 with all six Fourier norms approximately zero; still
not an exact certificate. The model has 272,812 moments and 21,489 rows.
It reused the prior model and took about 4.2 seconds to add the new
constraints. All seventeen checks passed on GitHub. See
SIX_NONTAO_RUN_RESULT.json. Other sectors remain open.
