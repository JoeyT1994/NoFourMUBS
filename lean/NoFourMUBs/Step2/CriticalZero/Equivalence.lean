import NoFourMUBs.Step2.CriticalZero.PhysicalModel

/-! Transport the current critical predicate using the checked phase-invariant
signature. This is the model interface for the archived physical rechart. -/

open Matrix Hadamard6
noncomputable section
namespace NoFourMUBs.Step2.Critical

theorem allCritical_of_equivalent {H K : Had6} (hH : AllCritical H)
    (he : Equivalent H.1 K.1) : AllCritical K := by
  rcases he with ⟨σ, τ, a, b, ha, hb, he⟩
  intro f
  let r : Fin 3 → I6 := fun i => σ (f.1 (.inl i))
  let c : Fin 3 → I6 := fun j => τ (f.2 (.inr j))
  have hr : Function.Injective r :=
    σ.injective.comp (f.1.injective.comp Sum.inl_injective)
  have hc : Function.Injective c :=
    τ.injective.comp (f.2.injective.comp Sum.inr_injective)
  have hs : frameRight K f = sideSignature (H.1.submatrix r c) := by
    rw [frameRight_raw]
    calc
      _ = sideSignature (Matrix.of fun i j =>
          a (f.1 (.inl i)) * (H.1.submatrix r c) i j * b (f.2 (.inr j))) := by
        congr 1
        ext i j
        exact he _ _
      _ = _ := sideSignature_scale _ _ _
        (fun i => by rw [Complex.mul_conj, ha, Complex.ofReal_one])
        (fun j => by rw [Complex.mul_conj, hb, Complex.ofReal_one])
  have hz := allCritical_submatrix_signature_im hH r c hr hc
  have h := (frameScalarIdentities K f).2.2.1
  simpa only [hs, hz, zero_pow (by decide : 2 ≠ 0), mul_zero] using h.symm

theorem allCriticalCarrier_of_equivalent {H K : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) (hK : NormalizedCarrier K)
    (he : OAI.MUB6.Equivalent H K) : AllCriticalCarrier K := by
  rcases hH.2 with ⟨A, hA, hcritical⟩
  rw [← hA] at he
  have he' := FourierBridge.equivalent_fromOAI he
  let B : Had6 := ⟨FourierBridge.fromOAI K, isHadamard_of_equivalent he' A.2⟩
  exact ⟨hK, B, FourierBridge.toOAI_fromOAI K,
    allCritical_of_equivalent hcritical he'⟩

#print axioms allCritical_of_equivalent
#print axioms allCriticalCarrier_of_equivalent
end NoFourMUBs.Step2.Critical
