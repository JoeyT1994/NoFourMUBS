import KarlssonCover
import LiftedCarrierCover

namespace Mub6.Classification.KarlssonCover
open Hadamard6
noncomputable section

instance : Fintype Chart where
  elems := {.regular,.singularAInput,.singularAOutput,.singularBInput,.singularBOutput}
  complete := by intro c; cases c <;> simp

abbrev RawLabel := Chart × (Fin 3 → Bool) × Bool × Bool
abbrev SeamLabel := Bool × Bool × Bool × Bool

theorem raw_label_count : Fintype.card RawLabel = 160 := by decide
theorem seam_label_count : Fintype.card SeamLabel = 16 := by decide

def rawMatrix (label : RawLabel) (x : Fin 3 → ℝ) : Mat6 :=
  rawChart label.1 label.2.1 label.2.2.1 label.2.2.2 (x 0) (x 1) (x 2)
def seamMatrix (label : SeamLabel) (x : Fin 2 → ℝ) : Mat6 :=
  seamChart label.1 label.2.1 label.2.2.1 label.2.2.2 (x 0) (x 1)
def rawGuard (label : RawLabel) (x : Fin 3 → ℝ) : Prop :=
  RawGuard label.1 label.2.2.1 (x 0) (x 1)

def grid (depth : ℕ) (lo : ℚ) : Finset ClassificationCover.Interval :=
  (ClassificationCover.dyadicGrid depth lo 1).toFinset
abbrev RawCell (depth : ℕ) := (j : Fin 3) →
  {q : ClassificationCover.Interval // q ∈ grid depth (if j=0 then 0 else -1)}
abbrev SeamCell (depth : ℕ) := Fin 2 →
  {q : ClassificationCover.Interval // q ∈ grid depth (-1)}
def RawContains {depth : ℕ} (cell : RawCell depth) (x : Fin 3 → ℝ) : Prop :=
  ∀ j, ClassificationCover.Contains (cell j).val (x j)
def SeamContains {depth : ℕ} (cell : SeamCell depth) (x : Fin 2 → ℝ) : Prop :=
  ∀ j, ClassificationCover.Contains (cell j).val (x j)

instance raw_cells_finite (depth : ℕ) : Fintype (RawCell depth) := inferInstance
instance seam_cells_finite (depth : ℕ) : Fintype (SeamCell depth) := inferInstance

theorem raw_parameters_in_cells (depth : ℕ) {x : Fin 3 → ℝ}
    (hx : ∀ j, (if j=0 then (0:ℝ) else -1) ≤ x j ∧ x j ≤ 1) :
    ∃ cell : RawCell depth, RawContains cell x := by
  have each (j : Fin 3) : ∃ q, q ∈ grid depth (if j=0 then 0 else -1) ∧
      ClassificationCover.Contains q (x j) := by
    rcases ClassificationCover.dyadicGrid_complete depth
      (if j=0 then 0 else -1) 1 (x j) (by simpa using hx j) with ⟨q,hq,hc⟩
    exact ⟨q,by simpa [grid] using hq,hc⟩
  choose q hq hc using each
  exact ⟨fun j => ⟨q j,hq j⟩,hc⟩

theorem seam_parameters_in_cells (depth : ℕ) {x : Fin 2 → ℝ}
    (hx : ∀ j, -1 ≤ x j ∧ x j ≤ 1) :
    ∃ cell : SeamCell depth, SeamContains cell x := by
  have each (j : Fin 2) : ∃ q, q ∈ grid depth (-1) ∧ ClassificationCover.Contains q (x j) := by
    rcases ClassificationCover.dyadicGrid_complete depth (-1) 1 (x j)
      (by simpa using hx j) with ⟨q,hq,hc⟩
    exact ⟨q,by simpa [grid] using hq,hc⟩
  choose q hq hc using each
  exact ⟨fun j => ⟨q j,hq j⟩,hc⟩

def RawHit {depth : ℕ} (label : RawLabel) (cell : RawCell depth) (H : Mat6) : Prop :=
  ∃ x : Fin 3 → ℝ, 0<x 0 ∧ x 0<1 ∧ RawContains cell x ∧ rawGuard label x ∧
    Equivalent H (rawMatrix label x)
def SeamHit {depth : ℕ} (label : SeamLabel) (cell : SeamCell depth) (H : Mat6) : Prop :=
  ∃ x : Fin 2 → ℝ, SeamContains cell x ∧ Equivalent H (seamMatrix label x)

/-- At every subdivision depth there is a finite family covering the full sector. -/
theorem finite_three_parameter_cover (depth : ℕ) {H : Mat6}
    (hH : IsHadamard H) (h₂ : HasHadamardTwoByTwo H) :
    (∃ label : RawLabel, ∃ cell : RawCell depth, RawHit label cell H) ∨
    (∃ label : SeamLabel, ∃ cell : SeamCell depth, SeamHit label cell H) := by
  rcases complete_three_parameter_cover hH h₂ with hr | hs
  · rcases hr with ⟨chart,signs,ps,zs,s,q,r,hsl,hsr,hql,hqr,hrl,hrr,hg,he⟩
    have hx : ∀ j : Fin 3, (if j=0 then (0:ℝ) else -1) ≤ (![s,q,r] : Fin 3 → ℝ) j ∧
        (![s,q,r] : Fin 3 → ℝ) j ≤ 1 := by
      intro j
      fin_cases j <;> simp
      · exact ⟨le_of_lt hsl,le_of_lt hsr⟩
      · exact ⟨hql,hqr⟩
      · exact ⟨hrl,hrr⟩
    rcases raw_parameters_in_cells depth hx with ⟨cell,hcell⟩
    exact Or.inl ⟨(chart,signs,ps,zs),cell,![s,q,r],hsl,hsr,hcell,hg,he⟩
  · rcases hs with ⟨tr,os,ps,zs,q,r,hql,hqr,hrl,hrr,he⟩
    have hx : ∀ j : Fin 2, -1 ≤ (![q,r] : Fin 2 → ℝ) j ∧ (![q,r] : Fin 2 → ℝ) j ≤ 1 := by
      intro j
      fin_cases j
      · exact ⟨hql,hqr⟩
      · exact ⟨hrl,hrr⟩
    rcases seam_parameters_in_cells depth hx with ⟨cell,hcell⟩
    exact Or.inr ⟨(tr,os,ps,zs),cell,![q,r],hcell,he⟩

end
end Mub6.Classification.KarlssonCover
