import Radius01Orientation
import Radius01PositiveAnchor

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.ChartRadius0120261006
open scoped ComplexConjugate BigOperators Matrix
open NativeSigned20261006 ChartExtension20261006
noncomputable section

/-- Transposition retains both literal stationary seed domains, including
their full punctured closed boundary; only the middle lifts are exchanged. -/
theorem seedBall_transpose {H : Mat6} (b : Bool) (r : ℝ)
    (hball : InPuncturedSeedBall H b r) : InPuncturedSeedBall (fun i j => H j i) b r := by
  obtain ⟨u,he,hu,hn⟩ := hball
  let v : Fin 4 → ℝ := ![u 0,u 2,u 1,u 3]
  refine ⟨v,?_,?_,?_⟩
  · intro i
    fin_cases i
    · simpa [v,seedEntry] using he 0
    · cases b <;> simpa [v,seedEntry,seedAngle] using he 2
    · cases b <;> simpa [v,seedEntry,seedAngle] using he 1
    · simpa [v,seedEntry] using he 3
  · intro i
    fin_cases i
    · exact hu 0
    · exact hu 2
    · exact hu 1
    · exact hu 3
  · obtain ⟨i,hi⟩ := hn
    fin_cases i
    · exact ⟨0,hi⟩
    · exact ⟨2,hi⟩
    · exact ⟨1,hi⟩
    · exact ⟨3,hi⟩

/-- Literal column orientation, defined by the previously checked row
formula applied to the transpose. This introduces no column-Gram premise. -/
def columnOrientation (H : Mat6) (i : Fin 3) (plusFirst : Bool) : Prop :=
  rowOrientation (fun j k => H k j) i plusFirst

theorem physical_side_columns_opposite01 {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (b : Bool) (r : ℝ) (hball : InPuncturedSeedBall H b r)
    (hr : r ≤ radiusEnvelope01) :
    ∃ orient : Bool, columnOrientation H 1 orient ∧ columnOrientation H 2 (!orient) := by
  exact physical_side_rows_opposite01 (physical_transpose hH) ⟨hd.2,hd.1⟩ b r
    (seedBall_transpose b r hball) hr

/-- Physical side columns also admit positive-real anchors at radius .1;
the witness lies among the actual three lower entries. -/
theorem physical_side_column_positive_anchor01 {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (b : Bool) (r : ℝ) (hball : InPuncturedSeedBall H b r)
    (hr : r ≤ radiusEnvelope01) (i : Fin 3) (hi : i ≠ 0) :
    ∃ j : Fin 3, 0 < (blockC H j i).re := by
  exact physical_side_positive_anchor01 (physical_transpose hH) ⟨hd.2,hd.1⟩ b r
    (seedBall_transpose b r hball) hr i hi

end
end Centiradian20261006.ChartRadius0120261006

#print axioms Centiradian20261006.ChartRadius0120261006.seedBall_transpose
#print axioms Centiradian20261006.ChartRadius0120261006.physical_side_columns_opposite01
#print axioms Centiradian20261006.ChartRadius0120261006.physical_side_column_positive_anchor01
