import PhysicalPhaseBridge
import LocalPhysicalSideEnclosure

namespace Mub6.PhaseCube
open Complex
open Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals Mub6.Classification.RadicalIntervals
open Hadamard6Extensions.FourierSide Hadamard6Extensions.FourPhaseFourierBridge
local notation "conj" => starRingEnd ℂ
noncomputable section

def asTarget (b : RationalRectangle) : TargetBox :=
  ⟨b.reLo,b.reHi,b.imLo,b.imHi⟩

def phaseTargetBox (b : RationalRectangle) : RationalRectangle :=
  boxMeet (boxDivide b (boxConj b) (1/1000)) unitBox

theorem phaseTargetBox_sound (b : RationalRectangle) (T : ℂ)
    (hm : MemRectangle b T) (hg : (1/1000 : ℝ) ≤ normSq T) :
    (asTarget (phaseTargetBox b)).Contains (T/conj T) := by
  have hT : T≠0 := by intro h; norm_num [h] at hg
  have hu := phase_target_direct_unit T hT
  have hc : ((1/1000 : ℚ) : ℝ) ≤ normSq (conj T) := by
    rw [normSq_conj]; norm_num at hg ⊢; exact hg
  have hd := mem_boxDivide (floor := 1/1000) (by norm_num)
    hm (mem_boxConj hm) hc
  exact mem_boxMeet hd (mem_unitBox hu.le)

def gateRootBox (r : RootRecipe) : RationalRectangle :=
  ⟨r.cx-r.radius,r.cx+r.radius,r.cy-r.radius,r.cy+r.radius⟩

theorem gateRootBox_sound (r : RootRecipe) (b : TargetBox)
    (hr : r.Valid b) (z : ℂ) (hz : b.Contains z) (hu : normSq z=1) :
    ∃ w : ℂ, w^3=z ∧ normSq w=1 ∧ MemRectangle (gateRootBox r) w := by
  obtain ⟨w,hw,hwn,_hd,hbox⟩ := phase_box_root_sound r b hr z hz hu
  refine ⟨w,hw,hwn,?_⟩
  simpa only [gateRootBox,MemRectangle,Rat.cast_sub,Rat.cast_add] using hbox

def RadialValid (a : Interval) (b : RationalRectangle) : Prop :=
  0 < a.lo ∧ 0 ≤ a.hi ∧
  a.lo^3 ≤ max (boxNormSq b).lo (1/1000) ∧
  min (boxNormSq b).hi 1 ≤ a.hi^3

def radialFallback : Interval := ⟨1/10,1⟩

theorem radialFallback_valid (b : RationalRectangle) : RadialValid radialFallback b := by
  refine ⟨by norm_num [radialFallback],by norm_num [radialFallback],?_,?_⟩
  · change (1/10 : ℚ)^3 ≤ max _ (1/1000)
    norm_num
  · change min _ (1 : ℚ) ≤ 1^3
    simpa using min_le_right (boxNormSq b).hi (1 : ℚ)

