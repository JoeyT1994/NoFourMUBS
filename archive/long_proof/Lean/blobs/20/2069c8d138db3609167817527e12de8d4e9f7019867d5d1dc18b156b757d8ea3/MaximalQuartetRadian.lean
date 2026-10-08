import MaximalCornerSelection
import QuartetRadianCover
import ReuseBoundaryTransport

/-! Literal quartet transport through a full-corner maximizing reselection,
then an exact radian lift of the newly selected seed. No claim preserves an
earlier cell membership or identifies this chart with an external worklist.
-/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Mub6.MaximalRadian20261006
open Mub6 Mub6.GlobalBoxCover20261006
open Centiradian20261006 Centiradian20261006.SignedDeterminant
open scoped ComplexConjugate BigOperators
noncomputable section

theorem phaseHadamard_physical {H : BasisMatrix} (hH : IsPhaseHadamard6 H) :
    Physical H := by
  refine ⟨hH.1,?_⟩
  intro i j
  have h := congrArg (fun M : Matrix6 => M i j) hH.2
  simpa [Matrix.mul_apply,Matrix.conjTranspose_apply,Matrix.smul_apply,Matrix.one_apply,
    Complex.star_def,mul_ite] using h

theorem actual_phaseOverlap_physical {B : Fin 4 → BasisMatrix} (hB : IsMUBQuartet B) :
    Physical (phaseOverlap (B 0) (B 1)) :=
  phaseHadamard_physical (actual_edge_sqrt_six_phaseHadamard hB 0 1 (by decide))

def quartetPermutations (p q : Perm6) (a : Fin 4) : Perm6 :=
  if a=0 then p else if a=1 then q else Equiv.refl _

def permutedQuartet (B : Fin 4 → BasisMatrix) (p q : Perm6) : Fin 4 → BasisMatrix :=
  fun a => relabelColumns (quartetPermutations p q a) (B a)

theorem permutedQuartet_isMUB {B : Fin 4 → BasisMatrix} (hB : IsMUBQuartet B)
    (p q : Perm6) : IsMUBQuartet (permutedQuartet B p q) :=
  quartet_relabelColumns hB (quartetPermutations p q)

theorem permutedQuartet_phaseOverlap (B : Fin 4 → BasisMatrix) (p q : Perm6) :
    phaseOverlap (permutedQuartet B p q 0) (permutedQuartet B p q 1)=
      permute (phaseOverlap (B 0) (B 1)) p q := by
  funext i j
  simp only [phaseOverlap,permutedQuartet,overlap_relabelColumns,quartetPermutations]
  rfl

theorem dephase_eq_normalize (H : BasisMatrix) : dephase H=normalize H := by
  funext i j
  simp only [dephase,normalize,phaseTransform,normalizationRows,normalizationCols,Complex.star_def]
  ring

/-- The maximizing representative retains its actual permutation and ray-phase
construction. The other two bases remain present. -/
theorem quartet_has_maximal_phase_edge_witness {B : Fin 4 → BasisMatrix} (hB : IsMUBQuartet B) :
    ∃ p q : Perm6, let D := dephasedQuartet (permutedQuartet B p q)
      IsMUBQuartet D ∧
      Physical (phaseOverlap (D 0) (D 1)) ∧ Dephased (phaseOverlap (D 0) (D 1)) ∧
      Maximal (phaseOverlap (D 0) (D 1)) := by
  obtain ⟨p,q,hp,hd,hm⟩ := physical_has_normalized_maximal_permutation (actual_phaseOverlap_physical hB)
  let E := permutedQuartet B p q
  have hE : IsMUBQuartet E := permutedQuartet_isMUB hB p q
  have he : phaseOverlap (dephasedQuartet E 0) (dephasedQuartet E 1)=
      normalize (permute (phaseOverlap (B 0) (B 1)) p q) := by
    rw [dephasedQuartet_phaseOverlap,dephase_eq_normalize]
    exact congrArg normalize (permutedQuartet_phaseOverlap B p q)
  refine ⟨p,q,dephasedQuartet_isMUB hE,?_,?_,?_⟩
  all_goals change _ (phaseOverlap (dephasedQuartet E 0) (dephasedQuartet E 1))
  all_goals rw [he]
  · exact hp
  · exact hd
  · exact hm

