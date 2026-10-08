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
def state_1540885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 10)))
def hex_1540885 : String := "4244084308414208404408080808440843064140424408430641404208440643060806064406430641404244064306414042060606060606060606"
theorem cover_1540885 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540885 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 17) (count := 59) (hex := hex_1540885)
  decide +kernel
#print axioms cover_1540885

def state_1540946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 11)))
def hex_1540946 : String := "40424441074307400A07070707"
theorem cover_1540946 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540946 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1540946)
  decide +kernel
#print axioms cover_1540946

def state_1540963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 22)))
def hex_1540963 : String := "43404206070706"
theorem cover_1540963 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540963 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1540963)
  decide +kernel
#print axioms cover_1540963

def state_1540972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 24 else (if j.val < 4 then 18 else 22)))
def hex_1540972 : String := "424441430A06430A400642440A080A08440A07"
theorem cover_1540972 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540972 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_1540972)
  decide +kernel
#print axioms cover_1540972

def state_1540994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 48 else (if j.val < 4 then 18 else 44)))
def hex_1540994 : String := "43074240444106430706060707"
theorem cover_1540994 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540994 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1540994)
  decide +kernel
#print axioms cover_1540994

def state_1541007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 48 else (if j.val < 4 then 18 else 44)))
def hex_1541007 : String := "4342400A0707424044434142400A0A0A0A41420940060942400509400A0A4341070A410642050A4443080943070940440A07444307410742400A070707"
theorem cover_1541007 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541007 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1541007)
  decide +kernel
#print axioms cover_1541007

def state_1541068 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 48 else (if j.val < 4 then 18 else 45)))
def hex_1541068 : String := "07"
theorem cover_1541068 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541068 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1541068)
  decide +kernel
#print axioms cover_1541068

def state_1541069 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 49 else (if j.val < 4 then 18 else 22)))
def hex_1541069 : String := "4441074307400A0707"
theorem cover_1541069 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541069 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1541069)
  decide +kernel
#print axioms cover_1541069

def state_1541079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 24 else (if j.val < 4 then 19 else 22)))
def hex_1541079 : String := "420644434106400642060A0606"
theorem cover_1541079 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541079 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1541079)
  decide +kernel
#print axioms cover_1541079
end Mub6.Numerical.CircleFullD0.Forest
