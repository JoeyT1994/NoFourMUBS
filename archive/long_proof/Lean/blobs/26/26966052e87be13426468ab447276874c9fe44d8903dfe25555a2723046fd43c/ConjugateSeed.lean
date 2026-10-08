import PhysicalInvariant

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.InvariantBinding20261006
open scoped ComplexConjugate BigOperators Matrix
open NativeSigned20261006 ChartExtension20261006 ChartRadius0120261006
noncomputable section

def conjugateMatrix (H : Mat6) : Mat6 := fun i j => conj (H i j)

theorem conjugateMatrix_physical {H : Mat6} (hH : Physical H) : Physical (conjugateMatrix H) := by
  constructor
  · intro i j; simpa [conjugateMatrix] using hH.1 i j
  · intro i j
    have h := congrArg (starRingEnd ℂ) (hH.2 i j)
    simpa [conjugateMatrix,map_sum,map_mul,apply_ite] using h

theorem conjugateMatrix_dephased {H : Mat6} (hd : Dephased H) : Dephased (conjugateMatrix H) := by
  constructor
  · intro j; simp [conjugateMatrix,hd.1]
  · intro i; simp [conjugateMatrix,hd.2]

theorem gramEntry_conjugateMatrix (H : Mat6) (C : Finset (Fin 6)) (i j : Fin 6) :
    gramEntry (conjugateMatrix H) C i j=conj (gramEntry H C i j) := by
  simp [gramEntry,conjugateMatrix,map_sum,map_mul]

theorem gramInvariant_conjugate (s t r : ℂ) :
    gramInvariant (conj s) (conj t) (conj r)=gramInvariant s t r := by
  have hj : gramJ (conj s) (conj t) (conj r)=gramJ s t r := by
    have he : conj s*conj r*conj (conj t)=conj (s*r*conj t) := by simp only [map_mul]
    simp only [gramJ,he,Complex.conj_re]
  simp only [gramInvariant,gramP,gramW,Complex.normSq_conj,hj]

theorem cornerR_conjugateMatrix (H : Mat6) (a b c : Fin 6) (C : Finset (Fin 6)) :
    cornerR (conjugateMatrix H) a b c C=cornerR H a b c C := by
  simp only [cornerR,gramEntry_conjugateMatrix,← map_neg]
  exact gramInvariant_conjugate _ _ _

theorem leadingR_conjugateMatrix (H : Mat6) : leadingR (conjugateMatrix H)=leadingR H :=
  cornerR_conjugateMatrix H 0 1 2 leadingCols

theorem conjugateMatrix_maximal {H : Mat6} (hm : Maximal H) : Maximal (conjugateMatrix H) := by
  intro a b c hab hbc C hC
  rw [cornerR_conjugateMatrix,leadingR_conjugateMatrix]
  exact hm a b c hab hbc C hC

theorem phase_conjugate (t : ℝ) : conj (phase t)=phase (-t) := by
  unfold phase
  rw [← Complex.exp_conj]
  congr 1
  simp

/-- The two stationary seeds are complex conjugates, with their integer
angle representatives differing by a complete turn as needed. -/
theorem seed_phase_conjugate (b : Bool) (i : Fin 4) :
    conj (phase (seedAngle b i))=phase (seedAngle (!b) i) := by
  have h2 : conj (phase (2*Real.pi/3))=phase (4*Real.pi/3) := by
    rw [← reference_pair_fourier.2,← reference_pair_fourier.1]
    apply Complex.ext <;> simp [pairMinus,pairPlus]
  have h4 : conj (phase (4*Real.pi/3))=phase (2*Real.pi/3) := by
    rw [← h2]
    simp
  cases b <;> fin_cases i <;> simp [seedAngle,h2,h4]

theorem shifted_seed_phase_conjugate (b : Bool) (i : Fin 4) (u : ℝ) :
    conj (phase (seedAngle b i+u))=phase (seedAngle (!b) i+(-u)) := by
  rw [phase_add,map_mul,seed_phase_conjugate,phase_conjugate,← phase_add]