theorem quartet_has_maximal_phase_edge {B : Fin 4 → BasisMatrix} (hB : IsMUBQuartet B) :
    ∃ D : Fin 4 → BasisMatrix, IsMUBQuartet D ∧
      Physical (phaseOverlap (D 0) (D 1)) ∧ Dephased (phaseOverlap (D 0) (D 1)) ∧
      Maximal (phaseOverlap (D 0) (D 1)) := by
  obtain ⟨p,q,h⟩ := quartet_has_maximal_phase_edge_witness hB
  exact ⟨dephasedQuartet (permutedQuartet B p q),h⟩

def MaximalQuartetPhasePopulation (x : Fin 4 → ℝ) : Prop :=
  ∃ D : Fin 4 → BasisMatrix, IsMUBQuartet D ∧
    Physical (phaseOverlap (D 0) (D 1)) ∧ Dephased (phaseOverlap (D 0) (D 1)) ∧
    Maximal (phaseOverlap (D 0) (D 1)) ∧
    PhaseCoordinates (seedEntries (phaseOverlap (D 0) (D 1))) x

/-- The phase point is chosen after maximizing and dephasing. This theorem
does not transport membership in a box for the original northwest seed. -/
theorem quartet_reaches_maximal_radian_root {B : Fin 4 → BasisMatrix} (hB : IsMUBQuartet B) :
    Live MaximalQuartetPhasePopulation (radianRoot 4) := by
  obtain ⟨D,hD,hp,hd,hm⟩ := quartet_has_maximal_phase_edge hB
  have hu := phaseOverlap_norm_one (hD.2 0 1 (by decide))
  obtain ⟨x,hx,hphase⟩ := unit_carrier_seed_in_root (phaseOverlap (D 0) (D 1)) hu
  exact ⟨x,⟨D,hD,hp,hd,hm,hphase⟩,hx⟩

theorem maximal_population_is_quartet_population {x : Fin 4 → ℝ}
    (hx : MaximalQuartetPhasePopulation x) : QuartetPhasePopulation x := by
  obtain ⟨D,hD,_,hd,_,hphase⟩ := hx
  exact ⟨D,hD,hd.1,hd.2,hphase⟩

/-- All 400 signed comparisons are available at every member, with ties
and the zero boundary retained. No positivity is silently added. -/
theorem maximal_population_signed_bounds {x : Fin 4 → ℝ}
    (hx : MaximalQuartetPhasePopulation x) :
    ∃ D : Fin 4 → BasisMatrix, IsMUBQuartet D ∧
      PhaseCoordinates (seedEntries (phaseOverlap (D 0) (D 1))) x ∧
      (0<leadingR (phaseOverlap (D 0) (D 1)) ∨ leadingR (phaseOverlap (D 0) (D 1))=0) ∧
      ∀ a b c i j k : Fin 6, a<b → b<c → i<j → j<k →
        |cornerSigned (phaseOverlap (D 0) (D 1)) a b c i j k| ≤
          Real.sqrt (leadingR (phaseOverlap (D 0) (D 1))) := by
  obtain ⟨D,hD,hp,_,hm,hphase⟩ := hx
  exact ⟨D,hD,hphase,maximal_strict_or_zero hp,maximal_all_signed_abs_bound hp hm⟩

theorem quartet_reaches_maximal_radian_frontier
    (t : CertifiedTree MaximalQuartetPhasePopulation (radianRoot 4))
    {B : Fin 4 → BasisMatrix} (hB : IsMUBQuartet B) :
    ∃ c ∈ t.frontier, Live MaximalQuartetPhasePopulation c :=
  t.covers_live (quartet_reaches_maximal_radian_root hB)

theorem empty_maximal_radian_forest_noFour
    (t : CertifiedTree MaximalQuartetPhasePopulation (radianRoot 4))
    (he : t.frontier=[]) : NoFourMUB6 := by
  rintro ⟨B,hB⟩
  exact t.empty_excludes he (quartet_reaches_maximal_radian_root hB)

#print axioms phaseHadamard_physical
#print axioms actual_phaseOverlap_physical
#print axioms permutedQuartet_isMUB
#print axioms permutedQuartet_phaseOverlap
#print axioms dephase_eq_normalize
#print axioms quartet_has_maximal_phase_edge_witness
#print axioms quartet_has_maximal_phase_edge
#print axioms quartet_reaches_maximal_radian_root
#print axioms maximal_population_is_quartet_population
#print axioms maximal_population_signed_bounds
#print axioms quartet_reaches_maximal_radian_frontier
#print axioms empty_maximal_radian_forest_noFour
#print quartet_has_maximal_phase_edge
#print empty_maximal_radian_forest_noFour
end
end Mub6.MaximalRadian20261006
