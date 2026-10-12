import NoFourMUBs.Step2.DenseExistence
import Mathlib.Algebra.MvPolynomial.Funext
import Mathlib.Analysis.SpecialFunctions.Complex.Circle
import Mathlib.Topology.Perfect

set_option autoImplicit false

namespace NoFourMUBs.Step2.Reconstruction
open Set Hadamard6

/-- A nonzero polynomial cannot vanish on an open box of circle arcs. -/
theorem dense_polynomial_nonzero {ι : Type*} [Finite ι]
    (P : MvPolynomial ι ℂ) (hP : P ≠ 0) :
    Dense {z : ι → Circle | MvPolynomial.eval (fun i => (z i : ℂ)) P ≠ 0} := by
  classical
  letI : Nontrivial Circle := ⟨⟨1, -1, by
    intro h
    have h' := congrArg (fun z : Circle => (z : ℂ)) h
    norm_num at h'⟩⟩
  rw [dense_iff_inter_open]
  rintro U hU ⟨z, hz⟩
  by_contra h
  have hzall : ∀ x ∈ U, MvPolynomial.eval (fun i => (x i : ℂ)) P = 0 := by
    intro x hx
    by_contra hp
    exact h ⟨x, hx, hp⟩
  obtain ⟨V, hV, hVU⟩ := isOpen_pi_iff'.mp hU z hz
  have hVI : ∀ i, (((↑) : Circle → ℂ) '' V i).Infinite := by
    intro i
    exact (infinite_of_mem_nhds (z i) ((hV i).1.mem_nhds (hV i).2)).image
      Circle.coe_injective.injOn
  apply hP
  apply MvPolynomial.funext_set (fun i => ((↑) : Circle → ℂ) '' V i) hVI
  intro x hx
  have hx' : ∀ i, ∃ v : Circle, v ∈ V i ∧ (v : ℂ) = x i := by
    intro i
    exact hx i (mem_univ i)
  choose v hv hveq using hx'
  have heq : (fun i => (v i : ℂ)) = x := funext hveq
  simpa only [heq, map_zero] using hzall v (hVU (fun i _ => hv i))

/-- The same nonvanishing locus is dense after restricting to strict seeds. -/
theorem dense_strict_polynomial_nonzero (P : MvPolynomial (Fin 4) ℂ)
    (hP : P ≠ 0) :
    Dense {p : StrictSeed | MvPolynomial.eval (fun i => (p.1 i : ℂ)) P ≠ 0} := by
  exact (dense_polynomial_nonzero P hP).preimage
    (isOpen_lt continuous_const continuous_seedR).isOpenMap_subtype_val

/-- Reuse the existing closed-projection extension once the polynomial guard
and the generic construction have been proved. -/
theorem matchedExistence_of_polynomial (P : MvPolynomial (Fin 4) ℂ)
    (hP : P ≠ 0)
    (h : ∀ p : StrictSeed, MvPolynomial.eval (fun i => (p.1 i : ℂ)) P ≠ 0 →
      ∃ H : Had6, Matched p H) : MatchedExistence := by
  exact matchedExistence_of_dense (dense_strict_polynomial_nonzero P hP) h

end NoFourMUBs.Step2.Reconstruction
