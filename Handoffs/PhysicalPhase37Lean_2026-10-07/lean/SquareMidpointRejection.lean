import SquareNormBounds
import MidpointLeafRejection

/-! A zero-witness midpoint checker using only squared integer norms. Accepted
tests imply the frozen midpoint checker; the converse also holds. The actual
physical soundness theorem is reused without changing its hypotheses. -/
set_option autoImplicit false
open Seed0024ClusterTubeCover20261007 Seed0024ClusterTubeTable20261007
namespace Seed0024ClusterTube20261007

def leafMidpointPair (table : SupplierTable) (s : Cell) (k : Fin 6) : ℤ × ℤ :=
  integerFiveSum 67108864 (leafMidpointEntry table s k)

def squareMidpointRejectCheck (table : SupplierTable) (s : Cell) (k : Fin 6) : Bool :=
  let n := integerPairSquare (leafMidpointPair table s k)
  let margin := leafMidpointError s+leafTolerance+10
  let high := 164382474+margin+1
  let low := 164382474-margin
  decide (s.level ≤ 4 ∧ (high*high ≤ n ∨ (0 < low ∧ n < low*low)))

theorem leafMidpointMargin_nonneg (s : Cell) :
    0 ≤ leafMidpointError s+leafTolerance+10 := by
  have he : 0 ≤ leafMidpointError s :=
    integerCeilDiv_nonneg _ _ (by positivity) (by norm_num)
  have ht : 0 ≤ leafTolerance :=
    integerCeilDiv_nonneg _ _ (by norm_num) (by norm_num)
  omega

theorem squareMidpointRejectCheck_implies (table : SupplierTable) (s : Cell) (k : Fin 6)
    (hcheck : squareMidpointRejectCheck table s k=true) :
    midpointRejectCheck table s k=true := by
  let m := leafMidpointError s+leafTolerance+10
  let z := leafMidpointPair table s k
  have hh : s.level ≤ 4 ∧
      ((164382474+m+1)*(164382474+m+1) ≤ integerPairSquare z ∨
        (0 < 164382474-m ∧ integerPairSquare z < (164382474-m)*(164382474-m))) :=
    of_decide_eq_true hcheck
  have hm : 0 ≤ m := leafMidpointMargin_nonneg s
  have hfloor : integerPairNormFloor z=leafMidpointNorm table s k := rfl
  have hreject : m < |leafMidpointNorm table s k-164382474| := by
    rcases hh.2 with hhigh|hlow
    · have hf := (pairFloor_ge_iff_square_le z (164382474+m+1) (by omega)).2 hhigh
      rw [hfloor] at hf
      have ha := le_abs_self (leafMidpointNorm table s k-164382474)
      omega
    · have hf := (pairFloor_lt_iff_square_lt z (164382474-m) hlow.1).2 hlow.2
      rw [hfloor] at hf
      have ha : 164382474-leafMidpointNorm table s k ≤ 
          |leafMidpointNorm table s k-164382474| := by
        rw [abs_sub_comm]
        exact le_abs_self _
      omega
  have hparts : s.level ≤ 4 ∧ leafMidpointError s+leafTolerance+10  < 
      |leafMidpointNorm table s k-164382474| := ⟨hh.1,hreject⟩
  simpa only [midpointRejectCheck,Bool.and_eq_true,decide_eq_true_eq] using hparts

theorem midpointRejectCheck_implies_square (table : SupplierTable) (s : Cell) (k : Fin 6)
    (hcheck : midpointRejectCheck table s k=true) :
    squareMidpointRejectCheck table s k=true := by
  let m := leafMidpointError s+leafTolerance+10
  let z := leafMidpointPair table s k
  have hh : s.level ≤ 4 ∧ m < |leafMidpointNorm table s k-164382474| := by
    simpa only [midpointRejectCheck,Bool.and_eq_true,decide_eq_true_eq] using hcheck
  have hfloor : integerPairNormFloor z=leafMidpointNorm table s k := rfl
  have hm : 0 ≤ m := leafMidpointMargin_nonneg s
  have hr : 0 ≤ leafMidpointNorm table s k := integerPairNormFloor_nonneg z
  apply decide_eq_true
  change s.level ≤ 4 ∧
    ((164382474+m+1)*(164382474+m+1) ≤ integerPairSquare z ∨
      (0 < 164382474-m ∧ integerPairSquare z < (164382474-m)*(164382474-m)))
  refine ⟨hh.1,?_⟩
  by_cases hsign : 0 ≤ leafMidpointNorm table s k-164382474
  · have h := hh.2
    rw [abs_of_nonneg hsign] at h
    left
    apply (pairFloor_ge_iff_square_le z (164382474+m+1) (by omega)).1
    rw [hfloor]
    omega
  · have h := hh.2
    rw [abs_of_neg (lt_of_not_ge hsign)] at h
    have hlow : 0 < 164382474-m := by omega
    right
    refine ⟨hlow,(pairFloor_lt_iff_square_lt z (164382474-m) hlow).1 ?_⟩
    rw [hfloor]
    omega

theorem squareMidpointRejectCheck_iff (table : SupplierTable) (s : Cell) (k : Fin 6) :
    squareMidpointRejectCheck table s k=true ↔ midpointRejectCheck table s k=true :=
  ⟨squareMidpointRejectCheck_implies table s k,midpointRejectCheck_implies_square table s k⟩

theorem squareMidpointRejectCheck_sound (table : SupplierTable)
    (hTable : SupplierNeededTableSound table) (s : Cell) (hs : s.level ≤ 7)
    (k : Fin 6) (theta : Turns) (htheta : MemCell s theta)
    (hcheck : squareMidpointRejectCheck table s k=true) :
    ¬ |‖phaseSum (fourierTarget theta k)‖-Real.sqrt 6| ≤ (1 : ℝ)/5 :=
  midpointRejectCheck_sound table hTable s hs k theta htheta
    (squareMidpointRejectCheck_implies table s k hcheck)

#print axioms leafMidpointMargin_nonneg
#print axioms squareMidpointRejectCheck_implies
#print axioms midpointRejectCheck_implies_square
#print axioms squareMidpointRejectCheck_iff
#print axioms squareMidpointRejectCheck_sound
end Seed0024ClusterTube20261007
