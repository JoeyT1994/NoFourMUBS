import ExplicitComplexRoots
import GramSideData
import FourierGoodBridge

/-! A finite necessary side catalogue. Cube-root choices are absorbed by the
column permutation, so only two signs and six permutations remain. -/
namespace Hadamard6Extensions.FourPhaseCatalogue
open Hadamard6Extensions.FourierSide Hadamard6Extensions.FourPhaseRoots
open Hadamard6Extensions.FourPhaseGram Hadamard6Extensions.FourPhaseFourierBridge
noncomputable section

abbrev SideTag := Bool × Bool × Equiv.Perm (Fin 3)

def sideDelta (s t r : ℂ) (sheetSign deltaSign : Bool) : ℂ :=
  signedSquareRoot deltaSign
    ((sideGamma s t (momentW s t r sheetSign))^2 -
      4*(sideAlpha s (momentU s t r sheetSign))*(sideAlpha t (momentV s t r sheetSign)))

def sideT (s t r : ℂ) (sheetSign deltaSign : Bool) : ℂ :=
  sideRadicand s t (momentU s t r sheetSign) (momentV s t r sheetSign) r
    (momentW s t r sheetSign) (sideDelta s t r sheetSign deltaSign)

def sideTau (s t r : ℂ) (sheetSign deltaSign : Bool) : ℂ :=
  cubeRoot (sideT s t r sheetSign deltaSign)

def sideBase (s t r : ℂ) (sheetSign deltaSign : Bool) : Matrix (Fin 3) (Fin 3) ℂ :=
  reconstructedSide s t (momentU s t r sheetSign) (momentV s t r sheetSign) r
    (momentW s t r sheetSign) (sideDelta s t r sheetSign deltaSign)
    (sideTau s t r sheetSign deltaSign) omega

def sideCandidate (s t r : ℂ) (tag : SideTag) : Matrix (Fin 3) (Fin 3) ℂ :=
  fun i j => sideBase s t r tag.1 tag.2.1 i (tag.2.2 j)

/-- Guards apply to the selected candidate. Arbitrary tags may fail them. -/
def SideGuards (s t r : ℂ) (tag : SideTag) : Prop :=
  SideReconstructionData s t (momentU s t r tag.1) (momentV s t r tag.1) r
    (momentW s t r tag.1) (sideDelta s t r tag.1 tag.2.1)
    (sideTau s t r tag.1 tag.2.1) ∧
  (81/10 : ℝ) ≤ Complex.normSq (sidePivot s t (momentW s t r tag.1)
    (sideDelta s t r tag.1 tag.2.1)) ∧
  (1/1000 : ℝ) ≤ Complex.normSq (sideT s t r tag.1 tag.2.1) ∧
  (1/10 : ℝ) ≤ Complex.normSq (sideTau s t r tag.1 tag.2.1) ∧
  Complex.normSq (sideTau s t r tag.1 tag.2.1) ≤ 1 ∧
  Complex.normSq (sideTau s t r tag.1 tag.2.1)⁻¹ ≤ 10

theorem side_tag_count : Fintype.card SideTag = 24 := by
  simp [SideTag, Fintype.card_prod, Fintype.card_perm]
  norm_num [Nat.factorial]

theorem sideTau_cube (s t r : ℂ) (a b : Bool) :
    sideTau s t r a b ^ 3 = sideT s t r a b := cubeRoot_cube _

/-- Every actual nonpole good side occurs in the 24-entry catalogue. No
converse physicality assertion is made about the catalogue entries. -/
theorem actual_good_side_finite_cover (x y : Fin 3 → ℂ)
    (hx : IsPhase3 x) (hy : IsPhase3 y)
    (hg : (54/5 : ℝ) ≤ Complex.normSq (actualSide x y).det)
    (hNP : NoPoles (sum3 x) (sum3 y) (cross3 x y)) :
    ∃ tag : SideTag,
      actualSide x y = sideCandidate (sum3 x) (sum3 y) (cross3 x y) tag ∧
      SideGuards (sum3 x) (sum3 y) (cross3 x y) tag := by
  have hD : (actualSide x y).det ≠ 0 := by
    intro hz
    norm_num [hz] at hg
  obtain ⟨a,hu,hv,hW⟩ := actual_side_data x y hx hy hD hNP
  have hcover := actual_good_side_scalar_cover x y omega omega_quadratic hx hy hg
  rw [← hu, ← hv, ← hW] at hcover
  obtain ⟨delta,⟨tau0,hdata⟩,hh,hT,hrec⟩ := hcover
  obtain ⟨b,hb⟩ := square_roots_exhaustive hdata.delta_square
  change delta = sideDelta (sum3 x) (sum3 y) (cross3 x y) a b at hb
  rw [hb] at hh hT hrec
  obtain ⟨hd,hlo,hhi,hi,p,hp⟩ := hrec
    (sideTau (sum3 x) (sum3 y) (cross3 x y) a b)
    (sideTau_cube (sum3 x) (sum3 y) (cross3 x y) a b)
  refine ⟨(a,b,p.symm),?_,hd,hh,hT,hlo,hhi,hi⟩
  ext i j
  have he := congrArg (fun M : Matrix (Fin 3) (Fin 3) ℂ => M i (p.symm j)) hp
  simpa only [sideCandidate,sideBase,Equiv.apply_symm_apply] using he.symm

theorem actual_good_side_strict_finite_cover (x y : Fin 3 → ℂ)
    (hx : IsPhase3 x) (hy : IsPhase3 y)
    (hg : (54/5 : ℝ) ≤ Complex.normSq (actualSide x y).det)
    (hR : 0 < R (sum3 x) (sum3 y) (cross3 x y)) :
    ∃ tag : SideTag,
      actualSide x y = sideCandidate (sum3 x) (sum3 y) (cross3 x y) tag ∧
      SideGuards (sum3 x) (sum3 y) (cross3 x y) tag :=
  actual_good_side_finite_cover x y hx hy hg (strict_noPoles hR)

#check side_tag_count
#print axioms side_tag_count
#check sideTau_cube
#print axioms sideTau_cube
#check actual_good_side_finite_cover
#print axioms actual_good_side_finite_cover
#check actual_good_side_strict_finite_cover
#print axioms actual_good_side_strict_finite_cover
end
end Hadamard6Extensions.FourPhaseCatalogue