/-- Conjugation changes the seed and negates the exact circular lifts; it
preserves both the puncture and the included outer boundary. -/
theorem seedBall_conjugateMatrix {H : Mat6} (b : Bool) (r : ℝ)
    (hball : InPuncturedSeedBall H b r) :
    InPuncturedSeedBall (conjugateMatrix H) (!b) r := by
  obtain ⟨u,he,hu,hn⟩ := hball
  refine ⟨fun i => -u i,?_,?_,?_⟩
  · intro i
    have hentry : seedEntry (conjugateMatrix H) i=conj (seedEntry H i) := by
      fin_cases i <;> rfl
    rw [hentry,he i]
    simpa only [phase,Complex.ofReal_add] using shifted_seed_phase_conjugate b i (u i)
  · intro i; simpa only [abs_neg] using hu i
  · obtain ⟨i,hi⟩ := hn
    exact ⟨i,neg_ne_zero.mpr hi⟩

/-- The source hardcodes the 2442 seed, so use entrywise conjugation before
canonicalizing when the physical matrix starts at the 4224 seed. -/
def source2442Matrix (H : Mat6) (b : Bool) : Mat6 := if b then conjugateMatrix H else H

theorem source2442_leadingR (H : Mat6) (b : Bool) : leadingR (source2442Matrix H b)=leadingR H := by
  cases b <;> simp [source2442Matrix,leadingR_conjugateMatrix]

/-- No physical or maximality branch is discarded by restricting the exact
native chart to the hardcoded 2442 seed. -/
theorem source2442_physical_domain {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hm : Maximal H) (hR : 0 < leadingR H)
    (b : Bool) (r : ℝ) (hball : InPuncturedSeedBall H b r) :
    Physical (source2442Matrix H b) ∧ Dephased (source2442Matrix H b) ∧
    Maximal (source2442Matrix H b) ∧ leadingR (source2442Matrix H b)=leadingR H ∧
    0 < leadingR (source2442Matrix H b) ∧ InPuncturedSeedBall (source2442Matrix H b) false r := by
  cases b
  · exact ⟨hH,hd,hm,rfl,hR,hball⟩
  · refine ⟨conjugateMatrix_physical hH,conjugateMatrix_dephased hd,
      conjugateMatrix_maximal hm,leadingR_conjugateMatrix H,?_,?_⟩
    · simpa only [source2442Matrix,↓reduceIte,leadingR_conjugateMatrix] using hR
    · simpa only [Bool.not_true,source2442Matrix,↓reduceIte] using seedBall_conjugateMatrix true r hball

end
end Centiradian20261006.InvariantBinding20261006

#print axioms Centiradian20261006.InvariantBinding20261006.conjugateMatrix_physical
#print axioms Centiradian20261006.InvariantBinding20261006.conjugateMatrix_dephased
#print axioms Centiradian20261006.InvariantBinding20261006.gramEntry_conjugateMatrix
#print axioms Centiradian20261006.InvariantBinding20261006.gramInvariant_conjugate
#print axioms Centiradian20261006.InvariantBinding20261006.cornerR_conjugateMatrix
#print axioms Centiradian20261006.InvariantBinding20261006.leadingR_conjugateMatrix
#print axioms Centiradian20261006.InvariantBinding20261006.conjugateMatrix_maximal
#print axioms Centiradian20261006.InvariantBinding20261006.phase_conjugate
#print axioms Centiradian20261006.InvariantBinding20261006.seed_phase_conjugate
#print axioms Centiradian20261006.InvariantBinding20261006.shifted_seed_phase_conjugate
#print axioms Centiradian20261006.InvariantBinding20261006.seedBall_conjugateMatrix
#print axioms Centiradian20261006.InvariantBinding20261006.source2442_leadingR
#print axioms Centiradian20261006.InvariantBinding20261006.source2442_physical_domain
