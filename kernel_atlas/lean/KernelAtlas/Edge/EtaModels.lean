import KernelAtlas.Edge.RationalModels
import KernelAtlas.Edge.Frame

/-! Exact rational frame coordinates applied to derivative models. -/

open Complex Matrix Hadamard6 NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

def sumI6T (f : I6 → Seed.CT) : Seed.CT :=
  sumT [f (.inl 0), f (.inl 1), f (.inl 2), f (.inr 0), f (.inr 1), f (.inr 2)]

lemma has_sumI6T {u : Fin 4 → ℝ} {T : I6 → Seed.CT} {f : I6 → ℂ}
    (ht : ∀ i, (T i).Has u (f i)) : (sumI6T T).Has u (∑ i, f i) := by
  have H := has_sumT_cons (ht (.inl 0)) (has_sumT_cons (ht (.inl 1))
    (has_sumT_cons (ht (.inl 2)) (has_sumT_cons (ht (.inr 0))
      (has_sumT_cons (ht (.inr 1)) (has_sumT_cons (ht (.inr 2)) (has_sumT_nil u))))))
  simpa only [sumI6T, Fintype.sum_sum_type, Fin.sum_univ_three, add_assoc, add_zero] using H

def etaWeight (F : QFrame) (q : FrameQ) (i : Fin 4) (a b : I6) : ℚ :=
  s4 fun k => q.Gi i k * F k a b

def etaT (h : List ℕ) (F : QFrame) (q : FrameQ) (T : I6 → I6 → Seed.CT) (i : Fin 4) : Seed.CT :=
  sumI6T fun a => sumI6T fun b => mul h (rationalT (etaWeight F q i a b)) (T a b)

lemma etaWeight_cast (F : QFrame) (q : FrameQ) (i : Fin 4) (a b : I6) :
    (etaWeight F q i a b : ℝ) = ∑ k, (q.Gi i k : ℝ)*F.toR k a b := by
  rw [etaWeight, s4_cast]
  simp only [Rat.cast_mul, QFrame.toR]

theorem has_etaT {h : List ℕ} {u : Fin 4 → ℝ} (hu : Seed.InBox h u)
    (F : QFrame) (q : FrameQ) {T : I6 → I6 → Seed.CT} {A : RMat6}
    (ht : ∀ a b, (T a b).Has u (A a b : ℂ)) (i : Fin 4) :
    (etaT h F q T i).Has u (frameEta F q A i : ℂ) := by
  have H := has_sumI6T (T := fun a => sumI6T fun b => mul h (rationalT (etaWeight F q i a b)) (T a b))
    (fun a => has_sumI6T (T := fun b => mul h (rationalT (etaWeight F q i a b)) (T a b))
      (fun b => has_mul hu (has_rationalT (etaWeight F q i a b) u) (ht a b)))
  have he : (∑ a, ∑ b, (etaWeight F q i a b : ℝ)*A a b) = frameEta F q A i := by
    simp only [etaWeight_cast, Finset.sum_mul, frameEta_apply]
    have hs (a : I6) : (∑ b : I6, ∑ k : Fin 4, (q.Gi i k : ℝ)*F.toR k a b*A a b) =
        ∑ k : Fin 4, ∑ b : I6, (q.Gi i k : ℝ)*F.toR k a b*A a b := Finset.sum_comm
    simp_rw [hs]
    rw [Finset.sum_comm]
    simp only [Finset.mul_sum, mul_assoc]
  simpa only [etaT, ← Complex.ofReal_mul, ← Complex.ofReal_sum, he] using H

lemma horizontal_inner_hor (A Z : RMat6) (hA : IsHorizontal A) :
    (∑ i, ∑ j, A i j*hor Z i j) = ∑ i, ∑ j, A i j*Z i j := by
  have hr : (∑ i, ∑ j, A i j*rowMean Z i) = 0 := by
    simp only [← Finset.sum_mul, hA.1, zero_mul, Finset.sum_const_zero]
  have hc : (∑ i, ∑ j, A i j*colMean Z j) = 0 := by
    rw [Finset.sum_comm]
    simp only [← Finset.sum_mul, hA.2, zero_mul, Finset.sum_const_zero]
  have ht : (∑ i, ∑ j, A i j*allMean Z) = 0 := by
    simp only [← Finset.sum_mul, hA.1, zero_mul, Finset.sum_const_zero]
  simp only [hor, Matrix.of_apply, mul_sub, mul_add, Finset.sum_sub_distrib,
    Finset.sum_add_distrib, hr, hc, ht, sub_zero, add_zero]

theorem frameEta_hor {F : QFrame} {q : FrameQ} (hok : frameOK F q = true) (A : RMat6) :
    frameEta F q (hor A) = frameEta F q A := by
  ext i
  simp only [frameEta_apply]
  apply Finset.sum_congr rfl
  intro k _
  rw [horizontal_inner_hor (F.toR k) A (frame_hor hok k)]

end NoFourMUBs.KernelAtlas.Edge
