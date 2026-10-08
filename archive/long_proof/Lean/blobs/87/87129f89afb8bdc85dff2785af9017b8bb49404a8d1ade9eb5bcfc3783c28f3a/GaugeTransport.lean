import FormalCore

/-! Common unit row phases for the physical raw carrier and all its rays.
The first-row hypothesis is explicit. This module establishes a gauge
transport, not carrier-region coverage or a no-quartet conclusion. -/

namespace Mub6.Numerical

open scoped BigOperators
open Matrix

def rowPhaseRay (d : Fin 6 → ℂ) (z : Vector) : Vector := fun r => d r * z r

def rowPhaseCarrier (d : Fin 6 → ℂ) (H : BasisMatrix) : Matrix (Fin 6) (Fin 6) ℂ :=
  fun r k => d r * H r k

/-- One common ambient phase cancels in every raw pair overlap. -/
theorem rowPhase_rawOverlap (d : Fin 6 → ℂ) (hd : ∀ r, Complex.normSq (d r) = 1)
    (z w : Vector) :
    rawOverlap (rowPhaseRay d z) (rowPhaseRay d w) = rawOverlap z w := by
  have h := overlap_rephase (fun r _ => z r) (fun r _ => w r)
    d (fun _ => 1) (fun _ => 1) hd (0 : Fin 6) (0 : Fin 6)
  simpa only [rephase, mul_one, star_one, one_mul, overlap, rawOverlap, rowPhaseRay] using h

theorem rowPhase_carrierAmplitude (d : Fin 6 → ℂ)
    (hd : ∀ r, Complex.normSq (d r) = 1) (H : BasisMatrix) (z : Vector) (k : Fin 6) :
    carrierAmplitude (rowPhaseCarrier d H) (rowPhaseRay d z) k =
      carrierAmplitude H z k :=
  rowPhase_rawOverlap d hd (fun r => H r k) z

theorem rowPhase_preserves_PhaseHadamard (d : Fin 6 → ℂ)
    (hd : ∀ r, Complex.normSq (d r) = 1)
    {H : Matrix (Fin 6) (Fin 6) ℂ} (hH : PhaseHadamard H) :
    PhaseHadamard (rowPhaseCarrier d H) := by
  constructor
  · intro r k
    simp only [rowPhaseCarrier, Complex.normSq_mul, hd r, hH.1 r k, one_mul]
  · have hprod : (rowPhaseCarrier d H).conjTranspose * rowPhaseCarrier d H =
        H.conjTranspose * H := by
      ext i j
      exact rowPhase_rawOverlap d hd (fun r => H r i) (fun r => H r j)
    exact hprod.trans hH.2

theorem rowPhase_preserves_rawUnitRay (d : Fin 6 → ℂ)
    (hd : ∀ r, Complex.normSq (d r) = 1) (h0 : d 0 = 1)
    {z : Vector} (hz : IsRawUnitRay z) : IsRawUnitRay (rowPhaseRay d z) := by
  constructor
  · simp only [rowPhaseRay, h0, hz.1, one_mul]
  · intro r
    simp only [rowPhaseRay, Complex.normSq_mul, hd r, hz.2 r, one_mul]

theorem rowPhase_preserves_rawCommonRay (d : Fin 6 → ℂ)
    (hd : ∀ r, Complex.normSq (d r) = 1) (h0 : d 0 = 1)
    {H : BasisMatrix} {z : Vector} (hz : IsRawCommonRay H z) :
    IsRawCommonRay (rowPhaseCarrier d H) (rowPhaseRay d z) := by
  constructor
  · exact rowPhase_preserves_rawUnitRay d hd h0 hz.1
  · intro k
    rw [rowPhase_carrierAmplitude d hd]
    exact hz.2 k

def firstColumnPhase (H : BasisMatrix) : Fin 6 → ℂ := fun r => star (H r 0)

def firstColumnGaugeCarrier (H : BasisMatrix) : Matrix (Fin 6) (Fin 6) ℂ :=
  rowPhaseCarrier (firstColumnPhase H) H

def firstColumnGaugeRay (H : BasisMatrix) (z : Vector) : Vector :=
  rowPhaseRay (firstColumnPhase H) z

theorem firstColumnPhase_normSq {H : Matrix (Fin 6) (Fin 6) ℂ}
    (hH : PhaseHadamard H) (r : Fin 6) : Complex.normSq (firstColumnPhase H r) = 1 := by
  simpa only [firstColumnPhase, Complex.star_def, Complex.normSq_conj] using hH.1 r 0

theorem firstColumnPhase_zero {H : BasisMatrix} (hrow : ∀ k, H 0 k = 1) :
    firstColumnPhase H 0 = 1 := by
  simp only [firstColumnPhase, hrow 0, star_one]

