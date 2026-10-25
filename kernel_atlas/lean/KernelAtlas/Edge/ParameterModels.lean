import KernelAtlas.Edge.ParameterDerivative

/-! Taylor models for the 7 by 4 explicit parameter Jacobian. -/

open Complex Matrix Hadamard6 NoFourMUBs.Side NoFourMUBs.Step2 NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

def scaleMR (h : List ℕ) (B : EBallD) (k j : ℕ) (T : CT) : CT :=
  smul h (rz (gi B.Mth (4*k+j))) T

def parameterGramT (h : List ℕ) (B : EBallD) (v : Bool) (e : List CT) (k j : ℕ) : CT :=
  let b := if v then 2 else 1
  let c := if v then 1 else 2
  if k = 0 then add (scaleMR h B 0 j (mulI (gT e 0))) (scaleMR h B b j (mulI (gT e b)))
  else if k = 1 then scaleMR h B c j (mulI (gT e c))
  else
    let z := mulI (mul h (gT e c) (conj (gT e 0)))
    sub (sub (scaleMR h B c j z) (scaleMR h B 0 j z))
      (scaleMR h B b j (mulI (mul h (gT e 3) (conj (gT e b)))))

def parameterJT (h : List ℕ) (B : EBallD) (v : Bool) (e : List CT) (i j : ℕ) : CT :=
  if i < 3 then re (parameterGramT h B v e i j)
  else if i < 6 then im (parameterGramT h B v e (i-3) j)
  else scaleMR h B 3 j (const (halfZ v))

lemma has_scaleMR {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) (B : EBallD)
    {T : CT} {z : ℂ} (ht : T.Has u z) (k j : Fin 4) :
    (scaleMR h B k j T).Has u ((MR B k j : ℂ)*z) := by
  simpa only [scaleMR, MR, cz_rz] using has_smul hu (rz (gi B.Mth (4*k+j))) ht

lemma has_parameterGramT {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) (B : EBallD)
    {e : List CT} {ρ : Fin 4 → ℂ} (he : ∀ k : Fin 4, (gT e k).Has u (ρ k))
    (v : Bool) (k : Fin 3) (j : Fin 4) :
    (parameterGramT h B v e k j).Has u
      (gramParameter v ρ (fun k => MR B k.castSucc j) k) := by
  have hs (k : Fin 4) := has_scaleMR hu B (has_mulI (he k)) k j
  have hz (c b : Fin 4) := has_sub
    (has_sub (has_scaleMR hu B (has_mulI (has_mul hu (he c) (has_conj (he 0)))) c j)
      (has_scaleMR hu B (has_mulI (has_mul hu (he c) (has_conj (he 0)))) 0 j))
    (has_scaleMR hu B (has_mulI (has_mul hu (he 3) (has_conj (he b)))) b j)
  cases v <;> fin_cases k
  · convert has_add (hs 0) (hs 1) using 1 <;> simp [parameterGramT, gramParameter] <;> ring
  · convert hs 2 using 1 <;> simp [parameterGramT, gramParameter] <;> ring
  · convert hz 2 1 using 1 <;> simp [parameterGramT, gramParameter] <;> ring
  · convert has_add (hs 0) (hs 2) using 1 <;> simp [parameterGramT, gramParameter] <;> ring
  · convert hs 1 using 1 <;> simp [parameterGramT, gramParameter] <;> ring
  · convert hz 1 2 using 1 <;> simp [parameterGramT, gramParameter] <;> ring

theorem has_parameterJT {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u) (B : EBallD)
    {e : List CT} {ρ : Fin 4 → ℂ} (he : ∀ k : Fin 4, (gT e k).Has u (ρ k))
    (v : Bool) (i : Fin 7) (j : Fin 4) :
    (parameterJT h B v e i j).Has u (parameterJ B v ρ i j : ℂ) := by
  by_cases h3 : i.1 < 3
  · simpa only [parameterJT, parameterJ, parameterAction, if_pos h3, dif_pos h3] using
      has_re (has_parameterGramT hu B he v ⟨i.1, h3⟩ j)
  · by_cases h6 : i.1 < 6
    · simpa only [parameterJT, parameterJ, parameterAction, if_neg h3, dif_neg h3, if_pos h6, dif_pos h6] using
        has_im (has_parameterGramT hu B he v ⟨i.1-3, by omega⟩ j)
    · have H := has_scaleMR hu B (has_const (halfZ v) u) 3 j
      have hz : cz (halfZ v) = ((lsgn v / 2 : ℝ) : ℂ) := by
        cases v <;> norm_num [halfZ, lsgn, cz, pp]
      rw [hz] at H
      convert H using 1 <;> simp [parameterJT, parameterJ, parameterAction, h3, h6] <;> ring

end NoFourMUBs.KernelAtlas.Edge
