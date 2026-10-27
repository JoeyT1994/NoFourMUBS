# A seed-ball classifier: every H in the ball, every possible third basis

**The requested original ball is still NOT ESTABLISHED.**
The [original-ball method](WHOLE_BALL.md) and `whole_ball.py` now take the
unchanged radius-0.063 ball as input, replay its complete third-basis cover,
and require every resulting case to be excluded or classified. They use
uniform known-family existence and transverse injectivity in the full
phase space, so the comparison does not require a projection to stay
inside the seed ball. Internal subdivisions retain all unfinished cases.
The bounded attempt in `results/seed1879_whole_ball_attempt.json.gz`
does not close the ball. This is a sufficient certificate procedure with
an unresolved run, not a whole-original-ball classification result.

The following earlier result concerns a smaller domain only.

**CERTIFIED:** every MUB triple over

`||w-w_*||_2 <= 1/160 = 0.00625`

is of the continuous construction in Conjecture 1. The four coordinates
are the original w coordinates of seed ball 1879, and

`w_* = Mth^(-1) * ((0,-pi,-pi,-pi) - theta0)`.

This entire smaller ball lies inside the original radius-0.063 ball.
**Classification of the entire original ball is NOT ESTABLISHED.**

The [proof](PROOF.md) eliminates the third basis first: certify a complete
list of unbiased-column branches `v_a(w)`, enumerate every possible
six-clique, then use two orthogonality equations and a **2-by-2 normal
Jacobian** to force w onto that clique's known construction plane.
The corresponding K is identified by exact-anchor matching and analytic
continuation. All 30 phases of K are accounted for.

| Check on the smaller ball | Certified result |
|---|---|
| Complete five-phase torus cover | 25,474 retained bins, zero unassigned |
| Unbiased-column branches | 120, uniformly on the whole ball |
| Necessary orthogonality graph | 600 edges, exactly ten six-cliques |
| Classification of every clique | Continuous construction; normal q < 0.231 |
| Native branch and containment | Both verified in Arb |

The [receipt](results/ball1879_inner_receipt.json) binds all 13 checker/input
sources and the atlas. Numerical root proposals carry no acceptance
authority. An omitted root leaves a failed cover; a failed bound or a
search cap gives no classification.

From the repository root, with Python, python-flint, NumPy and SymPy:

```sh
python proof/theorems/TC_triple_classification/seed_method/replay_ball.py --output proof/theorems/TC_triple_classification/seed_method/results/ball1879_inner_receipt.json
python -m unittest discover -s proof/theorems/TC_triple_classification/seed_method -p 'test_seed_method.py' -v
```

The complete replay takes a few minutes on one CPU. The five additional
tests include independent matrix-form interval roots and derivative
checks, the ten template gauge formulas, all ten clique proofs, and
rejection of an incomplete column cover and exhausted graph searches.

There is also a complete outer cover at the **original radius 0.063**:
515 labels and 31,579 six-cliques, in
[seed1879_native_cover.json.gz](results/seed1879_native_cover.json.gz).
It can be replayed with:

```sh
python proof/theorems/TC_triple_classification/seed_method/seed_cover.py --index 1879 --output proof/theorems/TC_triple_classification/seed_method/results/seed1879_native_cover.json.gz
```

Those 31,579 initial clique configurations are not all classified. The
new original-ball procedure records their exhaustive accounting, but its
current phase-box bounds are too loose to close the search. The
smaller-ball result does not imply that extension. The example driver is bound to this exact
anchor; the branch, torus-cover, graph and normal-test components are
reusable. The isolated Fourier case and X-ball require separate charts.