theorem firstColumnGauge_PhaseHadamard {H : Matrix (Fin 6) (Fin 6) ℂ}
    (hH : PhaseHadamard H) : PhaseHadamard (firstColumnGaugeCarrier H) :=
  rowPhase_preserves_PhaseHadamard (firstColumnPhase H) (firstColumnPhase_normSq hH) hH

theorem firstColumnGauge_first_column {H : Matrix (Fin 6) (Fin 6) ℂ}
    (hH : PhaseHadamard H) (r : Fin 6) : firstColumnGaugeCarrier H r 0 = 1 := by
  change (starRingEnd ℂ) (H r 0) * H r 0 = 1
  rw [← Complex.normSq_eq_conj_mul_self, hH.1 r 0]
  rfl

theorem firstColumnGauge_first_row {H : BasisMatrix}
    (hrow : ∀ k, H 0 k = 1) (k : Fin 6) : firstColumnGaugeCarrier H 0 k = 1 := by
  simp only [firstColumnGaugeCarrier, rowPhaseCarrier, firstColumnPhase,
    hrow 0, hrow k, star_one, one_mul]

theorem firstColumnGauge_rawCommonRay {H : Matrix (Fin 6) (Fin 6) ℂ}
    (hH : PhaseHadamard H) (hrow : ∀ k, H 0 k = 1)
    {z : Vector} (hz : IsRawCommonRay H z) :
    IsRawCommonRay (firstColumnGaugeCarrier H) (firstColumnGaugeRay H z) :=
  rowPhase_preserves_rawCommonRay (firstColumnPhase H) (firstColumnPhase_normSq hH)
    (firstColumnPhase_zero hrow) hz

theorem firstColumnGauge_rawOverlap {H : Matrix (Fin 6) (Fin 6) ℂ}
    (hH : PhaseHadamard H) (z w : Vector) :
    rawOverlap (firstColumnGaugeRay H z) (firstColumnGaugeRay H w) = rawOverlap z w :=
  rowPhase_rawOverlap (firstColumnPhase H) (firstColumnPhase_normSq hH) z w

theorem firstColumnGauge_orthogonality_iff {H : Matrix (Fin 6) (Fin 6) ℂ}
    (hH : PhaseHadamard H) (z w : Vector) :
    rawOverlap (firstColumnGaugeRay H z) (firstColumnGaugeRay H w) = 0 ↔
      rawOverlap z w = 0 := by
  rw [firstColumnGauge_rawOverlap hH]

theorem firstColumnGauge_unbiasedness_iff {H : Matrix (Fin 6) (Fin 6) ℂ}
    (hH : PhaseHadamard H) (z w : Vector) :
    Complex.normSq (rawOverlap (firstColumnGaugeRay H z) (firstColumnGaugeRay H w)) = 6 ↔
      Complex.normSq (rawOverlap z w) = 6 := by
  rw [firstColumnGauge_rawOverlap hH]

/-- A single carrier-dependent transformation simultaneously transports all
raw common rays and every pair relation into the first-row/column-one gauge. -/
theorem exists_first_row_column_gauge {H : Matrix (Fin 6) (Fin 6) ℂ}
    (hH : PhaseHadamard H) (hrow : ∀ k, H 0 k = 1) :
    ∃ H' : Matrix (Fin 6) (Fin 6) ℂ, ∃ T : Vector → Vector,
      PhaseHadamard H' ∧ (∀ k, H' 0 k = 1) ∧ (∀ r, H' r 0 = 1) ∧
      (∀ z, IsRawCommonRay H z → IsRawCommonRay H' (T z)) ∧
      (∀ z w, rawOverlap (T z) (T w) = rawOverlap z w) := by
  refine ⟨firstColumnGaugeCarrier H, firstColumnGaugeRay H,
    firstColumnGauge_PhaseHadamard hH, firstColumnGauge_first_row hrow,
    firstColumnGauge_first_column hH, ?_, firstColumnGauge_rawOverlap hH⟩
  intro z hz
  exact firstColumnGauge_rawCommonRay hH hrow hz

#print axioms rowPhase_rawOverlap
#print axioms rowPhase_carrierAmplitude
#print axioms rowPhase_preserves_PhaseHadamard
#print axioms rowPhase_preserves_rawUnitRay
#print axioms rowPhase_preserves_rawCommonRay
#print axioms firstColumnPhase_normSq
#print axioms firstColumnPhase_zero
#print axioms firstColumnGauge_PhaseHadamard
#print axioms firstColumnGauge_first_column
#print axioms firstColumnGauge_first_row
#print axioms firstColumnGauge_rawCommonRay
#print axioms firstColumnGauge_rawOverlap
#print axioms firstColumnGauge_orthogonality_iff
#print axioms firstColumnGauge_unbiasedness_iff
#print axioms exists_first_row_column_gauge

end Mub6.Numerical
