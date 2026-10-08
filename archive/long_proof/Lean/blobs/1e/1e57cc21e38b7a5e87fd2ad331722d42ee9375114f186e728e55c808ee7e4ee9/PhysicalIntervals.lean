import IntervalKernel

namespace Mub6.Numerical.IntervalKernel

open scoped BigOperators

def extendRayBox (q : RawRayBox) : Fin 6 → RationalRectangle :=
  Fin.cases (boxPoint 1 0) q

theorem mem_extendRayBox {q : RawRayBox} {z : Vector} (hz : MemRawRayBox q z) (r : Fin 6) :
    MemRectangle (extendRayBox q r) (z r) := by
  refine Fin.cases ?_ (fun j => ?_) r
  · simp [extendRayBox, boxPoint, rectangle, point, MemRectangle, hz.1]
  · exact hz.2 j

def amplitudeBox (E : CarrierRegion) (q : RawRayBox) (k : Fin 6) : RationalRectangle :=
  boxSum (fun r : Fin 6 => boxMul (boxConj (E r k)) (extendRayBox q r))

theorem mem_amplitudeBox {E : CarrierRegion} {H : BasisMatrix} {q : RawRayBox} {z : Vector}
    (hH : CarrierBox E H) (hz : MemRawRayBox q z) (k : Fin 6) :
    MemRectangle (amplitudeBox E q k) (carrierAmplitude H z k) := by
  exact mem_boxSum _ _ (fun r => mem_boxMul (mem_boxConj (hH r k)) (mem_extendRayBox hz r))

def overlapBox (q r : RawRayBox) : RationalRectangle :=
  boxSum (fun j : Fin 6 => boxMul (boxConj (extendRayBox q j)) (extendRayBox r j))

theorem mem_overlapBox {q r : RawRayBox} {z w : Vector}
    (hz : MemRawRayBox q z) (hw : MemRawRayBox r w) :
    MemRectangle (overlapBox q r) (rawOverlap z w) := by
  exact mem_boxSum _ _ (fun j => mem_boxMul (mem_boxConj (mem_extendRayBox hz j))
    (mem_extendRayBox hw j))

theorem excludes_false_of_mem {a : Interval} {q : ℚ} (h : Mem a (q : ℝ)) :
    excludes a q = false := by
  cases he : excludes a q
  · rfl
  · exact False.elim (excludes_sound he h rfl)

/-- A true relation flag is conservative: it need not be realized by rays. -/
def orthPossible (q r : RawRayBox) : Bool :=
  !(excludes (reInterval (overlapBox q r)) 0) &&
    !(excludes (imInterval (overlapBox q r)) 0)

def unbiasedPossible (q r : RawRayBox) : Bool :=
  !(excludes (boxNormSq (overlapBox q r)) 6)

theorem orthPossible_sound {q r : RawRayBox} {z w : Vector}
    (hz : MemRawRayBox q z) (hw : MemRawRayBox r w) (horth : rawOverlap z w = 0) :
    orthPossible q r = true := by
  have hm := mem_overlapBox hz hw
  rw [horth] at hm
  have hr : Mem (reInterval (overlapBox q r)) ((0 : ℚ) : ℝ) := by
    simpa [Mem, reInterval] using And.intro hm.1 hm.2.1
  have hi : Mem (imInterval (overlapBox q r)) ((0 : ℚ) : ℝ) := by
    simpa [Mem, imInterval] using hm.2.2
  simp only [orthPossible, excludes_false_of_mem hr, excludes_false_of_mem hi]
  rfl

theorem unbiasedPossible_sound {q r : RawRayBox} {z w : Vector}
    (hz : MemRawRayBox q z) (hw : MemRawRayBox r w)
    (hunb : Complex.normSq (rawOverlap z w) = 6) : unbiasedPossible q r = true := by
  have hm := mem_boxNormSq (mem_overlapBox hz hw)
  rw [hunb] at hm
  have hm' : Mem (boxNormSq (overlapBox q r)) ((6 : ℚ) : ℝ) := by simpa using hm
  simp only [unbiasedPossible, excludes_false_of_mem hm']
  rfl

inductive RejectWitness where
  | unit (j : Fin 5)
  | amplitude (k : Fin 6)
  deriving DecidableEq, Repr

/-- The witness chooses a single computed residual; no external bound is trusted. -/
def rejectRayBox (E : CarrierRegion) (q : RawRayBox) : RejectWitness → Bool
  | .unit j => excludes (boxNormSq (q j)) 1
  | .amplitude k => excludes (boxNormSq (amplitudeBox E q k)) 6

theorem rejectRayBox_sound {E : CarrierRegion} {q : RawRayBox} (witness : RejectWitness)
    (hcheck : rejectRayBox E q witness = true) {H : BasisMatrix} {z : Vector}
    (hH : CarrierBox E H) (hz : MemRawRayBox q z) : ¬ IsRawCommonRay H z := by
  intro hcommon
  cases witness with
  | unit j =>
    have hm := mem_boxNormSq (hz.2 j)
    have hn := hcommon.1.2 j.succ
    have he := excludes_sound hcheck hm
    exact he (by simpa using hn)
  | amplitude k =>
    have hm := mem_boxNormSq (mem_amplitudeBox hH hz k)
    have he := excludes_sound hcheck hm
    exact he (by simpa using hcommon.2 k)

def fullRoot : RawRayBox := fun _ => ⟨-1, 1, -1, 1⟩

theorem fullRoot_covers {z : Vector} (hz : IsRawUnitRay z) : MemRawRayBox fullRoot z := by
  refine ⟨hz.1, ?_⟩
  intro j
  have h := unit_coordinate_bounds (hz.2 j.succ)
  exact ⟨by simpa [fullRoot] using h.1.1, by simpa [fullRoot] using h.1.2,
    by simpa [fullRoot] using h.2.1, by simpa [fullRoot] using h.2.2⟩

def smallBoxCheck (q : RawRayBox) : Bool := decide (∀ j, squaredDiameter (q j) ≤ 1)

theorem smallBoxCheck_sound {q : RawRayBox} (h : smallBoxCheck q = true) : IsSmallRayBox q := by
  exact (of_decide_eq_true h : ∀ j, squaredDiameter (q j) ≤ 1)

#print axioms mem_extendRayBox
#print axioms mem_amplitudeBox
#print axioms mem_overlapBox
#print axioms orthPossible_sound
#print axioms unbiasedPossible_sound
#print axioms rejectRayBox_sound
#print axioms fullRoot_covers
#print axioms smallBoxCheck_sound

end Mub6.Numerical.IntervalKernel
