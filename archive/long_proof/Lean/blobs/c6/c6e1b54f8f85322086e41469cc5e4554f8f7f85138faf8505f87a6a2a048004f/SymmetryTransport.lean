import GaugeTransport

/-! Symmetries of the physical unnormalized carrier and its raw common rays.
Every ray has first coordinate exactly one. Arbitrary row permutations are
renormalized by the moved first coordinate; fixed-zero permutations need no
renormalization. No classification or exclusion claim is made here. -/

namespace Mub6.Numerical

open scoped BigOperators
open Matrix

def permuteRows (p : Equiv.Perm (Fin 6)) (H : BasisMatrix) : BasisMatrix :=
  fun r k => H (p r) k

def permuteRay (p : Equiv.Perm (Fin 6)) (z : Vector) : Vector :=
  fun r => z (p r)

def permuteCols (q : Equiv.Perm (Fin 6)) (H : BasisMatrix) : BasisMatrix :=
  fun r k => H r (q k)

theorem permuteRows_rawOverlap (p : Equiv.Perm (Fin 6)) (z w : Vector) :
    rawOverlap (permuteRay p z) (permuteRay p w) = rawOverlap z w := by
  exact Equiv.sum_comp p (fun r => star (z r) * w r)

theorem permuteRows_carrierAmplitude (p : Equiv.Perm (Fin 6))
    (H : BasisMatrix) (z : Vector) (k : Fin 6) :
    carrierAmplitude (permuteRows p H) (permuteRay p z) k =
      carrierAmplitude H z k :=
  permuteRows_rawOverlap p (fun r => H r k) z

theorem permuteRows_PhaseHadamard (p : Equiv.Perm (Fin 6))
    {H : BasisMatrix} (hH : PhaseHadamard H) :
    PhaseHadamard (permuteRows p H) := by
  constructor
  · intro r k
    exact hH.1 (p r) k
  · ext i j
    change rawOverlap (permuteRay p (fun r => H r i))
      (permuteRay p (fun r => H r j)) = _
    rw [permuteRows_rawOverlap]
    exact congrArg (fun M : Matrix (Fin 6) (Fin 6) ℂ => M i j) hH.2

theorem permuteRows_rawUnitRay (p : Equiv.Perm (Fin 6)) (hp : p 0 = 0)
    {z : Vector} (hz : IsRawUnitRay z) :
    IsRawUnitRay (permuteRay p z) := by
  exact ⟨by simpa [permuteRay, hp] using hz.1, fun r => hz.2 (p r)⟩

theorem permuteRows_commonRay (p : Equiv.Perm (Fin 6)) (hp : p 0 = 0)
    {H : BasisMatrix} {z : Vector} (hz : IsRawCommonRay H z) :
    IsRawCommonRay (permuteRows p H) (permuteRay p z) := by
  exact ⟨permuteRows_rawUnitRay p hp hz.1,
    fun k => by rw [permuteRows_carrierAmplitude]; exact hz.2 k⟩

theorem permuteCols_carrierAmplitude (q : Equiv.Perm (Fin 6))
    (H : BasisMatrix) (z : Vector) (k : Fin 6) :
    carrierAmplitude (permuteCols q H) z k = carrierAmplitude H z (q k) := rfl

theorem permuteCols_PhaseHadamard (q : Equiv.Perm (Fin 6))
    {H : BasisMatrix} (hH : PhaseHadamard H) :
    PhaseHadamard (permuteCols q H) := by
  constructor
  · intro r k
    exact hH.1 r (q k)
  · ext i j
    change rawOverlap (fun r => H r (q i)) (fun r => H r (q j)) = _
    have h := congrArg (fun M : Matrix (Fin 6) (Fin 6) ℂ => M (q i) (q j)) hH.2
    change rawOverlap (fun r => H r (q i)) (fun r => H r (q j)) = _ at h
    by_cases hij : i = j
    · subst j
      simpa [Matrix.smul_apply, Matrix.one_apply] using h
    · have hq : q i ≠ q j := fun he => hij (q.injective he)
      simpa [Matrix.smul_apply, Matrix.one_apply, hij, hq] using h

theorem permuteCols_commonRay (q : Equiv.Perm (Fin 6))
    {H : BasisMatrix} {z : Vector} (hz : IsRawCommonRay H z) :
    IsRawCommonRay (permuteCols q H) z := by
  exact ⟨hz.1, fun k => by rw [permuteCols_carrierAmplitude]; exact hz.2 (q k)⟩

def conjugateCarrier (H : BasisMatrix) : BasisMatrix := fun r k => star (H r k)
def conjugateRay (z : Vector) : Vector := fun r => star (z r)

theorem conjugate_rawOverlap (z w : Vector) :
    rawOverlap (conjugateRay z) (conjugateRay w) =
      star (rawOverlap z w) := by
  simp [rawOverlap, conjugateRay, Complex.star_def, mul_comm]

theorem conjugate_carrierAmplitude (H : BasisMatrix) (z : Vector) (k : Fin 6) :
    carrierAmplitude (conjugateCarrier H) (conjugateRay z) k =
      star (carrierAmplitude H z k) :=
  conjugate_rawOverlap (fun r => H r k) z

theorem conjugate_PhaseHadamard {H : BasisMatrix} (hH : PhaseHadamard H) :
    PhaseHadamard (conjugateCarrier H) := by
  constructor
  · intro r k
    simpa [conjugateCarrier, Complex.star_def] using hH.1 r k
  · ext i j
    change rawOverlap (conjugateRay (fun r => H r i))
      (conjugateRay (fun r => H r j)) = _
    rw [conjugate_rawOverlap]
    have h := congrArg (fun M : Matrix (Fin 6) (Fin 6) ℂ => M i j) hH.2
    change rawOverlap (fun r => H r i) (fun r => H r j) = _ at h
    rw [h]
    by_cases hij : i = j <;> simp [Matrix.smul_apply, Matrix.one_apply, hij,
      Complex.star_def]

theorem conjugate_rawUnitRay {z : Vector} (hz : IsRawUnitRay z) :
    IsRawUnitRay (conjugateRay z) := by
  constructor
  · simpa only [conjugateRay, hz.1, star_one]
  · intro r
    simpa [conjugateRay, Complex.star_def] using hz.2 r

theorem conjugate_commonRay {H : BasisMatrix} {z : Vector}
    (hz : IsRawCommonRay H z) :
    IsRawCommonRay (conjugateCarrier H) (conjugateRay z) := by
  constructor
  · exact conjugate_rawUnitRay hz.1
  · intro k
    simpa [conjugate_carrierAmplitude, Complex.star_def] using hz.2 k

theorem conjugate_pair_normSq (z w : Vector) :
    Complex.normSq (rawOverlap (conjugateRay z) (conjugateRay w)) =
      Complex.normSq (rawOverlap z w) := by
  simp [conjugate_rawOverlap, Complex.star_def]

#print axioms permuteRows_rawOverlap
#print axioms permuteRows_PhaseHadamard
#print axioms permuteRows_commonRay
#print axioms permuteCols_PhaseHadamard
#print axioms permuteCols_commonRay
#print axioms conjugate_rawOverlap
#print axioms conjugate_PhaseHadamard
#print axioms conjugate_commonRay
#print axioms conjugate_pair_normSq

end Mub6.Numerical
