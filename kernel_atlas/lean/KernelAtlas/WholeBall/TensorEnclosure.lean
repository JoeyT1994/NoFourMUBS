import KernelAtlas.WholeBall.Interval
import KernelAtlas.WholeBall.MatrixFourier

/-! Exact interval evaluation of the symmetric predictor tensors. Polynomial
terms are added as signed intervals before a matrix norm is certified. -/

open Matrix

set_option backward.isDefEq.respectTransparency false

namespace NoFourMUBs.KernelAtlas.WholeBall

def cubicRealI (s : Fin 4 → RealInterval) (T : Fin 16 → RealInterval) (j : Fin 64) : RealInterval :=
  let a := digit4 j 0
  let b := digit4 j 1
  let c := digit4 j 2
  (((T (tensorIndex2 a b)).mul (s c)).add ((T (tensorIndex2 a c)).mul (s b))).add
    ((T (tensorIndex2 b c)).mul (s a)) |>.neg

def cubicImagI (s : Fin 4 → RealInterval) (j : Fin 64) : RealInterval :=
  (((s (digit4 j 0)).mul (s (digit4 j 1))).mul (s (digit4 j 2))).neg

def quarticRealI (s : Fin 4 → RealInterval) (T : Fin 16 → RealInterval) (j : Fin 256) : RealInterval :=
  let a := digit4 j 0
  let b := digit4 j 1
  let c := digit4 j 2
  let d := digit4 j 3
  ((((s a).mul (s b)).mul (s c)).mul (s d)).sub
    ((((T (tensorIndex2 a b)).mul (T (tensorIndex2 c d))).add
      ((T (tensorIndex2 a c)).mul (T (tensorIndex2 b d)))).add
      ((T (tensorIndex2 a d)).mul (T (tensorIndex2 b c))))

def quarticImagI (s : Fin 4 → RealInterval) (T : Fin 16 → RealInterval) (j : Fin 256) : RealInterval :=
  let a := digit4 j 0
  let b := digit4 j 1
  let c := digit4 j 2
  let d := digit4 j 3
  (((((((T (tensorIndex2 a b)).mul (s c)).mul (s d)).add
    (((T (tensorIndex2 a c)).mul (s b)).mul (s d))).add
    (((T (tensorIndex2 a d)).mul (s b)).mul (s c))).add
    (((T (tensorIndex2 b c)).mul (s a)).mul (s d))).add
    (((T (tensorIndex2 b d)).mul (s a)).mul (s c))).add
    (((T (tensorIndex2 c d)).mul (s a)).mul (s b)) |>.neg

lemma cubicRealI_sound {s : Fin 4 → RealInterval} {T : Fin 16 → RealInterval}
    {v : Fin 4 → ℝ} {A : Fin 16 → ℝ} (hs : ∀ j, (s j).Has (v j)) (hT : ∀ j, (T j).Has (A j))
    (j : Fin 64) : (cubicRealI s T j).Has (cubicReal v A j) :=
  (((hT _).mul (hs _)).add ((hT _).mul (hs _))).add ((hT _).mul (hs _)) |>.neg

lemma cubicImagI_sound {s : Fin 4 → RealInterval} {v : Fin 4 → ℝ}
    (hs : ∀ j, (s j).Has (v j)) (j : Fin 64) : (cubicImagI s j).Has (cubicImag v j) :=
  (((hs _).mul (hs _)).mul (hs _)).neg

lemma quarticRealI_sound {s : Fin 4 → RealInterval} {T : Fin 16 → RealInterval}
    {v : Fin 4 → ℝ} {A : Fin 16 → ℝ} (hs : ∀ j, (s j).Has (v j)) (hT : ∀ j, (T j).Has (A j))
    (j : Fin 256) : (quarticRealI s T j).Has (quarticReal v A j) :=
  ((((hs _).mul (hs _)).mul (hs _)).mul (hs _)).sub
    ((((hT _).mul (hT _)).add ((hT _).mul (hT _))).add ((hT _).mul (hT _)))

lemma quarticImagI_sound {s : Fin 4 → RealInterval} {T : Fin 16 → RealInterval}
    {v : Fin 4 → ℝ} {A : Fin 16 → ℝ} (hs : ∀ j, (s j).Has (v j)) (hT : ∀ j, (T j).Has (A j))
    (j : Fin 256) : (quarticImagI s T j).Has (quarticImag v A j) :=
  (((((((hT _).mul (hs _)).mul (hs _)).add (((hT _).mul (hs _)).mul (hs _))).add
    (((hT _).mul (hs _)).mul (hs _))).add (((hT _).mul (hs _)).mul (hs _))).add
    (((hT _).mul (hs _)).mul (hs _))).add (((hT _).mul (hs _)).mul (hs _)) |>.neg

def cubicBox {t m : ℕ} (K0 K1 : MatrixBox m t) (S : MatrixBox t 4) (T : MatrixBox t 16) :
    MatrixBox m 64 :=
  (K0.mul (intervalMatrix fun i j => cubicRealI (S.entry i) (T.entry i) j)).add
    (K1.mul (intervalMatrix fun i j => cubicImagI (S.entry i) j))

def quarticBox {t m : ℕ} (K0 K1 : MatrixBox m t) (S : MatrixBox t 4) (T : MatrixBox t 16) :
    MatrixBox m 256 :=
  (K0.mul (intervalMatrix fun i j => quarticRealI (S.entry i) (T.entry i) j)).add
    (K1.mul (intervalMatrix fun i j => quarticImagI (S.entry i) (T.entry i) j))

theorem cubicBox_sound {t m : ℕ} (C : MatrixFourier t m)
    {K0 K1 : MatrixBox m t} {S : MatrixBox t 4} {T : MatrixBox t 16}
    (hk0 : K0.Has C.K0) (hk1 : K1.Has C.K1) (hs : S.Has C.S) (ht : T.Has C.T) :
    (cubicBox K0 K1 S T).Has C.cubic := by
  have hh := (hk0.mul (intervalMatrix_sound (fun i j =>
    cubicRealI_sound (hs.entry i) (ht.entry i) j))).add
      (hk1.mul (intervalMatrix_sound (fun i j => cubicImagI_sound (hs.entry i) j)))
  intro a j
  simpa only [cubicBox, MatrixFourier.cubic, Matrix.mul_apply, Matrix.add_apply,
    Finset.sum_add_distrib] using hh a j

theorem quarticBox_sound {t m : ℕ} (C : MatrixFourier t m)
    {K0 K1 : MatrixBox m t} {S : MatrixBox t 4} {T : MatrixBox t 16}
    (hk0 : K0.Has C.K0) (hk1 : K1.Has C.K1) (hs : S.Has C.S) (ht : T.Has C.T) :
    (quarticBox K0 K1 S T).Has C.quartic := by
  have hh := (hk0.mul (intervalMatrix_sound (fun i j =>
    quarticRealI_sound (hs.entry i) (ht.entry i) j))).add
      (hk1.mul (intervalMatrix_sound (fun i j => quarticImagI_sound (hs.entry i) (ht.entry i) j)))
  intro a j
  simpa only [quarticBox, MatrixFourier.quartic, Matrix.mul_apply, Matrix.add_apply,
    Finset.sum_add_distrib] using hh a j

end NoFourMUBs.KernelAtlas.WholeBall
