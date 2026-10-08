import Std

/-!
Pure integer replay vocabulary, separated from the physical/analytic imports.

This file does not assert that a finite forest is accepted, nor that these
definitions refine the existing physical checker. Those are separate proof
obligations. Endpoint floor witnesses are untrusted naturals checked by both
adjacent square inequalities; no square-root computation is used here.
-/

namespace Seed0024PhaseCore20261007

abbrev Vec5 (α : Type) := Fin 5 → α
abbrev Pair := Int × Int
abbrev Mask := Fin 32
abbrev Column := Fin 6
abbrev Label := Fin 48

structure CellCode where
  level : Nat
  index : Vec5 Nat

def Q : Int := 67108864
def period : Nat := 218880

def fiveSum (v : Vec5 Int) : Int :=
  v 0 + v 1 + v 2 + v 3 + v 4

def fiveSumWithQ (v : Vec5 Pair) : Pair :=
  (Q + fiveSum (fun i => (v i).1), fiveSum (fun i => (v i).2))

def pairSub (x y : Pair) : Pair := (x.1-y.1, x.2-y.2)

def pairSquare (z : Pair) : Int := z.1*z.1 + z.2*z.2

def normSquareNat (z : Pair) : Nat := (pairSquare z).toNat

def floorWitnessCheck (z : Pair) (r : Nat) : Bool :=
  decide (r*r ≤ normSquareNat z ∧ normSquareNat z < (r+1)*(r+1))

/- The first argument is the centre to be conjugated, exactly as in the
existing integerConjProductQuotient. Signed division is toward zero. -/
def conjugateProductQuotient (c t : Pair) : Pair :=
  ((c.1*t.1+c.2*t.2).tdiv Q, (c.1*t.2-c.2*t.1).tdiv Q)

def ceilDiv (a b : Int) : Int := (a+b-1).tdiv b

def denominator (s : CellCode) : Nat := 19*2^s.level

def Valid (s : CellCode) : Prop :=
  s.level ≤ 7 ∧ ∀ i, s.index i < denominator s

instance (s : CellCode) : Decidable (Valid s) := by
  unfold Valid
  infer_instance

def validCheck (s : CellCode) : Bool := decide (Valid s)

def maskBits (m : Mask) (i : Fin 5) : Bool := m.val.testBit i.val

def childCell (s : CellCode) (m : Mask) : CellCode :=
  ⟨s.level+1, fun i => 2*s.index i+(if maskBits m i then 1 else 0)⟩

def step (s : CellCode) : Nat := period/denominator s

def halfStep (s : CellCode) : Nat := period/(2*denominator s)

def midpointIndex (s : CellCode) (i : Fin 5) : Nat :=
  (2*s.index i+1)*halfStep s

def lowerIndex (s : CellCode) (i : Fin 5) : Nat := s.index i*step s

def upperIndex (s : CellCode) (i : Fin 5) : Nat := (s.index i+1)*step s

def endpointIndex (s : CellCode) (m : Mask) (i : Fin 5) : Nat :=
  if maskBits m i then upperIndex s i else lowerIndex s i

/- Euclidean remainder, deliberately distinct from the tdiv used above. -/
def normalizedIndex (n : Int) : Nat := (n%218880).toNat

def shiftedIndex (index : Nat) (k : Column) (i : Fin 5) : Nat :=
  normalizedIndex ((index : Int)-((i.succ.val*k.val : Nat) : Int)*36480)

theorem fiveSum_zero : fiveSum (fun _ => 0) = 0 := rfl
#print axioms fiveSum_zero

theorem pairSquare_three_four : pairSquare (3,4) = 25 := rfl
#print axioms pairSquare_three_four

theorem floorWitness_three_four : floorWitnessCheck (3,4) 5 = true := rfl
#print axioms floorWitness_three_four

theorem wrongFloor_three_four : floorWitnessCheck (3,4) 4 = false := rfl
#print axioms wrongFloor_three_four

theorem signedDivision_control : (-5 : Int).tdiv 2 = -2 := rfl
#print axioms signedDivision_control

theorem signedRemainder_control : normalizedIndex (-1) = 218879 := rfl
#print axioms signedRemainder_control

end Seed0024PhaseCore20261007
