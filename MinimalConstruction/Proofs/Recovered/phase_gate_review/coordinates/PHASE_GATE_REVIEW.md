# Review of the unitary-core phase-gate form

The [supplied note](Hadamard6_Unitary_Core_Phase_Gate_Form.md) is mathematically consistent with the accepted preceding construction. Its strongest new result is an exact description of flatness within a fixed two-angle unitary orbit, with an explicit nonnegative residual. The core still depends on all four seed phases; the orbit is not a two-dimensional parametrization of the Hadamard family or of the measurement-compatible locus.

## What the new statements establish

1. **The cubic roots can be taken on the unit circle without adding a radical.** With sigma=T/rho and xi=sigma^2/rho, the identity |T|^2=rho^3 gives |xi|=1. The maps w=tau/conjugate(tau) and tau=sigma*conjugate(w) give inverse descriptions of the cubic stage. The coefficient matrices M use only the quadratic-stage data.
2. **The quadratic-stage core is unitary.** The identities 3 M_h M_h†=G_h and 3 M_v M_v†=G_v imply the block-unitarity calculation in the note. All outer factors are unitary for arbitrary gate phases. The proof needs no flatness assumption about the core.
3. **Flatness in this particular orbit is exactly the two gate equations.** The side residual is Lambda*|w^3-xi|^2. The proof that Lambda=0 precisely for the Fourier Gram G=3I is valid for invertible normalized phase sides. That case violates the retained P_i guards, so Lambda is strictly positive on the stated domain. Necessity therefore follows from the side blocks; sufficiency uses the inherited matched reconstruction and lower-block-flatness theorem.
4. **There are exactly nine phase pairs at a fixed core**, all giving row/column permutation representatives. This is a count of gate settings, not inequivalent Hadamards. The gate sensitivity estimates follow from unitary invariance of the operator norm, with the core held fixed.

Global non-Tao coverage and the permitted domain remain inherited inputs. The new proof does not enlarge that domain or remove its old singular boundaries. Argument trisection is a practical evaluation of the same cubic algebraic extension, not a reduction of its degree.

## A further simplification of the measurement equations

Use a side's new factorization X=M P(w) F_3, with w^3=xi. For a vector y define

\[
\boxed{\Omega(y;\xi)=y_0\bar y_1+y_2\bar y_0+\bar\xi\,y_1\bar y_2.}
\]

The cyclic autocorrelation of P(w)y is w*Omega. Consequently, the three entries of F_3 P(w)y have equal squared moduli exactly when Omega=0. Their mean squared modulus is the ordinary Euclidean norm ||y||^2. Both w and rho have disappeared from this test; xi is computed at the quadratic stage.

Work throughout in the adapted seed frame. Let F=6I-E†E, choose five phases p=(1,p_1,p_2)^T and chi=(chi_0,chi_1,chi_2)^T, and set

\[
c=F^{-1}(\sqrt6\chi-E^\dagger p),\qquad \ell=p-Ec.
\]

Then the unchanged five-real-equation common-ray system can be written

\[
\boxed{
\|M_v^Tc\|^2=1,\qquad
\Omega(M_v^Tc;\xi_v)=0,\qquad
\Omega(M_h^\dagger\ell;\bar\xi_h)=0.
}
\]

Indeed, 3*conjugate(M_v)*M_v^T=F, so the norm condition is the previous c†Fc=3. The two moment equations supply the lower coordinate flatness and remaining transformed flatness exactly as before. For two rays the overlap remains p†p'+c†Fc'=0.

For comparison with the prior formulation, y=diag(1,sigma,conjugate(sigma))*z gives

\[
\Psi(z;\rho,T)=\sigma\,\Omega(y;\xi).
\]

Since sigma is nonzero, this is an invertible change of equations, not a new restriction. The same applies horizontally with conjugated parameters. The quadratic coefficient matrices M have entries of modulus at most one, but F^{-1} and the old seed factors may remain poorly conditioned. No elimination speedup or seed-only compatibility condition has been proved.

## Independent verification actually performed

The supplied upstream scripts were not attached. The [independent verifier](verify_phase_gate.py) checks the new cubic transformation, the residual factorization and Fourier sum of squares, the nontrivial phase-radicand example, the new measurement identity, and the full exact H_cross unitary core, factorization and Lambda=16/27 in both directions.

At 80 digits it checked 30 strict seed tuples, 90 arbitrary gate pairs and 27 locked-branch matrices. Core/orbit unitarity, reconstruction, the residual formula, the new measurement identity and branch permutations passed. The numerical stage obtains the previously verified side data from the retained one-sheet implementation; the algebraic formulas for M and K themselves do not use its evaluated cube root. This is an audit, not a standalone implementation that skips the cubic stage internally.

The recorded diagnostics are in [PHASE_GATE_VERIFICATION.json](PHASE_GATE_VERIFICATION.json). They are independent of the source's unavailable numerical log, and are not interval certificates. The exact core and coverage claims rest on the written arguments and their stated inherited inputs.

## Assessment

This is a useful structural theorem: the quadratic stage already gives a unitary, and the remaining cubic stage is exactly an entrywise-flatness condition in two phase gates. It is the clearest factorization so far. Its relevance to additional measurements is presently the simpler normalized moment system above. It does not yet classify MUB triples or exclude four MUBs.
