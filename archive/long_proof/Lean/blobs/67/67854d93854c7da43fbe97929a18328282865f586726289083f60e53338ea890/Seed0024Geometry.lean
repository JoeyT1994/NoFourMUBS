import Seed0024Data
import Mathlib.Analysis.Real.Pi.Bounds
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds

/-! Closed whole-box geometry and actual phase-entry bounds. Only the first
two phases are used by the row-pair estimate. No cap on R is assumed or proved.
-/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 2000000
namespace Seed0024Geometry20261007
open Mub6.GlobalBoxCover20261006

def delta : ℚ := 77/100000

theorem residual_two_axis_bounds : ∀ b ∈ residual,
    (phaseBound b 0 ≤ 2*delta ∧ phaseBound b 1 ≤ delta) ∨
      (phaseBound b 0 ≤ delta ∧ phaseBound b 1 ≤ 2*delta) := by decide +kernel

def seedPhase (positive : Bool) : Fin 4 → ℝ :=
  if positive then ![0,0,2*Real.pi/3,-(2*Real.pi/3)]
  else ![0,0,-(2*Real.pi/3),2*Real.pi/3]

theorem seedPhase_between (positive : Bool) (i : Fin 4) :
    (seedLo positive i : ℝ) ≤ seedPhase positive i ∧
      seedPhase positive i ≤ (seedHi positive i : ℝ) := by
  have hL : (314159265358979323846/100000000000000000000 : ℝ) ≤ Real.pi := by
    convert Real.pi_gt_d20.le using 1 <;> norm_num
  have hU : Real.pi ≤ (314159265358979323847/100000000000000000000 : ℝ) := by
    convert Real.pi_lt_d20.le using 1 <;> norm_num
  cases positive <;> fin_cases i <;>
    norm_num [seedLo,seedHi,seedPhase,piLo,piHi] <;> constructor <;> linarith

theorem box_abs_from_center {b : SeedBox} {x : Fin 4 → ℝ}
    (hx : b.box.Contains x) (i : Fin 4) :
    |x i-(b.center i:ℝ)| ≤ (radius:ℝ) := by
  have hl : (b.center i:ℝ)-(radius:ℝ) ≤ x i := by
    exact_mod_cast (hx i).1
  have hu : x i ≤ (b.center i:ℝ)+(radius:ℝ) := by
    exact_mod_cast (hx i).2
  rw [abs_le]
  constructor <;> linarith

theorem box_abs_phase_bound {b : SeedBox} {x : Fin 4 → ℝ}
    (hx : b.box.Contains x) (i : Fin 4) : |x i| ≤ (phaseBound b i:ℝ) := by
  have h := box_abs_from_center hx i
  have ha : |x i| ≤ |x i-(b.center i:ℝ)|+|(b.center i:ℝ)| := by
    simpa only [sub_add_cancel] using abs_add (x i-(b.center i:ℝ)) (b.center i:ℝ)
  have hc : ((|b.center i|+radius:ℚ):ℝ)=|(b.center i:ℝ)|+(radius:ℝ) := by norm_cast
  change |x i| ≤ ((|b.center i|+radius:ℚ):ℝ)
  rw [hc]
  linarith

theorem residual_in_radian_root {b : SeedBox} (hb : b ∈ residual)
    {x : Fin 4 → ℝ} (hx : b.box.Contains x) : (radianRoot 4).Contains x := by
  intro i
  have hl : (-4:ℝ) ≤ (b.box.lower i:ℝ) := by exact_mod_cast (residual_root_bounds b hb i).1
  have hu : (b.box.upper i:ℝ) ≤ (4:ℝ) := by exact_mod_cast (residual_root_bounds b hb i).2
  exact ⟨hl.trans (hx i).1,(hx i).2.trans hu⟩

theorem residual_seed_phase_bound {b : SeedBox} (hb : b ∈ residual)
    {x : Fin 4 → ℝ} (hx : b.box.Contains x) (i : Fin 4) :
    |x i-seedPhase b.positiveSeed i| ≤ (1:ℝ)/650 := by
  have hl : (seedHi b.positiveSeed i:ℝ)-1/650 ≤ (b.box.lower i:ℝ) := by
    exact_mod_cast (residual_seed_bounds b hb i).1
  have hu : (b.box.upper i:ℝ) ≤ (seedLo b.positiveSeed i:ℝ)+1/650 := by
    exact_mod_cast (residual_seed_bounds b hb i).2
  have hs := seedPhase_between b.positiveSeed i
  rw [abs_le]
  constructor <;> linarith [(hx i).1,(hx i).2,hs.1,hs.2]

