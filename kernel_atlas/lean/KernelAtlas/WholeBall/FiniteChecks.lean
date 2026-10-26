import KernelAtlas.WholeBall.TensorEnclosure
import KernelAtlas.WholeBall.NormalTensors
import KernelAtlas.WholeBall.MatrixRefinement
import KernelAtlas.WholeBall.Scalar

/-! A finite rational checker for every centre bound in Z §§2–3. Its inputs
are enclosures of the exact Fourier arrays. The low jets are exact algebraic
identities, not numerical smallness tests. -/

open Matrix
open NoFourMUBs.SeedAtlas.Method.WholeBall
set_option backward.isDefEq.respectTransparency false

namespace NoFourMUBs.KernelAtlas.WholeBall

structure FourierBox (t m : ℕ) where
  K0 : MatrixBox m t
  K1 : MatrixBox m t
  S : MatrixBox t 4
  T : MatrixBox t 16
  D : MatrixBox t m

structure FourierBox.Has {t m : ℕ} (F : FourierBox t m) (C : MatrixFourier t m) : Prop where
  K0 : F.K0.Has C.K0
  K1 : F.K1.Has C.K1
  S : F.S.Has C.S
  T : F.T.Has C.T
  D : F.D.Has C.D

def FourierBox.coeff {t m : ℕ} (F : FourierBox t m) (i : Fin t) : MatrixBox m 2 :=
  intervalMatrix (fun a b => if b = 0 then F.K0.entry a i else F.K1.entry a i)

def FourierBox.quadratic {t m : ℕ} (F : FourierBox t m) (i : Fin t) : MatrixBox 4 4 :=
  intervalMatrix (fun a b => F.T.entry i (tensorIndex2 a b))

lemma FourierBox.Has.coeff {t m : ℕ} {F : FourierBox t m} {C : MatrixFourier t m}
    (h : F.Has C) (i : Fin t) : (F.coeff i).Has (fun a => ![C.K0 a i, C.K1 a i]) := by
  apply intervalMatrix_sound
  intro a b
  fin_cases b
  · exact h.K0.entry a i
  · exact h.K1.entry a i

lemma FourierBox.Has.quadratic {t m : ℕ} {F : FourierBox t m} {C : MatrixFourier t m}
    (h : F.Has C) (i : Fin t) :
    (F.quadratic i).Has (fun a b => C.T i (tensorIndex2 a b)) :=
  intervalMatrix_sound (fun a b => h.T.entry i (tensorIndex2 a b))

structure FiniteData (t m : ℕ) where
  fourier : FourierBox t m
  cubic : MatrixBox m 64
  quartic : MatrixBox m 256
  mixed : MatrixBox m (4 * m)
  normalSecond : MatrixBox m (16 * m)
  normalTensor : MatrixBox m (m * m)
  cn : Fin t → ℚ
  sn : Fin t → ℚ
  tn : Fin t → ℚ
  dn : Fin t → ℚ

def FiniteData.tensorCheck {t m : ℕ} (F : FiniteData t m) : Bool :=
  let D := F.fourier
  (cubicBox D.K0 D.K1 D.S D.T).enclosesCheck F.cubic &&
  (quarticBox D.K0 D.K1 D.S D.T).enclosesCheck F.quartic &&
  (D.K0.mul (D.S.rowTensor D.D)).neg.enclosesCheck F.mixed &&
  ((D.K0.mul (D.T.rowTensor D.D)).add
    (D.K1.mul ((D.S.rowTensor D.S).rowTensor D.D))).neg.enclosesCheck F.normalSecond &&
  (D.K0.mul (D.D.rowTensor D.D)).neg.enclosesCheck F.normalTensor

def FiniteData.normCheck {t m : ℕ} (F : FiniteData t m) (B : Bounds ℚ) : Bool :=
  ((List.finRange t).all fun i =>
    (F.fourier.coeff i).normCheck (F.cn i) &&
    (F.fourier.S.reindex (fun _ : Fin 1 => i) id).normCheck (F.sn i) &&
    (F.fourier.quadratic i).normCheck (F.tn i) &&
    (F.fourier.D.reindex (fun _ : Fin 1 => i) id).normCheck (F.dn i)) &&
  F.cubic.normCheck B.t3 && F.quartic.normCheck B.t4 && F.mixed.normCheck B.c &&
  F.normalSecond.normCheck B.a2 && F.normalTensor.normCheck B.d

