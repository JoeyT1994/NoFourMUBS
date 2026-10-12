import NoFourMUBs.Step2.CriticalZero.NonzeroScalarEndpoint

/-! Convert the cornerwise cubic-root witnesses into the uniform value
needed by the existing counting theorem. Its finite certificate is reused. -/

set_option autoImplicit false
set_option maxHeartbeats 1500000
noncomputable section
namespace NoFourMUBs.Step2.Critical
open CriticalPhysical20261003

theorem kappa_positive_root_unique {k l : ℝ} (hk : 0<k) (hl : 0<l)
    (hck : NonzeroScalar.kappa k=0) (hcl : NonzeroScalar.kappa l=0) : k=l := by
  have he : (k-l)*(3*(k^2+k*l+l^2)+k+l+1)=0 := by
    dsimp only [NonzeroScalar.kappa] at hck hcl
    linear_combination hck-hcl
  exact sub_eq_zero.mp ((mul_eq_zero.mp he).resolve_right (ne_of_gt (by positivity)))

/-- The physical values may initially have different positive-root witnesses.
No irrationality argument or new finite computation is needed. -/
theorem strip_classified_values_impossible {H : OAI.MUB6.CMatrix}
    (hH : NormalizedCarrier H)
    (hv : ∀ c : Fin 20, sideP (stripCorner H c)=0 ∨ sideP (stripCorner H c)=5 ∨
      ∃ k : ℝ, 0<k ∧ NonzeroScalar.kappa k=0 ∧ sideP (stripCorner H c)=exceptionalP k) :
    False := by
  have lift (p : ℝ)
      (he : ∀ k : ℝ, 0<k → NonzeroScalar.kappa k=0 → exceptionalP k=p) :
      ∀ c : Fin 20, sideP (stripCorner H c)=0 ∨ sideP (stripCorner H c)=5 ∨
        sideP (stripCorner H c)=p := by
    intro c
    rcases hv c with h0 | h5 | ⟨k,hk,hc,hp⟩
    · exact Or.inl h0
    · exact Or.inr (Or.inl h5)
    · exact Or.inr (Or.inr (hp.trans (he k hk hc)))
  by_cases hex : ∃ k : ℝ, 0<k ∧ NonzeroScalar.kappa k=0
  · obtain ⟨k,hk,hc⟩ := hex
    exact CriticalCounts20261003.no_twenty_special_values hk
      (by
        dsimp only [CriticalCounts20261003.cubic]
        dsimp only [NonzeroScalar.kappa] at hc
        linear_combination hc)
      (fun c => sideP (stripCorner H c))
      (lift (exceptionalP k) (fun l hl hcl =>
        congrArg exceptionalP (kappa_positive_root_unique hl hk hcl hc)))
      (stripP_sum hH)
  · exact CriticalCounts20261003.no_twenty_values
      (p := (572220/100000 : ℝ)) (le_refl _) (by norm_num)
      (fun c => sideP (stripCorner H c))
      (lift _ (fun k hk hc => (hex ⟨k,hk,hc⟩).elim)) (stripP_sum hH)

end NoFourMUBs.Step2.Critical
