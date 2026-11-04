# Numerical construction notes

The constructor is a proposal generator. Its `NUMERICAL` label remains in place until the separate Arb transfer replay and integer cap-coverage replay have both accepted the proposal. Random sphere samples and SciPy hulls are diagnostics and search tools only.

## Data and scope

The input contains 2,328 seed records, with complete transfer lists on 200 sources. The constructor reads only those seed records and supplied T0/T1 transfer descriptors. It does not call the MUB atlas or Stage C. T3 transfers and the edge/X source are outside this implementation.

The initial whole-ball normal-form attempt failed on sources 2264, 2279, 2297, 2313, 2325, 2326 and 2327. Each is recorded as `NOT ESTABLISHED`, with the reason `whole-ball contraction not certified`. No failed contraction is treated as evidence that a transfer or a cap cover does not exist.

## Cap representation

A cap uses the exact integer vector `v` and exact binary64 rational `h`:

    ||x|| = 1, v.x >= h, x = w/r.

For transfer computations, e = v/||v|| and t = h/||v||. The stored multipliers `lambda_`, `mu`, and bound `s` denote exact binary64 rationals. The replay checks their interval matrix; the floating optimization itself is not trusted.

The polynomial mode uses c = r t e and delta² = r²(1-t²). The `local_sphere` mode uses the true centre jet at c = r e, computed once per proposed normal, and delta² = 2r²(1-t). Both anchors lie in the original source ball.

## Target multiplier search

After scaling by the target radius, the affine predictor is d + F x. Let G = FᵀF and b = Fᵀd. For lambda greater than the largest eigenvalue of G, diagonalize G numerically and choose

    mu(lambda) = max(0,
        2 [t - sum_i e_i b_i/(lambda-g_i)]
          / sum_i e_i²/(lambda-g_i)).

The numerical objective is

    s(lambda) = ||d||² + lambda - mu t
                + sum_i (b_i + mu e_i/2)²/(lambda-g_i).

This is minimized in one variable, using log(lambda-max g_i) as the search coordinate. Every resulting choice is only a candidate. The independent replay checks positive definiteness of

    [ s-||d||²-lambda+mu t       -bᵀ-mu eᵀ/2 ]
    [ -b-mu e/2                 lambda I-G  ].

It also checks the strict target inequality after adding the appropriate normal and Taylor remainders. The final `s` is padded by at least 2e-10. The cap threshold is tightened by 3e-5 after the aperture search. These are search tolerances; acceptance is determined by the exact or interval replay.

The threshold search uses bisection, but no monotonicity theorem for its sufficient test is assumed: the moving polynomial anchor can make that test nonmonotone. The final candidate is checked again and must pass independent replay. Neither a maximal-cap claim nor a minimum-count claim is made.

## Orientations

The numerical search uses the exact formula for the minimum of a linear function over a spherical cap and the supplied quadratic Taylor error bounds for both Psi signs. The replay recomputes these bounds in Arb. The implementation uses the polynomial or true-centre orientation models matching the cap mode.

`weighted_target: true` improves only the target remainder. In polynomial mode it replaces ||AX|| tau by the certified weighted T0 bound; in local mode it replaces ||AX|| Z2 by the certified weighted T2 bound. The source contraction and all orientation estimates remain those of the original source model.

## Cover search and refinement

Initial directions come from normalized source-box centres and a constrained numerical minimizer of the target predictor on the sphere. Later initial runs prioritize groups with larger estimated sphere area and use one promising direction first, with alternatives on failure. The early pilot runs tried several directions per descriptor.

After a candidate list is built, SciPy proposes the polar hull of v_i/h_i. Its closest supporting facet supplies a new sphere direction when coverage is missing. The search tries transfers at that direction, first using polynomial errors and then true-centre jets where needed. It also tries nearby existing cap normals. New weighted searches first refit unweighted caps and can add caps for descriptors whose initial unweighted search failed.

A greedy numerical deletion pass removes redundant caps. Every resulting full-cover claim must then pass the integer hull-completeness and coverage verifier. A numerical polar inradius greater than one is still only a proposal; acceptance requires the integer replay.

Refinement is bounded. A source that exhausts its addition budget retains its cap list and reports incomplete coverage. Checkpoints are written every ten additions. Completed source lists and replay records, rather than the timing logs, determine final counts.

## Runtime notes

Use one BLAS/OpenMP thread per worker. Before forking, the implementation discards the unused edge box lists, stores source boxes in compact integer arrays, and freezes Python's garbage-collected objects. This prevents garbage-collector scans from copying a large inherited JSON object graph into each worker.

The optional `.pkl` input is an internal cache created from the supplied input, for local repeated searches only. The verifier does not need it. The lightweight JSON used for cap replay preserves every seed header and every ordered transfer descriptor while omitting unused box lists; its exact projection from the supplied JSON was checked independently by the parent workflow.
