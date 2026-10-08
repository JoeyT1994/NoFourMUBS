import SeedPhaseData

/-! Pure, square-only candidate leaf checks. Exact refinement to the previously
checked predicates is required before any physical soundness can be claimed.
The only endpoint witness is a midpoint norm floor, checked by adjacent squares.
These definitions deliberately do not invoke Nat.sqrt or import analysis. -/
namespace Seed0024PhaseCore20261007

def absolute (z : Int) : Int := z.natAbs

def tolerance : Int := ceilDiv Q 5

def midpointError (s : CellCode) : Int :=
  ceilDiv (710*Q*(5*(halfStep s : Int))) (113*218880)

def midpointEntry (s : CellCode) (k : Column) (i : Fin 5) : Pair :=
  tableEntry (shiftedIndex (midpointIndex s i) k i)

def endpointEntry (s : CellCode) (k : Column) (m : Mask) (i : Fin 5) : Pair :=
  tableEntry (shiftedIndex (endpointIndex s m i) k i)

def midpointPair (s : CellCode) (k : Column) : Pair :=
  fiveSumWithQ (midpointEntry s k)

def endpointDifferencePair (s : CellCode) (k : Column) (m : Mask) : Pair :=
  pairSub (fiveSumWithQ (endpointEntry s k m)) (midpointPair s k)

def midpointReject (s : CellCode) (k : Column) : Bool :=
  let n := pairSquare (midpointPair s k)
  let margin := midpointError s+tolerance+10
  let high := 164382474+margin+1
  let low := 164382474-margin
  decide (s.level ≤ 4 ∧ (high*high ≤ n ∨ (0 < low ∧ n < low*low)))

def endpointReject (s : CellCode) (k : Column) (r : Nat) : Bool :=
  let d := absolute ((r : Int)-164382474)-tolerance-26
  floorWitnessCheck (midpointPair s k) r &&
    decide (s.level ≤ 4 ∧ 710*(5*(halfStep s : Int)) < 113*218880 ∧
      0 < d ∧ ∀ m : Mask, pairSquare (endpointDifferencePair s k m) < d*d)

def labelLower : Nat → Int
  | 0 => 402573944
  | 1 => 400531927
  | 2 => 398465484
  | 3 => 397166746
  | 4 => 396450275
  | _ => 0

def labelProducts (s : CellCode) (label : Label) (i : Fin 5) : Pair :=
  conjugateProductQuotient (centreEntry label i) (midpointEntry s 0 i)

def labelPair (s : CellCode) (label : Label) : Pair :=
  fiveSumWithQ (labelProducts s label)

def labelAccept (s : CellCode) (label : Label) : Bool :=
  decide (s.level ≤ 4 ∧ (labelLower s.level+37)*(labelLower s.level+37) ≤
    pairSquare (labelPair s label))

inductive WitnessTag where
  | midpoint (column : Column)
  | endpoint (column : Column) (floor : Nat)
  | accept (label : Label)
  | split

def eraseTag : WitnessTag → UInt8
  | .midpoint k => UInt8.ofNat k.val
  | .endpoint k _ => UInt8.ofNat k.val
  | .accept label => UInt8.ofNat (6+label.val)
  | .split => 54

def leafCheck (s : CellCode) : WitnessTag → Bool
  | .midpoint k => midpointReject s k
  | .endpoint k r => endpointReject s k r
  | .accept label => labelAccept s label
  | .split => false

/- Same lexicographic base-19 decoding as the existing ordinalCell; the exact
range coverage remains the separate ordinal-range assembly theorem. -/
def ordinalCellCode (n : Nat) : CellCode :=
  ⟨0, fun i => match i.val with
    | 0 => n/130321%19
    | 1 => n/6859%19
    | 2 => n/361%19
    | 3 => n/19%19
    | _ => n%19⟩

theorem erase_midpoint (k : Column) : eraseTag (.midpoint k) = UInt8.ofNat k.val := rfl
#print axioms erase_midpoint

theorem erase_endpoint (k : Column) (r : Nat) :
    eraseTag (.endpoint k r) = UInt8.ofNat k.val := rfl
#print axioms erase_endpoint

theorem erase_accept (label : Label) :
    eraseTag (.accept label) = UInt8.ofNat (6+label.val) := rfl
#print axioms erase_accept

theorem erase_split : eraseTag .split = 54 := rfl
#print axioms erase_split

end Seed0024PhaseCore20261007
