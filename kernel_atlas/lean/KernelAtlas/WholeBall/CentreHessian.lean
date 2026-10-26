import KernelAtlas.WholeBall.CentreMatrix
import KernelAtlas.WholeBall.MatrixTensor

/-! The ninety row-Gram Fourier terms and their quadratic phase tensor.
The coefficients are the actual centre entries, enclosed by the side-root
and forced-completion models. No floating-point centre is substituted. -/

open Matrix Complex Hadamard6 NoFourMUBs.SeedAtlas
open NoFourMUBs.KernelAtlas.Seed

namespace NoFourMUBs.KernelAtlas.WholeBall

def termPair (t : Fin 90) : Fin 15 := ⟨t.val / 6, by omega⟩
def termColumn (t : Fin 90) : Fin 6 := ⟨t.val % 6, by omega⟩

def phaseFrequencies : Matrix (Fin 90) (Fin 36) ℚ := fun t b =>
  if phaseCol b = termColumn t then
    (if phaseRow b = (gramPair (termPair t)).1 then 1 else 0) -
    (if phaseRow b = (gramPair (termPair t)).2 then 1 else 0)
  else 0

noncomputable def gramCoefficient (H : Mat6) (t : Fin 90) : ℂ :=
  H (phaseIndex (gramPair (termPair t)).1) (phaseIndex (termColumn t)) *
    star (H (phaseIndex (gramPair (termPair t)).2) (phaseIndex (termColumn t)))

noncomputable def realCoefficients (H : Mat6) : Matrix (Fin 30) (Fin 90) ℝ := fun a t =>
  if jacPair a = termPair t then
    if a.val < 15 then (gramCoefficient H t).re else (gramCoefficient H t).im
  else 0

noncomputable def imaginaryCoefficients (H : Mat6) : Matrix (Fin 30) (Fin 90) ℝ := fun a t =>
  if jacPair a = termPair t then
    if a.val < 15 then (I * gramCoefficient H t).re else (I * gramCoefficient H t).im
  else 0

lemma sum_terms {R : Type*} [AddCommMonoid R] (f : Fin 15 → Fin 6 → R) :
    (∑ t : Fin 90, f (termPair t) (termColumn t)) = ∑ p, ∑ k, f p k :=
  (Equiv.sum_comp (finProdFinEquiv (m := 15) (n := 6)).symm f.uncurry).trans
    (Fintype.sum_prod_type _)

def coefficientInterval (B : BallD) (D : BoxD) (t : Fin 90) : IvC :=
  ivm (entryInterval B D (gramPair (termPair t)).1 (termColumn t))
    (ivConj (entryInterval B D (gramPair (termPair t)).2 (termColumn t)))

def coefficientBox (B : BallD) (D : BoxD) : MatrixBox 30 90 where
  mid a t := if jacPair a = termPair t then
    gridQ (if a.val < 15 then (coefficientInterval B D t).1.1
      else (coefficientInterval B D t).1.2) else 0
  rad a t := if jacPair a = termPair t then radiusQ (coefficientInterval B D t).2 else 0

def imaginaryCoefficientBox (B : BallD) (D : BoxD) : MatrixBox 30 90 where
  mid a t := if jacPair a = termPair t then
    gridQ (if a.val < 15 then (ivI (coefficientInterval B D t)).1.1
      else (ivI (coefficientInterval B D t)).1.2) else 0
  rad a t := if jacPair a = termPair t then radiusQ (ivI (coefficientInterval B D t)).2 else 0

theorem coefficientBox_sound {B : BallD} {D : BoxD} {Q : RMat6}
    (hQ : ∀ i j, (gT (kModels B D) (ix i j)).Has 0 (phaseMat Q i j)) :
    (coefficientBox B D).Has (realCoefficients (phaseMat Q)) := by
  have hu : InBox D.hb (0 : Fin 4 → ℝ) := by
    intro j
    simp only [Pi.zero_apply, abs_zero]
    exact rn_nonneg _
  have he (i j : Fin 6) : IvH (entryInterval B D i j) (phaseMat Q (phaseIndex i) (phaseIndex j)) :=
    ivH_ivc hu (hQ _ _)
  intro a t
  have hz : IvH (coefficientInterval B D t) (gramCoefficient (phaseMat Q) t) :=
    ivH_mul (he _ _) (ivH_conj (he _ _))
  simp only [coefficientBox, realCoefficients]
  split_ifs with hp ha
  · exact ivH_re hz
  · exact ivH_im hz
  · norm_num

theorem imaginaryCoefficientBox_sound {B : BallD} {D : BoxD} {Q : RMat6}
    (hQ : ∀ i j, (gT (kModels B D) (ix i j)).Has 0 (phaseMat Q i j)) :
    (imaginaryCoefficientBox B D).Has (imaginaryCoefficients (phaseMat Q)) := by
  have hu : InBox D.hb (0 : Fin 4 → ℝ) := by
    intro j
    simp only [Pi.zero_apply, abs_zero]
    exact rn_nonneg _
  have he (i j : Fin 6) : IvH (entryInterval B D i j) (phaseMat Q (phaseIndex i) (phaseIndex j)) :=
    ivH_ivc hu (hQ _ _)
  intro a t
  have hz : IvH (ivI (coefficientInterval B D t)) (I * gramCoefficient (phaseMat Q) t) :=
    ivH_I (ivH_mul (he _ _) (ivH_conj (he _ _)))
  simp only [imaginaryCoefficientBox, imaginaryCoefficients]
  split_ifs with hp ha
  · exact ivH_re hz
  · exact ivH_im hz
  · norm_num

/-- The flattened bilinear tensor `D²Φ(Q)[U,V]`: differentiating the
exponential twice gives minus the product of the two frequency evaluations. -/
noncomputable def phaseSecondTensor {m n : ℕ} (H : Mat6)
    (U : Matrix (Fin 36) (Fin m) ℝ) (V : Matrix (Fin 36) (Fin n) ℝ) :
    Matrix (Fin 30) (Fin (m * n)) ℝ :=
  -(realCoefficients H * rowTensor (realMatrix phaseFrequencies * U) (realMatrix phaseFrequencies * V))

end NoFourMUBs.KernelAtlas.WholeBall
