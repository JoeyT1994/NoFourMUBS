import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1324773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 13)))
def hex_1324773 : String := "41424440434106074142050A420A0A43060A4043060505444043064106440A060606424407404307420707074440430744070707404306404106070606"
theorem cover_1324773 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324773 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 61) (hex := hex_1324773)
  decide +kernel
#print axioms cover_1324773

def state_1324834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 13)))
def hex_1324834 : String := "4142440A05440A404306050542440A400905440A40434043410607410808434106074106070A0A"
theorem cover_1324834 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324834 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_1324834)
  decide +kernel
#print axioms cover_1324834

def state_1324873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
def hex_1324873 : String := "41420540430605064240094305054043444106090644414205430605090543444106424009050605444105420540090505"
theorem cover_1324873 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324873 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_1324873)
  decide +kernel
#print axioms cover_1324873

def state_1324922 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 3)))
def hex_1324922 : String := "44414243440A050543440A40410708050A4243440A4009050943440A404108090A0A410542054340090505"
theorem cover_1324922 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324922 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_1324922)
  decide +kernel
#print axioms cover_1324922

def state_1324968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 6)))
def hex_1324968 : String := "4440424309080809404243064106080606"
theorem cover_1324968 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324968 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_1324968)
  decide +kernel
#print axioms cover_1324968

def state_1324986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 12)))
def hex_1324986 : String := "404243440541424005090505440808054243440941060A0A09"
theorem cover_1324986 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324986 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1324986)
  decide +kernel
#print axioms cover_1324986
end Mub6.Numerical.CircleFullD0.Forest