theorem residual_phase_two_axis_bounds {b : SeedBox} (hb : b ∈ residual)
    {x : Fin 4 → ℝ} (hx : b.box.Contains x) :
    (|x 0| ≤ 2*(77:ℝ)/100000 ∧ |x 1| ≤ (77:ℝ)/100000) ∨
      (|x 0| ≤ (77:ℝ)/100000 ∧ |x 1| ≤ 2*(77:ℝ)/100000) := by
  have h0 := box_abs_phase_bound hx 0
  have h1 := box_abs_phase_bound hx 1
  rcases residual_two_axis_bounds b hb with h|h
  · left
    have h00 : (phaseBound b 0:ℝ) ≤ 2*(77:ℝ)/100000 := by exact_mod_cast h.1
    have h11 : (phaseBound b 1:ℝ) ≤ (77:ℝ)/100000 := by exact_mod_cast h.2
    exact ⟨h0.trans h00,h1.trans h11⟩
  · right
    have h00 : (phaseBound b 0:ℝ) ≤ (77:ℝ)/100000 := by exact_mod_cast h.1
    have h11 : (phaseBound b 1:ℝ) ≤ 2*(77:ℝ)/100000 := by exact_mod_cast h.2
    exact ⟨h0.trans h00,h1.trans h11⟩

theorem phase_normSq_sub_one_le {t B : ℝ} (ht : |t|≤B) :
    Complex.normSq (Complex.exp ((t:ℂ)*Complex.I)-1) ≤ B^2 := by
  have hn : ‖Complex.exp ((t:ℂ)*Complex.I)-1‖ ≤ B := by
    have he := Complex.norm_exp_I_mul_ofReal_sub_one_le (x:=t)
    rw [mul_comm Complex.I,Real.norm_eq_abs] at he
    exact he.trans ht
  rw [Complex.normSq_eq_norm_sq,pow_two]
  exact mul_self_le_mul_self (norm_nonneg _) hn

theorem residual_phase_entry_pair_bound {b : SeedBox} (hb : b ∈ residual)
    {x : Fin 4 → ℝ} (hx : b.box.Contains x) :
    2*(Complex.normSq (Complex.exp ((x 0:ℂ)*Complex.I)-1)+
       Complex.normSq (Complex.exp ((x 1:ℂ)*Complex.I)-1)) < ((1213:ℝ)/500000)^2 := by
  have h0 := phase_normSq_sub_one_le (box_abs_phase_bound hx 0)
  have h1 := phase_normSq_sub_one_le (box_abs_phase_bound hx 1)
  have hq : 2*((phaseBound b 0:ℝ)^2+(phaseBound b 1:ℝ)^2)<((1213:ℝ)/500000)^2 := by
    exact_mod_cast residual_first_pair_bound b hb
  linarith

theorem actual_seed_entry_pair_bound {H : Fin 6 → Fin 6 → ℂ}
    {b : SeedBox} (hb : b ∈ residual) {x : Fin 4 → ℝ}
    (hx : b.box.Contains x) (hphase : PhaseCoordinates (seedEntries H) x) :
    2*(Complex.normSq (H 1 1-1)+Complex.normSq (H 1 2-1)) < ((1213:ℝ)/500000)^2 := by
  have h0 : Complex.exp ((x 0:ℂ)*Complex.I)=H 1 1 := hphase 0
  have h1 : Complex.exp ((x 1:ℂ)*Complex.I)=H 1 2 := hphase 1
  rw [←h0,←h1]
  exact residual_phase_entry_pair_bound hb hx

end Seed0024Geometry20261007
#print axioms Seed0024Geometry20261007.residual_two_axis_bounds
#print axioms Seed0024Geometry20261007.seedPhase_between
#print axioms Seed0024Geometry20261007.box_abs_from_center
#print axioms Seed0024Geometry20261007.box_abs_phase_bound
#print axioms Seed0024Geometry20261007.residual_in_radian_root
#print axioms Seed0024Geometry20261007.residual_seed_phase_bound
#print axioms Seed0024Geometry20261007.residual_phase_two_axis_bounds
#print axioms Seed0024Geometry20261007.phase_normSq_sub_one_le
#print axioms Seed0024Geometry20261007.residual_phase_entry_pair_bound
#print axioms Seed0024Geometry20261007.actual_seed_entry_pair_bound
