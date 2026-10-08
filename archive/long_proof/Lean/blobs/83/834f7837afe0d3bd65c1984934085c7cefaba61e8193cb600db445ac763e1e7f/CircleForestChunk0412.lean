import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_174458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 15 else 23)))
def hex_174458 : String := "43440941424009434441090841424009430A094007434406410606090A09400943440641060609424007430A07400743060709"
theorem cover_174458 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174458 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 51) (hex := hex_174458)
  decide +kernel
#print axioms cover_174458

def state_174510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 15 else 23)))
def hex_174510 : String := "08"
theorem cover_174510 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174510 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_174510)
  decide +kernel
#print axioms cover_174510

def state_174513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 30 else 46)))
def hex_174513 : String := "41404208050505"
theorem cover_174513 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174513 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_174513)
  decide +kernel
#print axioms cover_174513

def state_174522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 19 else (if j.val < 4 then 30 else 47)))
def hex_174522 : String := "424344414042080942084305050895440841404208094208434408414009420609080808434441400605054140429506429506404295050544094109400705"
theorem cover_174522 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174522 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_174522)
  decide +kernel
#print axioms cover_174522

def state_174586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 50) else (if j.val < 3 then 38 else (if j.val < 4 then 30 else 47)))
def hex_174586 : String := "4344414208050541424095434405060640954305440541060542080544084142064043440806060608"
theorem cover_174586 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174586 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_174586)
  decide +kernel
#print axioms cover_174586

def state_174627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 50) else (if j.val < 3 then 39 else (if j.val < 4 then 30 else 47)))
def hex_174627 : String := "434405414042950505054405414042434405410A0544050A050505"
theorem cover_174627 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174627 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_174627)
  decide +kernel
#print axioms cover_174627

def state_174654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 19 else (if j.val < 4 then 30 else 47)))
def hex_174654 : String := "4042080505"
theorem cover_174654 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174654 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_174654)
  decide +kernel
#print axioms cover_174654

def state_174659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 31 else 23)))
def hex_174659 : String := "44084140420809420843440541400905050808"
theorem cover_174659 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174659 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 19) (hex := hex_174659)
  decide +kernel
#print axioms cover_174659

def state_174679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 10)))
def hex_174679 : String := "08"
theorem cover_174679 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174679 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_174679)
  decide +kernel
#print axioms cover_174679

def state_174681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 11)))
def hex_174681 : String := "420A434441420A0642080641420A060A4408410A07"
theorem cover_174681 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174681 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_174681)
  decide +kernel
#print axioms cover_174681
end Mub6.Numerical.CircleFullPrototype.Forest
