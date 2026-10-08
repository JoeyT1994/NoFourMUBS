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
def state_53659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 11)))
def hex_53659 : String := "434440424108434441084042070708080A410543094442410640060606074208410643060640424108430807410509084440420A4106070A404207070A"
theorem cover_53659 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53659 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_53659)
  decide +kernel
#print axioms cover_53659

def state_53720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 5)))
def hex_53720 : String := "44410640420A0606410A0A"
theorem cover_53720 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53720 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_53720)
  decide +kernel
#print axioms cover_53720

def state_53731 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 5)))
def hex_53731 : String := "4344064105424309060606"
theorem cover_53731 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53731 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_53731)
  decide +kernel
#print axioms cover_53731

def state_53742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
def hex_53742 : String := "424344410640430606064108400A080A06"
theorem cover_53742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53742 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_53742)
  decide +kernel
#print axioms cover_53742

def state_53759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
def hex_53759 : String := "4406400606"
theorem cover_53759 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53759 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_53759)
  decide +kernel
#print axioms cover_53759

def state_53765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
def hex_53765 : String := "4344404105054105434205050540414344054205434440410A05054007050A440507434405050541434405050543444205400505050544050A"
theorem cover_53765 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53765 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_53765)
  decide +kernel
#print axioms cover_53765

def state_53824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
def hex_53824 : String := "404142430505434405424340080508434008050606420508414205430505424344054005050505"
theorem cover_53824 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53824 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_53824)
  decide +kernel
#print axioms cover_53824

def state_53872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 10)))
def hex_53872 : String := "44054344054041420543090705054405400705"
theorem cover_53872 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53872 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_53872)
  decide +kernel
#print axioms cover_53872

def state_53892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 20) else (if j.val < 3 then 21 else (if j.val < 4 then 24 else 20)))
def hex_53892 : String := "4342054041440543090605054205400805"
theorem cover_53892 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53892 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_53892)
  decide +kernel
#print axioms cover_53892
end Mub6.Numerical.CircleFullPrototype.Forest
