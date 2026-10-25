import KernelAtlas.Edge.ParameterDerivative

/-! Taylor models of the augmented root Jacobian. -/

open Complex Matrix Hadamard6 NoFourMUBs.Side NoFourMUBs.Step2 NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

def sideJcT (h : List ℕ) (g : List CT) (k m : ℕ) : CT :=
  if k = 0 then (if m < 3 then mulI (gT g m) else const (0, 0))
  else if k = 1 then (if m < 3 then const (0, 0) else mulI (gT g m))
  else if m < 3 then neg (mulI (mul h (gT g (m+3)) (conj (gT g m))))
  else mulI (mul h (gT g m) (conj (gT g (m-3))))

def dG4T (h : List ℕ) (v : Bool) (e : List CT) (k : ℕ) : CT :=
  if k = 0 then const (0, 0)
  else if k = 1 then mulI (gT e 3)
  else mulI (mul h (gT e 3) (conj (gT e (if v then 2 else 1))))

def edgeJcT (h : List ℕ) (v : Bool) (e g : List CT) (k m : ℕ) : CT :=
  if m = 0 then dG4T h v e k else sideJcT h g k (m-1)

def edgeJT (h : List ℕ) (v : Bool) (e g : List CT) (i m : ℕ) : CT :=
  if i < 3 then re (edgeJcT h v e g i m)
  else if i < 6 then im (edgeJcT h v e g (i-3) m)
  else if m = 0 then const (0, 0) else im (gT (dpsiT h g) (m-1))

lemma has_sideJcT {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {g : List CT} {φ : Fin 6 → ℝ}
    (hx : ∀ j : Fin 3, (gT g j).Has u (sx φ j))
    (hy : ∀ j : Fin 3, (gT g (j+3)).Has u (sy φ j)) (k : Fin 3) (m : Fin 6) :
    (sideJcT h g k m).Has u (sideJc φ k m) := by
  fin_cases k
  · by_cases hm : m.1 < 3
    · simpa [sideJcT, sideJc, if_pos, hm, Fin.val_zero] using has_mulI (hx ⟨m.1, hm⟩)
    · simp [sideJcT, Fin.val_zero, if_pos, hm, sideJc]
      exact has_zero u
  · by_cases hm : m.1 < 3
    · simp [sideJcT, Fin.val_one, if_neg (by decide : ¬1=0), if_pos, hm, sideJc]
      exact has_zero u
    · have H := has_mulI (hy ⟨m.1-3, by omega⟩)
      simpa [sideJcT, sideJc, Fin.val_one, if_neg (by decide : ¬1=0), if_pos,
        hm, Nat.sub_add_cancel (by omega : 3 ≤ m.1)] using H
  · by_cases hm : m.1 < 3
    · have H := has_neg (has_mulI (has_mul hu (hy ⟨m.1, hm⟩) (has_conj (hx ⟨m.1, hm⟩))))
      simpa [sideJcT, sideJc, Fin.val_two, if_neg (by decide : ¬2=0), if_neg (by decide : ¬2=1),
        hm, mul_assoc] using H
    · have H := has_mulI (has_mul hu (hy ⟨m.1-3, by omega⟩) (has_conj (hx ⟨m.1-3, by omega⟩)))
      simpa [sideJcT, sideJc, Fin.val_two, if_neg (by decide : ¬2=0), if_neg (by decide : ¬2=1),
        hm, Nat.sub_add_cancel (by omega : 3 ≤ m.1), mul_assoc] using H

lemma has_dG4T {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {e : List CT} {ρ : Fin 4 → ℂ}
    (he : ∀ k : Fin 4, (gT e k).Has u (ρ k)) (v : Bool) (k : Fin 3) :
    (dG4T h v e k).Has u (dG4 v ρ k) := by
  fin_cases k
  · exact has_zero u
  · exact has_mulI (he 3)
  · cases v
    · simpa [dG4T, dG4, Bool.false_eq_true, ↓reduceIte, mul_assoc] using
        has_mulI (has_mul hu (he 3) (has_conj (he 1)))
    · simpa [dG4T, dG4, ↓reduceIte, mul_assoc] using
        has_mulI (has_mul hu (he 3) (has_conj (he 2)))

lemma has_edgeJcT {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {e g : List CT}
    {a : Fin 3 → ℝ} {ξ : Fin 7 → ℝ} (v : Bool)
    (he : ∀ k : Fin 4, (gT e k).Has u (rho4 a (ξ 0) k))
    (hx : ∀ j : Fin 3, (gT g j).Has u (sx (phiOf ξ) j))
    (hy : ∀ j : Fin 3, (gT g (j+3)).Has u (sy (phiOf ξ) j)) (k : Fin 3) (m : Fin 7) :
    (edgeJcT h v e g k m).Has u (edgeJc v a ξ k m) := by
  by_cases hm : m = 0
  · simpa [edgeJcT, edgeJc, hm] using has_dG4T hu he v k
  · simpa [edgeJcT, edgeJc, hm] using
      has_sideJcT hu hx hy k ⟨m.1-1, by omega⟩

theorem has_edgeJT {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) {e g : List CT}
    {a : Fin 3 → ℝ} {ξ : Fin 7 → ℝ} (v : Bool)
    (he : ∀ k : Fin 4, (gT e k).Has u (rho4 a (ξ 0) k))
    (hx : ∀ j : Fin 3, (gT g j).Has u (sx (phiOf ξ) j))
    (hy : ∀ j : Fin 3, (gT g (j+3)).Has u (sy (phiOf ξ) j)) (i m : Fin 7) :
    (edgeJT h v e g i m).Has u (edgeJ v a ξ i m : ℂ) := by
  by_cases h3 : i.1 < 3
  · simpa [edgeJT, edgeJ, if_pos h3, dif_pos h3] using
      has_re (has_edgeJcT hu v he hx hy ⟨i.1, h3⟩ m)
  · by_cases h6 : i.1 < 6
    · simpa [edgeJT, edgeJ, if_neg h3, dif_neg h3, if_pos h6, dif_pos h6] using
        has_im (has_edgeJcT hu v he hx hy ⟨i.1-3, by omega⟩ m)
    · by_cases hm : m = 0
      · simp [edgeJT, edgeJ, if_neg h3, dif_neg h3, if_neg h6, dif_neg h6, hm,
          Complex.ofReal_zero]
        exact has_zero u
      · simpa [edgeJT, edgeJ, if_neg h3, dif_neg h3, if_neg h6, dif_neg h6, hm] using
          has_im (has_dpsiT hu hx hy ⟨m.1-1, by omega⟩)

end NoFourMUBs.KernelAtlas.Edge
