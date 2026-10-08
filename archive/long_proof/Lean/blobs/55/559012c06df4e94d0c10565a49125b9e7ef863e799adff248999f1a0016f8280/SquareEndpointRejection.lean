import SquareMidpointRejection
import EndpointLeafRejection

/-! One checked midpoint floor suffices for endpoint rejection. Each of the
32 endpoint norms is replaced by a strict square test. The witness is checked
against both adjacent squares of the actual midpoint sum before use. -/
set_option autoImplicit false
open Seed0024ClusterTubeCover20261007 Seed0024ClusterTubeTable20261007
namespace Seed0024ClusterTube20261007

def leafEndpointDifferencePair (table : SupplierTable) (s : Cell) (k : Fin 6)
    (m : Mask) : ℤ × ℤ :=
  integerPairSub (integerFiveSum 67108864 (leafEndpointEntry table s k m))
    (leafMidpointPair table s k)

def squareEndpointRejectCheck (table : SupplierTable) (s : Cell) (k : Fin 6)
    (r : ℕ) : Bool :=
  let d := |(r : ℤ)-164382474|-leafTolerance-26
  normFloorWitnessCheck (leafMidpointPair table s k) r &&
    decide (s.level ≤ 4 ∧ 710*(5*(supplierHalfStep s : ℤ)) < 113*218880 ∧
      0 < d ∧ ∀m : Mask,integerPairSquare (leafEndpointDifferencePair table s k m) < d*d)

def acceleratedScalarRejectCheck (table : SupplierTable) (s : Cell) (k : Fin 6) :
    Option ℕ → Bool
  | none = >  squareMidpointRejectCheck table s k
  | some r = >  squareEndpointRejectCheck table s k r

theorem squareEndpointRejectCheck_implies (table : SupplierTable) (s : Cell)
    (k : Fin 6) (r : ℕ) (hcheck : squareEndpointRejectCheck table s k r=true) :
    endpointRejectCheck table s k=true := by
  let d := |(r : ℤ)-164382474|-leafTolerance-26
  have hh : normFloorWitnessCheck (leafMidpointPair table s k) r=true ∧
      (s.level ≤ 4 ∧ 710*(5*(supplierHalfStep s : ℤ)) < 113*218880 ∧
        0 < d ∧ ∀m : Mask,integerPairSquare (leafEndpointDifferencePair table s k m) < d*d) := by
    simpa only [squareEndpointRejectCheck,Bool.and_eq_true,decide_eq_true_eq] using hcheck
  have he : (r : ℤ)=leafMidpointNorm table s k :=
    normFloorWitnessCheck_eq (leafMidpointPair table s k) r hh.1
  have hreject : ∀m : Mask,leafEndpointNorm table s k m+leafTolerance+26  < 
      |leafMidpointNorm table s k-164382474| := by
    intro m
    have hf := (pairFloor_lt_iff_square_lt (leafEndpointDifferencePair table s k m)
      d hh.2.2.2.1).2 (hh.2.2.2.2 m)
    change leafEndpointNorm table s k m < d at hf
    dsimp [d] at hf
    rw [he] at hf
    omega
  have hparts : s.level ≤ 4 ∧
      (710*(5*(supplierHalfStep s : ℤ)) < 113*218880 ∧
        ∀m : Mask,leafEndpointNorm table s k m+leafTolerance+26  < 
          |leafMidpointNorm table s k-164382474|) := ⟨hh.2.1,hh.2.2.1,hreject⟩
  simpa only [endpointRejectCheck,Bool.and_eq_true,decide_eq_true_eq] using hparts

theorem squareEndpointRejectCheck_sound (table : SupplierTable)
    (hTable : SupplierNeededTableSound table) (s : Cell) (hs : s.level ≤ 7)
    (k : Fin 6) (r : ℕ) (theta : Turns) (htheta : MemCell s theta)
    (hcheck : squareEndpointRejectCheck table s k r=true) :
    ¬ |‖phaseSum (fourierTarget theta k)‖-Real.sqrt 6| ≤ (1 : ℝ)/5 :=
  endpointRejectCheck_sound table hTable s hs k theta htheta
    (squareEndpointRejectCheck_implies table s k r hcheck)

theorem acceleratedScalarRejectCheck_implies (table : SupplierTable) (s : Cell)
    (k : Fin 6) (witness : Option ℕ)
    (hcheck : acceleratedScalarRejectCheck table s k witness=true) :
    scalarRejectCheck table s k=true := by
  have hor : midpointRejectCheck table s k=true ∨ endpointRejectCheck table s k=true := by
    cases witness with
    | none = >  exact Or.inl (squareMidpointRejectCheck_implies table s k hcheck)
    | some r = >  exact Or.inr (squareEndpointRejectCheck_implies table s k r hcheck)
  simpa only [scalarRejectCheck,Bool.or_eq_true] using hor

theorem acceleratedScalarRejectCheck_sound (table : SupplierTable)
    (hTable : SupplierNeededTableSound table) (s : Cell) (hs : s.level ≤ 7)
    (k : Fin 6) (witness : Option ℕ) (theta : Turns) (htheta : MemCell s theta)
    (hcheck : acceleratedScalarRejectCheck table s k witness=true) :
    ¬ |‖phaseSum (fourierTarget theta k)‖-Real.sqrt 6| ≤ (1 : ℝ)/5 :=
  scalarRejectCheck_sound table hTable s hs k theta htheta
    (acceleratedScalarRejectCheck_implies table s k witness hcheck)

#print axioms squareEndpointRejectCheck_implies
#print axioms squareEndpointRejectCheck_sound
#print axioms acceleratedScalarRejectCheck_implies
#print axioms acceleratedScalarRejectCheck_sound
end Seed0024ClusterTube20261007
