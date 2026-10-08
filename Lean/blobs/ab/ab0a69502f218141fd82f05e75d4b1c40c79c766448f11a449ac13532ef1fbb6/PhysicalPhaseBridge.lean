import PhaseGateBridge
import FourierGoodBridge

namespace Mub6.PhaseCube
open Complex
open Hadamard6Extensions.FourierSide
open Hadamard6Extensions.FourPhaseFourierBridge
local notation "conj" => starRingEnd ℂ
noncomputable section

/- This binding uses the existing necessary physical Fourier theorem.
   It assumes no positive-sheet or lower-block classification theorem. -/
theorem actual_good_side_phase_cover (x y : Fin 3 → ℂ) (omega : ℂ)
    (hw : omega^2+omega+1=0) (hx : IsPhase3 x) (hy : IsPhase3 y)
    (hg : (54/5 : ℝ) ≤ normSq (actualSide x y).det) :
    ∃ delta h T : ℂ, ∃ rho : ℝ,
      SideOrientationData (sum3 x) (sum3 y) (prod3 x) (prod3 y)
        (cross3 x y) (permanentSide x y) delta h T ∧
      (81/10 : ℝ) ≤ normSq h ∧ (1/1000 : ℝ) ≤ normSq T ∧
      1/10 ≤ rho ∧ rho ≤ 1 ∧ normSq T=rho^3 ∧
      normSq (T/(rho : ℂ))=rho ∧ normSq (T/conj T)=1 ∧
      ∀ c : ℂ, normSq c=1 →
        ∃ w tau : ℂ, ∃ p : Equiv.Perm (Fin 3),
          w^3=T/conj T ∧ normSq w=1 ∧
          4*normSq (w-c) ≤ normSq (T/conj T-c^3) ∧
          tau=(T/(rho : ℂ))*conj w ∧ tau^3=T ∧
          reconstructedSide (sum3 x) (sum3 y) (prod3 x) (prod3 y)
            (cross3 x y) (permanentSide x y) delta tau omega =
            fun i j => actualSide x y i (p j) := by
  obtain ⟨delta,h,T,hdata,hh,hT,hrec⟩ :=
    actual_good_side_explicit_reconstruction x y omega hw hx hy hg
  obtain ⟨tau0,htau0⟩ := hdata.root_exists
  obtain ⟨_hd,hlo,hhi,_hinv,_hp⟩ := hrec tau0 htau0
  let rho := normSq tau0
  have hr : rho≠0 := by dsimp [rho]; linarith
  have hn : normSq T=rho^3 := by rw [← htau0,map_pow]
  have hTn : T≠0 := by intro he; norm_num [he] at hT
  have hphase := phase_target_direct_unit T hTn
  refine ⟨delta,h,T,rho,hdata,hh,hT,hlo,hhi,hn,sigma_norm T rho hr hn,hphase,?_⟩
  intro c hc
  obtain ⟨w,hcube,hunit,hnear⟩ := unit_cube_uniform_linear (T/conj T) c hphase hc
  have ht := phase_root_to_old_cube T w rho hr hn hunit hcube
  obtain ⟨_data,_lo,_hi,_inv,p,hp⟩ := hrec _ ht.1
  exact ⟨w,_,p,hcube,hunit,hnear,rfl,ht.1,hp⟩

/- A certified phase recipe can be substituted in every actual good side.
   The returned rho is physical; a numerical producer must still enclose it. -/
theorem actual_good_side_certified_phase (x y : Fin 3 → ℂ) (omega : ℂ)
    (hw : omega^2+omega+1=0) (hx : IsPhase3 x) (hy : IsPhase3 y)
    (hg : (54/5 : ℝ) ≤ normSq (actualSide x y).det) :
    ∃ delta h T : ℂ, ∃ rho : ℝ,
      SideOrientationData (sum3 x) (sum3 y) (prod3 x) (prod3 y)
        (cross3 x y) (permanentSide x y) delta h T ∧
      1/10 ≤ rho ∧ rho ≤ 1 ∧ normSq T=rho^3 ∧
      ∀ (r : RootRecipe) (b : TargetBox),
        r.Valid b → b.Contains (T/conj T) →
        ∃ w tau : ℂ, ∃ p : Equiv.Perm (Fin 3),
          w^3=T/conj T ∧ normSq w=1 ∧
          normSq (w-r.center) ≤ (r.radius : ℝ)^2 ∧
          tau=(T/(rho : ℂ))*conj w ∧ tau^3=T ∧
          normSq tau=rho ∧
          reconstructedSide (sum3 x) (sum3 y) (prod3 x) (prod3 y)
            (cross3 x y) (permanentSide x y) delta tau omega =
            fun i j => actualSide x y i (p j) := by
  obtain ⟨delta,h,T,hdata,_hh,_hT,hrec⟩ :=
    actual_good_side_explicit_reconstruction x y omega hw hx hy hg
  obtain ⟨tau0,htau0⟩ := hdata.root_exists
  obtain ⟨_hd,hlo,hhi,_hinv,_hp⟩ := hrec tau0 htau0
  let rho := normSq tau0
  have hr : rho≠0 := by dsimp [rho]; linarith
  have hn : normSq T=rho^3 := by rw [← htau0,map_pow]
  refine ⟨delta,h,T,rho,hdata,hlo,hhi,hn,?_⟩
  intro r b hv hm
  obtain ⟨w,tau,hwc,hwn,hnear,htdef,htcube,htnorm⟩ :=
    certified_phase_to_old_cube r b hv T rho hr hn hm
  obtain ⟨_data,_lo,_hi,_inv,p,hp⟩ := hrec tau htcube
  exact ⟨w,tau,p,hwc,hwn,hnear,htdef,htcube,htnorm,hp⟩

#print axioms actual_good_side_phase_cover
#print axioms actual_good_side_certified_phase
end
end Mub6.PhaseCube
