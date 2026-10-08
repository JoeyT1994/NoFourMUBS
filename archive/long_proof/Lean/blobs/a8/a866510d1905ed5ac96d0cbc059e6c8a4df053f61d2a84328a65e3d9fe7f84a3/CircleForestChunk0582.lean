import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1328536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 23)))
def hex_1328536 : String := "43094241444043094241440909090906404309424144400807074409400943064207070943064241070607440640090641440940090506"
theorem cover_1328536 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328536 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 55) (hex := hex_1328536)
  decide +kernel
#print axioms cover_1328536

def state_1328591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 11)))
def hex_1328591 : String := "09"
theorem cover_1328591 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328591 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1328591)
  decide +kernel
#print axioms cover_1328591

def state_1328592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 11)))
def hex_1328592 : String := "4240090606"
theorem cover_1328592 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328592 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1328592)
  decide +kernel
#print axioms cover_1328592

def state_1328598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 10)))
def hex_1328598 : String := "414240074344064207060740070607"
theorem cover_1328598 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328598 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1328598)
  decide +kernel
#print axioms cover_1328598

def state_1328617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 22 else 11)))
def hex_1328617 : String := "444241400743090705094241404443080708444342410809094207084342080808404405430505444309054342050905414008440943080809"
theorem cover_1328617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328617 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_1328617)
  decide +kernel
#print axioms cover_1328617

def state_1328674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 23 else 11)))
def hex_1328674 : String := "440742414006434407060605410807"
theorem cover_1328674 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328674 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1328674)
  decide +kernel
#print axioms cover_1328674

def state_1328692 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 28 else (if j.val < 4 then 22 else 22)))
def hex_1328692 : String := "414043444207064241404407094443060743094207094007060944074207074344064206064407420A0A40434405090506"
theorem cover_1328692 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328692 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_1328692)
  decide +kernel
#print axioms cover_1328692

def state_1328741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 29 else (if j.val < 4 then 22 else 22)))
def hex_1328741 : String := "41404309440709430644060A400906"
theorem cover_1328741 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328741 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1328741)
  decide +kernel
#print axioms cover_1328741
end Mub6.Numerical.CircleFullD0.Forest
