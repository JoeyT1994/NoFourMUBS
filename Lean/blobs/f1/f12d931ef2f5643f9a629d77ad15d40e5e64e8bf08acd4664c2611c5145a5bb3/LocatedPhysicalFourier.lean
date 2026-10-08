import ActualFourierModel
import PhysicalPairedSines
import PhysicalSeedBridge

/-! The physical pairing and the four maximal-corner witnesses use the same
midpoints. Maximality is imposed only on the original matrix. -/
set_option autoImplicit false
namespace Seed0024Mathematical20261007
open Centiradian20261006 Seed0024.Orientation
open Mub6.GlobalBoxCover20261006 Seed0024Geometry20261007
noncomputable section

theorem physical_located_fourier {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hm : Maximal H)
    (hsmall : Complex.normSq (H 1 1-1)+Complex.normSq (H 1 2-1)≤5*localDelta^2)
    (hl1 : ‖H 1 1-1‖+‖H 1 2-1‖≤3*localDelta) :
    ∃ rows cols : Equiv.Perm (Fin 6), ∃ alpha beta : ℝ,
      Physical (reindexCarrier H rows cols) ∧
      normalizedSquaredFrobenius (reindexCarrier H rows cols)
        (repeatedFourier alpha beta)<(1/75:ℝ)^2 ∧
      |Real.sin (2*alpha-beta)|+|Real.sin (2*beta-alpha)|+
        |Real.sin (alpha+beta)|<(1:ℝ)/6 := by
  obtain ⟨p,kappa,mu,nu,e,hmu,hnu,he,hlifts,h0,h1,h2,h3,hsines⟩ :=
    physical_ordered_pairs_and_sines hH hd hm hsmall hl1
  have hmatch := (paired_data_fourier_match hH hd hsmall p kappa mu nu e
    hmu hnu he hlifts h0 h1 h2 h3).2
  rw [repeatedFourierModel_eq_arg hmu hnu] at hmatch
  exact ⟨tailRowPerm p,orientationColumns kappa,mu.arg,nu.arg,
    physical_reindexCarrier hH _ _,hmatch,hsines⟩

theorem retained_seed_located_fourier {H : Mat6} (hH : Physical H)
    (hd : Dephased H) (hm : Maximal H) {b : SeedBox}
    (hb : b∈Seed0024Geometry20261007.residual) {x : Fin 4 → ℝ}
    (hx : b.box.Contains x) (hphase : PhaseCoordinates (seedEntries H) x) :
    ∃ rows cols : Equiv.Perm (Fin 6), ∃ alpha beta : ℝ,
      Physical (reindexCarrier H rows cols) ∧
      normalizedSquaredFrobenius (reindexCarrier H rows cols)
        (repeatedFourier alpha beta)<(1/75:ℝ)^2 ∧
      |Real.sin (2*alpha-beta)|+|Real.sin (2*beta-alpha)|+
        |Real.sin (alpha+beta)|<(1:ℝ)/6 := by
  have hs := actual_seed_entry_small hb hx hphase
  exact physical_located_fourier hH hd hm hs.1 (by
    simpa only [localDelta,div_eq_mul_inv,mul_assoc] using hs.2)

end
end Seed0024Mathematical20261007
#print axioms Seed0024Mathematical20261007.physical_located_fourier
#print axioms Seed0024Mathematical20261007.retained_seed_located_fourier
