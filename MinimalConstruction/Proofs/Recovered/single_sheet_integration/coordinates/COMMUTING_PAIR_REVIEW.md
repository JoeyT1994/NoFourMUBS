# Review of the commuting-pair normal form

20 September 2026. The supplied [note](Hadamard6_Commuting_Pair_Normal_Form.md) is retained unchanged. This review does not silently replace the previously adopted Möbius implementation.

## Assessment

This is a substantive improvement in the reconstruction domain and in the treatment of exceptional coordinate roots. On the strict domain, the four phase seeds need only satisfy **R>0**. Positivity of both complementary Gram matrices and nonvanishing of every scalar denominator then follow. The individual x and y coordinates may repeat; the joint spectrum still distinguishes the three columns.

On R=0 one must retain g>0 and the six nonzero scalar pivots stated in the note. These boundary guards have not disappeared. The coverage is up to equivalence and choice of frame, with Tao supplied separately; it is not a completion formula for every exceptional fixed corner.

The algebraic degree has not decreased: one shared quadratic choice and a cubic-degree spectral problem in each direction remain. The construction does not by itself restrict measurement-compatible seeds to three coordinates.

## Independent audit

The referenced upstream constructor and verifier were not supplied. [verify_commuting_pair.py](verify_commuting_pair.py) was reconstructed independently from the displayed formulas. It checks:

- Generic scalar/cofactor identities and all three pivot norm identities.
- Both traces, all commutator entries and both metric-unitarity identities, exactly over independent formal conjugate variables, modulo the scalar quadratic.
- The real and nonreal boundary factorizations, including the repeated-cubic factor that establishes inclusion of the old domain.
- The complete repeated-coordinate example, including its vertical conjugate matching and full Hadamard identities, exactly.
- The finite complex-pencil moment argument described below.
- Both sheets at 100 reproducibly sampled seeds selected by R>0 alone: 200 matrices, in double precision. It also compares the new moment and overlap expressions with actual reconstructed vectors for 400 arbitrary phase inputs. These inputs are identity tests, not 400 unbiased rays.

Run from any directory:

```sh
PYTHONDONTWRITEBYTECODE=1 OPENBLAS_NUM_THREADS=1 python3 /absolute/path/to/verify_commuting_pair.py
```

Dependencies are NumPy and SymPy. The output is [COMMUTING_PAIR_VERIFICATION.json](COMMUTING_PAIR_VERIFICATION.json). The accepted classification theorem and lower-block norm identity, together with the note's specialization argument, remain the global mathematical inputs. This audit does not reproduce the reported upstream 80-digit run.

## Consequence for our measurement equations

The old moment test used distinct x coordinates. Repeated x coordinates make that test insufficient. The commuting pair fixes this directly: use the two weighted moments MG and NG, which recover all three intensities jointly even when either coordinate repeats.

Alternatively, a choice among **M, M+N, M−N, M+iN** always supplies a single complex moment that, together with the norm, recovers the three intensities. This preserves the five-real-equation formulation per ray on the enlarged domain. Selection is computable directly from 3-by-3 matrices; it requires no spectral roots.

The note's real separating pencils correctly reconstruct eigenvectors. They do not automatically suffice for intensity recovery: distinct eigenvalues can be collinear. In the exact repeated example, every real pencil is collinear, whereas M+iN works. This is a distinction needed for our application, not an error in the note's reconstruction.

The proof and equations are in [COMMUTING_PAIR_EXTENSION.md](../two_ray_locus/COMMUTING_PAIR_EXTENSION.md). The next elimination calculation can use both coordinate moments to avoid any additional choice of pencil. The requested practical three-coordinate description remains open.
