import KernelAtlas.WholeBall.Centre
import KernelAtlas.WholeBall.MatrixArithmetic

/-! Exact rational enclosures of the actual centre phases, entries, and row-Gram
Jacobian. The Gram inverse is enclosed through `gramProjection_enclosure`. -/

open Matrix Complex Hadamard6 NoFourMUBs.SeedAtlas NoFourMUBs.Step2
open NoFourMUBs.KernelAtlas.Seed

namespace NoFourMUBs.KernelAtlas.WholeBall

def phaseIndex (i : Fin 6) : I6 :=
  if hi : i.val < 3 then .inl ⟨i.val, hi⟩ else .inr ⟨i.val - 3, by omega⟩

def gramPair : Fin 15 → Fin 6 × Fin 6 :=
  ![(0,1),(0,2),(0,3),(0,4),(0,5),(1,2),(1,3),(1,4),(1,5),
    (2,3),(2,4),(2,5),(3,4),(3,5),(4,5)]

def jacPair (a : Fin 30) : Fin 15 := ⟨a.val % 15, by omega⟩

def phaseRow (b : Fin 36) : Fin 6 := ⟨b.val / 6, by omega⟩
def phaseCol (b : Fin 36) : Fin 6 := ⟨b.val % 6, by omega⟩

def jacSign (a : Fin 30) (b : Fin 36) : ℤ :=
  (if phaseRow b = (gramPair (jacPair a)).1 then 1 else 0) -
  (if phaseRow b = (gramPair (jacPair a)).2 then 1 else 0)

noncomputable def centreJacobian (H : Mat6) : Matrix (Fin 30) (Fin 36) ℝ := fun a b =>
  let p := gramPair (jacPair a)
  let z := I * (H (phaseIndex p.1) (phaseIndex (phaseCol b)) *
    star (H (phaseIndex p.2) (phaseIndex (phaseCol b))))
  (jacSign a b : ℝ) * if a.val < 15 then z.re else z.im

def entryInterval (B : BallD) (D : BoxD) (i j : Fin 6) : IvC :=
  ivc D.hb (gT (kModels B D) (ix (phaseIndex i) (phaseIndex j)))

def gramInterval (B : BallD) (D : BoxD) (a : Fin 30) (b : Fin 36) : IvC :=
  let p := gramPair (jacPair a)
  ivI (ivm (entryInterval B D p.1 (phaseCol b)) (ivConj (entryInterval B D p.2 (phaseCol b))))

def gridQ (z : ℤ) : ℚ := (z : ℚ) / 2 ^ pp
def radiusQ (r : ℕ) : ℚ := (r : ℚ) / 2 ^ pp

lemma gridQ_real (z : ℤ) : (gridQ z : ℝ) = rq z := by
  simp [gridQ, rq]

lemma radiusQ_real (r : ℕ) : (radiusQ r : ℝ) = rn r := by
  simp [radiusQ, rn]

lemma ivH_re {a : IvC} {z : ℂ} (h : IvH a z) :
    |z.re - (gridQ a.1.1 : ℝ)| ≤ (radiusQ a.2 : ℝ) := by
  rw [gridQ_real, radiusQ_real]
  have he : z.re - rq a.1.1 = (z - cz a.1).re := by
    rw [Complex.sub_re, cz_eq, Complex.add_re, Complex.ofReal_re, Complex.mul_re,
      Complex.ofReal_re, Complex.ofReal_im, Complex.I_re, Complex.I_im]
    simp [rq]
  rw [he]
  exact (Complex.abs_re_le_norm _).trans h

lemma ivH_im {a : IvC} {z : ℂ} (h : IvH a z) :
    |z.im - (gridQ a.1.2 : ℝ)| ≤ (radiusQ a.2 : ℝ) := by
  rw [gridQ_real, radiusQ_real]
  have he : z.im - rq a.1.2 = (z - cz a.1).im := by
    rw [Complex.sub_im, cz_eq, Complex.add_im, Complex.ofReal_im, Complex.mul_im,
      Complex.ofReal_re, Complex.ofReal_im, Complex.I_re, Complex.I_im]
    simp [rq]
  rw [he]
  exact (Complex.abs_im_le_norm _).trans h

def jacobianBox (B : BallD) (D : BoxD) : MatrixBox 30 36 where
  mid a b := (jacSign a b : ℚ) * gridQ
    (if a.val < 15 then (gramInterval B D a b).1.1 else (gramInterval B D a b).1.2)
  rad a b := |(jacSign a b : ℚ)| * radiusQ (gramInterval B D a b).2