theorem radial_interval_sound (a : Interval) (b : RationalRectangle)
    (ha : RadialValid a b) (T : ℂ) (rho : ℝ)
    (hm : MemRectangle b T) (hn : normSq T=rho^3)
    (hlo : 1/10 ≤ rho) (hhi : rho ≤ 1) :
    Mem a rho := by
  have hb := mem_boxNormSq hm
  have hp : 0 ≤ rho := by linarith
  have hTlo : (1/1000 : ℝ) ≤ normSq T := by
    rw [hn]
    have hh := pow_le_pow_left₀ (by norm_num : (0 : ℝ) ≤ 1/10) hlo 3
    norm_num at hh
    exact hh
  have hThi : normSq T ≤ 1 := by
    rw [hn]
    simpa using pow_le_pow_left₀ hp hhi 3
  rcases ha with ⟨hap,hah,hal,hau⟩
  have hap' : (0 : ℝ) < a.lo := by exact_mod_cast hap
  have hah' : (0 : ℝ) ≤ a.hi := by exact_mod_cast hah
  have hal' : (a.lo : ℝ)^3 ≤ max ((boxNormSq b).lo : ℝ) (1/1000) := by
    have hc : ((a.lo^3 : ℚ) : ℝ) ≤ ((max (boxNormSq b).lo (1/1000 : ℚ) : ℚ) : ℝ) := by
      exact_mod_cast hal
    push_cast at hc
    exact hc
  have hau' : min ((boxNormSq b).hi : ℝ) 1 ≤ (a.hi : ℝ)^3 := by exact_mod_cast hau
  constructor
  · apply (pow_le_pow_iff_left₀ hap'.le hp (by decide : (3 : ℕ)≠0)).mp
    rw [← hn]
    exact hal'.trans (max_le hb.1 hTlo)
  · apply (pow_le_pow_iff_left₀ hp hah' (by decide : (3 : ℕ)≠0)).mp
    rw [← hn]
    exact (le_min hb.2 hThi).trans hau'

def phaseTauBox (b : RationalRectangle) (a : Interval) (r : RootRecipe) :
    RationalRectangle := boxMul (boxDivideReal b a) (boxConj (gateRootBox r))

theorem phaseTauBox_sound (b : RationalRectangle) (a : Interval) (r : RootRecipe)
    (ha : RadialValid a b) (hr : r.Valid (asTarget (phaseTargetBox b)))
    (T : ℂ) (rho : ℝ) (hm : MemRectangle b T)
    (hn : normSq T=rho^3) (hlo : 1/10 ≤ rho) (hhi : rho ≤ 1) :
    ∃ tau : ℂ, tau^3=T ∧ normSq tau=rho ∧
      MemRectangle (phaseTauBox b a r) tau := by
  have hTlo : (1/1000 : ℝ) ≤ normSq T := by
    rw [hn]
    have hh := pow_le_pow_left₀ (by norm_num : (0 : ℝ) ≤ 1/10) hlo 3
    norm_num at hh
    exact hh
  have hT : T≠0 := by intro he; norm_num [he] at hTlo
  have hp := phaseTargetBox_sound b T hm hTlo
  obtain ⟨w,hw,hwn,hwbox⟩ := gateRootBox_sound r _ hr _ hp
    (phase_target_direct_unit T hT)
  have hnz : rho≠0 := by linarith
  have hcube := phase_root_to_old_cube T w rho hnz hn hwn hw
  have hrho := radial_interval_sound a b ha T rho hm hn hlo hhi
  have hsigma := mem_boxDivideReal ha.1 hm hrho
  exact ⟨_,hcube.1,hcube.2,mem_boxMul hsigma (mem_boxConj hwbox)⟩

structure PhaseSideCertificate (B : SideMomentBoxes) (a b radius : ℚ)
    (radial : Bool → Interval) (recipe : Bool → RootRecipe) : Prop where
  square : SquareCertificate (boxDiscriminant B.s B.t B.u B.v B.W) a b radius
  radial_valid : ∀ neg, RadialValid (radial neg) (localRadicandBox B neg a b radius)
  phase_valid : ∀ neg, (recipe neg).Valid
    (asTarget (phaseTargetBox (localRadicandBox B neg a b radius)))

def phaseSideBox (B : SideMomentBoxes) (neg : Bool) (a b radius : ℚ)
    (radial : Bool → Interval) (recipe : Bool → RootRecipe) : Rect3 :=
  boxReconstructedSide B.s B.t B.u B.v B.W (signedRootBox neg a b radius)
    (phaseTauBox (localRadicandBox B neg a b radius) (radial neg) (recipe neg)) B.omega

theorem physical_side_phase_enclosure (x y : Fin 3 → ℂ) (w : ℂ)
    (hw : w^2+w+1=0) (hx : IsPhase3 x) (hy : IsPhase3 y)
    (hg : (54/5 : ℝ) ≤ normSq (actualSide x y).det)
    (B : SideMomentBoxes) (hB : CoversSideMoments B x y w)
    (a b radius : ℚ) (radial : Bool → Interval) (recipe : Bool → RootRecipe)
    (hc : PhaseSideCertificate B a b radius radial recipe) :
    ∃ neg : Bool, ∃ p : Equiv.Perm (Fin 3),
      MemMatrix (phaseSideBox B neg a b radius radial recipe)
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
  have ht0 := hdata.cube_eq
  obtain ⟨_data,hlo,hhi,_hinv,_p⟩ := hrec tau0 ht0
  let rho := normSq tau0
  have hnorm : normSq (sideRadicand (sum3 x) (sum3 y) (prod3 x) (prod3 y)
      (cross3 x y) (permanentSide x y) delta)=rho^3 := by
    rw [← ht0,map_pow]
  obtain ⟨tau,htau,_hn,hbox⟩ := phaseTauBox_sound
    (localRadicandBox B neg a b radius) (radial neg) (recipe neg)
    (hc.radial_valid neg) (hc.phase_valid neg) _ rho hrad hnorm hlo hhi
  obtain ⟨_hd,htau_lower,_upper,_inv,p,he⟩ := hrec tau htau
  have hm := boxReconstructedSide_sound (r' := cross3 x y) hB.s_mem hB.t_mem hB.u_mem hB.v_mem
    hB.W_mem hd hbox hB.omega_mem hpivot htau_lower
  change MemMatrix (phaseSideBox B neg a b radius radial recipe)
    (reconstructedSide (sum3 x) (sum3 y) (prod3 x) (prod3 y)
      (cross3 x y) (permanentSide x y) delta tau w) at hm
  rw [he] at hm
  exact ⟨neg,p,hm⟩

#print axioms phaseTargetBox_sound
#print axioms gateRootBox_sound
#print axioms radialFallback_valid
#print axioms radial_interval_sound
#print axioms phaseTauBox_sound
#print axioms physical_side_phase_enclosure
end
end Mub6.PhaseCube
