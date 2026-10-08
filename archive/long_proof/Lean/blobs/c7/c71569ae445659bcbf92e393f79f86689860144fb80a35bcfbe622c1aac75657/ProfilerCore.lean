import SampleData

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace Mub6.Numerical.IntegerIntervals.Performance02

open Sample
open Mub6.Numerical.IntegerIntervals.TaoBundle

def decoded : Option (ZPartition 90) :=
  match PackedHex.readWords count encoded.toList with
  | some (words, []) => Packed.decodeAll fuel words
  | _ => none

/-- Profiling only: compute one reject-witness class while preserving the
source tree's split geometry. It is not used for a coverage proof. -/
def checkSelected {n : Nat} (wantUnit : Bool) (S : Nat) (E : ZCarrier)
    (q : ZRayBox) : ZPartition n → Bool
  | .keep _ => true
  | .reject witness =>
      match witness with
      | .unit j => if wantUnit then rejectRayBox S E q (.unit j) else true
      | .amplitude k => if wantUnit then true else rejectRayBox S E q (.amplitude k)
  | .split j imag cut left right =>
      checkSelected wantUnit S E (leftChild q j imag cut) left &&
      checkSelected wantUnit S E (rightChild q j imag cut) right

def selectedPacked (wantUnit : Bool) : Bool :=
  match decoded with
  | none => false
  | some tree => checkSelected wantUnit scale carrier root tree

end Mub6.Numerical.IntegerIntervals.Performance02
