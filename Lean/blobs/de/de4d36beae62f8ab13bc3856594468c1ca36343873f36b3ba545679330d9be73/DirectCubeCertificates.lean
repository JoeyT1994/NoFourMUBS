import DirectCubeLinear
import LocalPhysicalSideEnclosure

namespace Mub6.PhaseCube
open Complex Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals Mub6.Classification.RadicalIntervals
open Hadamard6Extensions.FourierSide Hadamard6Extensions.FourPhaseFourierBridge
noncomputable section

structure DirectRecipe where
  cx : ℚ
  cy : ℚ
  coarse : ℚ
  M : ℚ
  k : ℚ
  radius : ℚ

def DirectRecipe.power (r : DirectRecipe) : ℚ := r.cx^2+r.cy^2

def DirectRecipe.Valid (r : DirectRecipe) (b : RationalRectangle) : Prop :=
  0 < r.power ∧ 0 ≤ r.coarse ∧ 0 ≤ r.M ∧ 0 < r.k ∧ 0 ≤ r.radius ∧
  r.power ≤ r.M^2 ∧
  r.k ≤ 3*r.power-3*r.M*r.coarse-r.coarse^2 ∧
  4*(rootResidual b r.cx r.cy 3).hi ≤ 3*r.power^2*r.coarse^2 ∧
  (rootResidual b r.cx r.cy 3).hi ≤ r.k^2*r.radius^2

theorem direct_center_power (r : DirectRecipe) :
    normSq (rationalCenter r.cx r.cy)=(r.power : ℝ) := by
  simp [rationalCenter,DirectRecipe.power,normSq,pow_two]

theorem directRecipe_sound (r : DirectRecipe) (b : RationalRectangle)
    (hr : r.Valid b) (T : ℂ) (hT : MemRectangle b T) :
    ∃ tau : ℂ, tau^3=T ∧ MemRectangle (centerBox r.cx r.cy r.radius) tau := by
  rcases hr with ⟨hp,hco,hM,hk,he,hpow,hsep,hboot,hfinal⟩
  have hc : rationalCenter r.cx r.cy ≠ 0 := by
    apply normSq_pos.mp
    rw [direct_center_power]
    exact_mod_cast hp
  have hco' : (0 : ℝ) ≤ r.coarse := by exact_mod_cast hco
  have hM' : (0 : ℝ) ≤ r.M := by exact_mod_cast hM
  have hk' : (0 : ℝ) < r.k := by exact_mod_cast hk
  have hpow' : normSq (rationalCenter r.cx r.cy) ≤ (r.M : ℝ)^2 := by
    rw [direct_center_power]
    exact_mod_cast hpow
  have hsep' : (r.k : ℝ) ≤ 3*normSq (rationalCenter r.cx r.cy)-
      3*(r.M : ℝ)*r.coarse-(r.coarse : ℝ)^2 := by
    rw [direct_center_power]
    exact_mod_cast hsep
  have hb := rootResidual_sound hT r.cx r.cy 3
  have hboot' : 4*((rootResidual b r.cx r.cy 3).hi : ℝ) ≤
      3*(normSq (rationalCenter r.cx r.cy))^2*(r.coarse : ℝ)^2 := by
    rw [direct_center_power]
    exact_mod_cast hboot
  obtain ⟨tau,htau,_hcoarse,href⟩ := direct_cube_refined_linear T
    (rationalCenter r.cx r.cy) r.coarse r.M r.k hc hco' hM' hk'
    (by linarith) hpow' hsep'
  have hfinal' : ((rootResidual b r.cx r.cy 3).hi : ℝ) ≤ (r.k : ℝ)^2*(r.radius : ℝ)^2 := by
    exact_mod_cast hfinal
  have hdist : normSq (tau-rationalCenter r.cx r.cy) ≤ (r.radius : ℝ)^2 := by
    apply href.trans
    apply (div_le_iff₀ (sq_pos_of_pos hk')).mpr
    nlinarith [hb]
  exact ⟨tau,htau,mem_centerBox he hdist⟩

structure DirectSideCertificate (B : SideMomentBoxes) (a b radius : ℚ)
    (recipe : Bool → DirectRecipe) : Prop where
  square : SquareCertificate (boxDiscriminant B.s B.t B.u B.v B.W) a b radius
  cube : ∀ neg, (recipe neg).Valid (localRadicandBox B neg a b radius)

def directSideBox (B : SideMomentBoxes) (neg : Bool) (a b radius : ℚ)
    (recipe : Bool → DirectRecipe) : Rect3 :=
  localSideBox B neg a b radius (fun n => (recipe n).cx)
    (fun n => (recipe n).cy) (fun n => (recipe n).radius)

theorem physical_side_direct_enclosure (x y : Fin 3 → ℂ) (w : ℂ)
    (hw : w^2+w+1=0) (hx : IsPhase3 x) (hy : IsPhase3 y)
    (hg : (54/5 : ℝ) ≤ normSq (actualSide x y).det)
    (B : SideMomentBoxes) (hB : CoversSideMoments B x y w)
    (a b radius : ℚ) (recipe : Bool → DirectRecipe)
    (hc : DirectSideCertificate B a b radius recipe) :
    ∃ neg : Bool, ∃ p : Equiv.Perm (Fin 3),
      MemMatrix (directSideBox B neg a b radius recipe)
        (fun i j => actualSide x y i (p j)) := by
  obtain ⟨delta,⟨tau0,hdata⟩,hpivot,_hT,hrec⟩ :=
    actual_good_side_scalar_cover x y w hw hx hy hg
  have hguard := actual_good_delta_guard x y w delta hw hx hy hg hdata.delta_square
  have hdisc := boxDiscriminant_sound hB.s_mem hB.t_mem hB.u_mem hB.v_mem hB.W_mem
  obtain ⟨neg,hd⟩ : ∃ neg : Bool, MemRectangle (signedRootBox neg a b radius) delta := by
    rcases squareCertificate_all_roots hc.square hdisc hdata.delta_square with hp | hn
    · exact ⟨false,hp⟩
    · exact ⟨true,hn⟩
  have hrad := boxSideRadicand_sound hB.s_mem hB.t_mem hB.u_mem hB.v_mem
    hB.r_mem hB.W_mem hd hguard
  obtain ⟨tau,htau,hbox⟩ := directRecipe_sound (recipe neg)
    (localRadicandBox B neg a b radius) (hc.cube neg) _ hrad
  obtain ⟨_hd,htau_lower,_upper,_inv,p,he⟩ := hrec tau htau
  have hm := boxReconstructedSide_sound (r' := cross3 x y) hB.s_mem hB.t_mem hB.u_mem hB.v_mem
    hB.W_mem hd hbox hB.omega_mem hpivot htau_lower
  change MemMatrix (directSideBox B neg a b radius recipe)
    (reconstructedSide (sum3 x) (sum3 y) (prod3 x) (prod3 y)
      (cross3 x y) (permanentSide x y) delta tau w) at hm
  rw [he] at hm
  exact ⟨neg,p,hm⟩

#print axioms direct_center_power
#print axioms directRecipe_sound
#print axioms physical_side_direct_enclosure
end
end Mub6.PhaseCube
