# Optional output-weighted normal bounds

## Status and delivered files

**PROVED mathematical formulas; CERTIFIED two-output demonstration.** `weighted.py` implements equations (25)–(29) of `context/ZT_REPORT.md`, Appendix A.10. `weighted_test.json` records the two requested 224-bit Arb runs: one nonlinear transfer from source 6 and one from source 37. It proves bounds on those outputs under the original local matched-completion germ and successful source normal-form certificate. It does not certify a sphere cover or use an atlas or Stage C calculation.

No changes were made to `cap_verify.py` or `construction.py` by this module's author. Integration is an explicit caller choice.

## Public API

```python
import weighted

out = weighted.target_bounds(transfer)
# The transfer is a patches.Transfer object, from the same verified model.
polynomial_error = transfer.hnorm * delta2 / 2 + out['T0']
local_error = out['local_hessian'] * delta2 / 2

# General output C=AX, including a side or scalar-gradient side output:
out = weighted.bounds(model, C)
# out['T0'], out['T1'], out['T2'] bound ||Cz||, ||CDz||, ||CD²z||.
```

`T0`, `T1` and `T2` are outward Arb bounds, each minimized with its ordinary `||C|| tau`, `||C|| Z1` or `||C|| Z2` alternative. Both alternatives are derived rigorously before taking that minimum. A source's residual tensors are cached once. Subsequent outputs require only left multiplication, small norm certificates and scalar expressions. The cache avoids a reference cycle, so releasing its source model promptly releases the tensors.

The source model must come from `patches.normal_form` and remain immutable after construction. The supplied module rejects edge models: its finite residual has the seed model's 90 row-pair exponential terms, not the augmented edge residual.

## Mathematical audit

**PROVED.** Let `p(w)=G(w,0)`, `C=AX`, and hold the original Gram inverse `W` fixed, exactly as in Z. The cache constructs:

- `R3=D³p(0)`, an output-by-64 flattening.
- `R4=D⁴p(0)`, an output-by-256 flattening.
- `A2=D²_w G_z(0,0)`, flattened as the 16 ordered seed pairs followed by a normal input.
- `mixed_UX=W D²Phi(q0)[U,X]` and `mixed_XX=W D²Phi(q0)[X,X]`.
- Real and imaginary coefficient matrices for all ninety `kappa_a`, together with the unchanged fifth-derivative and normal-third-derivative monomial weights.

The cubic signs are `-Sym(H2 tensor U)` in the real part and `-U³` in the imaginary part. The quartic real part is `U⁴-Sym(H2 tensor H2)` and the imaginary part is `-Sym(H2 tensor U tensor U)`. The normal-Jacobian second derivative has real part `-H2_ij dx_k` and imaginary part `-U_i U_j dx_k`. These are the same tensors as `wholeball.predictor_residual`, retained before taking norms.

Every output multiplies these tensors by `C` before calling the certified matrix norm routine. The complex coefficients are similarly multiplied before evaluating their two-column amplitude norms. The bounds therefore preserve output cancellation rather than multiplying an unweighted tensor norm by `||C||`.

The source constants `u,x,beta` are recomputed from the source matrices. The exact validated `tau,Z1,Z2` remain those supplied by the original normal contraction. Equations (26) and (27) give `b0,b1,b2,k0,k,m1,m2,mzz`. The implementation then uses the full equation (28):

\[
T_{0,C}^{\rm raw}=b_{0,C}+k_{0,C}\tau
 +\tfrac12(d_C+L_{3,C}x^2b)\tau^2
 +\tfrac16L_{3,C}x^3\tau^3,
\]

\[
T_{1,C}^{\rm raw}=b_{1,C}+m_{1,C}\tau+k_C Z_1,
\]

\[
T_{2,C}^{\rm raw}=b_{2,C}+m_{2,C}\tau+2m_{1,C}Z_1
 +m_{zz,C}Z_1^2+k_CZ_2.
\]

The factors `1/2` and `1/6` in the first expression are retained. No weighted contraction test `k_C<1` is imposed: the already verified original contraction proves existence and supplies the normal derivative bounds. The weighted expressions follow by moving the identity part of `G_z` to the left in the original equation and its first two derivatives.

The matrix norm helper uses an Arb-verified Gram shift, falling back to a rigorous Frobenius upper bound when interval cancellation prevents its floating proposal from closing. Floats never decide norm acceptance. All returned bound expressions are checked finite. The final minimum uses proved upper endpoints and freezes the smaller one as an exact binary number; it does not take an uncertified midpoint minimum.

## Demonstrated output bounds

**CERTIFIED.** The following displayed values are rounded upwards; the JSON contains enclosing lower and upper endpoints of the analytical bound values.

| Source → target; group | Original value bound | Weighted value bound | Original normal Hessian bound | Weighted normal Hessian bound |
|---|---:|---:|---:|---:|
| 6 → 1289; group 22 | 0.001515382868 | 0.000473911251 | 1.212328505 | 0.397267063 |
| 37 → 717; group 1 | 0.019959420184 | 0.006761210128 | 63.415810166 | 22.180883504 |

For source 6 the output value bound improves by more than **3.1976** and the normal Hessian bound by more than **3.0516**. For source 37 these factors exceed **2.9520** and **2.8590**. These compare two rigorous analytical upper bounds; they are not estimates of the ratio of either bound to the unknown true supremum.

Adding the unchanged predictor Hessian gives the actual target Hessian constants:

| Source | Original `||AH2||+||AX||Z2` | Weighted `||AH2||+T2` |
|---|---:|---:|
| 6 | 2.532966910 | 1.717905468 |
| 37 | 65.774072708 | 24.539146046 |

The first cache took 2.84 seconds and one output 0.059 seconds in the recorded run. The second cache took 103.68 seconds during severe concurrent host load; this is not used as a performance claim. The demo omitted thread caps, so future runs should use the command below to avoid BLAS oversubscription.

```sh
OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 \
PYTHONPATH=deps python weighted.py transfer_input.json.gz \
  --seeds 6 37 --output weighted_test.json
```

**NOT ESTABLISHED by this demonstration:** any additional complete cap cover, output-weighted edge bounds, or a uniform improvement factor over all source balls and outputs. Those require the caller's separate construction and replay.