def FiniteData.sumCheck {t m : ℕ} (F : FiniteData t m) (B : Bounds ℚ) : Bool :=
  decide (
    (∑ i, F.cn i * ((F.sn i + B.r * F.tn i) ^ 5 +
      10 * F.tn i * (F.sn i + B.r * F.tn i) ^ 3 +
      15 * F.tn i ^ 2 * (F.sn i + B.r * F.tn i))) ≤ B.L5 ∧
    (∑ i, (F.cn i * F.dn i) * ((F.sn i + B.r * F.tn i) ^ 3 +
      3 * F.tn i * (F.sn i + B.r * F.tn i))) ≤ B.L3a ∧
    (∑ i, F.cn i * F.dn i ^ 2 * (F.sn i * B.r + F.tn i * B.r ^ 2 / 2)) ≤
      B.L3 * B.x ^ 2 * B.base ∧
    (∑ i, F.cn i * F.dn i ^ 3) ≤ B.L3 * B.x ^ 3)

theorem FiniteData.sound {t m : ℕ} (F : FiniteData t m) (B : Bounds ℚ)
    (C : MatrixFourier t m) (hF : F.fourier.Has C)
    (ht : F.tensorCheck = true) (hn : F.normCheck B = true) (hs : F.sumCheck B = true)
    (hzero : ∀ a, ∑ i, C.K0 a i = 0)
    (hone : C.K1 * C.S = 0) (htwo : C.K1 * C.T - C.K0 * rowTensor C.S C.S = 0)
    (hnormal : C.K1 * C.D = 1) :
    FiniteCentreBounds C.model (realBounds B) (fun i => F.cn i) (fun i => F.sn i)
      (fun i => F.tn i) (fun i => F.dn i) := by
  simp only [tensorCheck, Bool.and_eq_true] at ht
  simp only [normCheck, Bool.and_eq_true, List.all_eq_true, List.mem_finRange, forall_const] at hn
  have h3 := (cubicBox_sound C hF.K0 hF.K1 hF.S hF.T).enlarge ht.1.1.1.1
  have h4 := (quarticBox_sound C hF.K0 hF.K1 hF.S hF.T).enlarge ht.1.1.1.2
  have hmix := (hF.K0.mul (hF.S.rowTensor hF.D)).neg.enlarge ht.1.1.2
  have hsec := ((hF.K0.mul (hF.T.rowTensor hF.D)).add
    (hF.K1.mul ((hF.S.rowTensor hF.S).rowTensor hF.D))).neg.enlarge ht.1.2
  have hnorm := (hF.K0.mul (hF.D.rowTensor hF.D)).neg.enlarge ht.2
  have hsum := of_decide_eq_true hs
  change _ ∧ _ ∧ _ ∧ _ at hsum
  refine {
    coeff := ?_, linear := ?_, quadratic := ?_, normal := ?_, zero := ?_, one := ?_, two := ?_,
    three := C.cubic_bound (MatrixBox.normCheck_sound h3 hn.1.1.1.1.2),
    four := C.quartic_bound (MatrixBox.normCheck_sound h4 hn.1.1.1.2),
    five := ?_, normal_zero := ?_,
    normal_one := C.normal_first_bound (MatrixBox.normCheck_sound hmix hn.1.1.2),
    normal_two := C.normal_second_bound (MatrixBox.normCheck_sound hsec hn.1.2),
    normal_three := ?_,
    tube_centre := C.tube_centre_bound (MatrixBox.normCheck_sound hnorm hn.2),
    tube_variation := ?_, tube_two := ?_ }
  · intro i
    exact (norm_coefficientMap _).trans
      (MatrixBox.normCheck_sound (hF.coeff i) (hn.1.1.1.1.1 i).1.1.1)
  · intro i
    have hh := MatrixBox.normCheck_sound (hF.S.reindex (fun _ : Fin 1 => i) id)
      (hn.1.1.1.1.1 i).1.1.2
    exact (norm_linearForm_row (C.S.submatrix (fun _ : Fin 1 => i) id) 0).trans hh
  · intro i
    exact (norm_bilinearForm _).trans
      (MatrixBox.normCheck_sound (hF.quadratic i) (hn.1.1.1.1.1 i).1.2)
  · intro i
    have hh := MatrixBox.normCheck_sound (hF.D.reindex (fun _ : Fin 1 => i) id)
      (hn.1.1.1.1.1 i).2
    exact (norm_linearForm_row (C.D.submatrix (fun _ : Fin 1 => i) id) 0).trans hh
  · ext a
    rw [C.zero_apply, hzero]
    rfl
  · intro w
    rw [C.first_apply, hone]
    ext a
    simp [eucMap, Matrix.toEuclideanLin]
  · intro w
    rw [C.second_apply, htwo]
    ext a
    simp [eucMap, Matrix.toEuclideanLin]
  · dsimp [realBounds]
    exact_mod_cast hsum.1
  · rw [C.normal_zero_eq, hnormal]
    ext v a
    simp [eucMap, Matrix.toEuclideanLin]
  · dsimp [realBounds]
    exact_mod_cast hsum.2.1
  · dsimp [realBounds, Bounds.base] at *
    exact_mod_cast hsum.2.2.1
  · dsimp [realBounds]
    exact_mod_cast hsum.2.2.2

end NoFourMUBs.KernelAtlas.WholeBall