theorem jacobianBox_sound {B : BallD} {D : BoxD} {Q : RMat6}
    (hQ : ∀ i j, (gT (kModels B D) (ix i j)).Has 0 (phaseMat Q i j)) :
    (jacobianBox B D).Has (centreJacobian (phaseMat Q)) := by
  have hu : InBox D.hb (0 : Fin 4 → ℝ) := by
    intro j
    simp only [Pi.zero_apply, abs_zero]
    exact rn_nonneg _
  have he (i j : Fin 6) : IvH (entryInterval B D i j) (phaseMat Q (phaseIndex i) (phaseIndex j)) :=
    ivH_ivc hu (hQ _ _)
  intro a b
  have hz := ivH_I (ivH_mul (he (gramPair (jacPair a)).1 (phaseCol b))
    (ivH_conj (he (gramPair (jacPair a)).2 (phaseCol b))))
  change IvH (gramInterval B D a b) _ at hz
  change |(centreJacobian (phaseMat Q)) a b -
    (((jacSign a b : ℚ) * gridQ (if a.val < 15 then (gramInterval B D a b).1.1
      else (gramInterval B D a b).1.2) : ℚ) : ℝ)| ≤ _
  simp only [centreJacobian, jacobianBox, Rat.cast_mul, Rat.cast_intCast, Rat.cast_abs]
  split_ifs with ha
  · rw [← mul_sub, abs_mul]
    exact mul_le_mul_of_nonneg_left (ivH_re hz) (abs_nonneg _)
  · rw [← mul_sub, abs_mul]
    exact mul_le_mul_of_nonneg_left (ivH_im hz) (abs_nonneg _)

def centrePhaseBox (B : BallD) (D : BoxD) : MatrixBox 36 1 where
  mid a _ := gridQ (ivc D.hb (gT (qModels B D)
    (ix (phaseIndex (phaseRow a)) (phaseIndex (phaseCol a))))).1.1
  rad a _ := radiusQ (ivc D.hb (gT (qModels B D)
    (ix (phaseIndex (phaseRow a)) (phaseIndex (phaseCol a))))).2

theorem centrePhaseBox_sound {B : BallD} {D : BoxD} {Q : RMat6}
    (hQ : ∀ i j, (gT (qModels B D) (ix i j)).Has 0 (Q i j : ℂ)) :
    (centrePhaseBox B D).Has (fun a _ => Q (phaseIndex (phaseRow a)) (phaseIndex (phaseCol a))) := by
  have hu : InBox D.hb (0 : Fin 4 → ℝ) := by
    intro j
    simp only [Pi.zero_apply, abs_zero]
    exact rn_nonneg _
  intro a _
  exact ivH_re (ivH_ivc hu (hQ (phaseIndex (phaseRow a)) (phaseIndex (phaseCol a))))

/-- The checker encloses the specified exact Gram projection, not the proposed
inverse. All dependence on the centre roots is discharged by the phase models. -/
theorem centre_gram_enclosure {B : BallD} {D : BoxD} {Q : RMat6}
    (hQ : ∀ i j, (gT (kModels B D) (ix i j)).Has 0 (phaseMat Q i j))
    (X : Matrix (Fin 36) (Fin 21) ℚ) (Y : Matrix (Fin 21) (Fin 21) ℚ)
    (q y e : ℚ)
    (h : inverseCheck
      (((jacobianBox B D).mul (MatrixBox.exact X)).transpose.mul
        ((jacobianBox B D).mul (MatrixBox.exact X))) Y q y e = true) :
    IsUnit (((centreJacobian (phaseMat Q) * realMatrix X)ᵀ *
      (centreJacobian (phaseMat Q) * realMatrix X)).det) ∧
    ((inverseBox Y e).mul ((jacobianBox B D).mul (MatrixBox.exact X)).transpose).Has
      ((((centreJacobian (phaseMat Q) * realMatrix X)ᵀ *
        (centreJacobian (phaseMat Q) * realMatrix X))⁻¹) *
        (centreJacobian (phaseMat Q) * realMatrix X)ᵀ) := by
  exact gramProjection_enclosure ((jacobianBox_sound hQ).mul (MatrixBox.has_exact X)) h

end NoFourMUBs.KernelAtlas.WholeBall
