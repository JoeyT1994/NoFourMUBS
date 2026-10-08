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
def state_1037611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 31)))
def hex_1037611 : String := "41424308080708"
theorem cover_1037611 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037611 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1037611)
  decide +kernel
#print axioms cover_1037611

def state_1037619 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 52) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 31)))
def hex_1037619 : String := "424344400841424308080908404142080708414243440984444008410A0884430707420808440A400A41420A43440A05050A43094440074142060609400707"
theorem cover_1037619 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037619 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_1037619)
  decide +kernel
#print axioms cover_1037619

def state_1037682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 53) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 31)))
def hex_1037682 : String := "4243080809"
theorem cover_1037682 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037682 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1037682)
  decide +kernel
#print axioms cover_1037682

def state_1037687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 15)))
def hex_1037687 : String := "43094409400709"
theorem cover_1037687 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037687 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1037687)
  decide +kernel
#print axioms cover_1037687

def state_1037694 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 15)))
def hex_1037694 : String := "4243080809"
theorem cover_1037694 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037694 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1037694)
  decide +kernel
#print axioms cover_1037694

def state_1037700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 6)))
def hex_1037700 : String := "400A410A0A"
theorem cover_1037700 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037700 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1037700)
  decide +kernel
#print axioms cover_1037700

def state_1037706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
def hex_1037706 : String := "41420A43440A05050A"
theorem cover_1037706 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037706 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1037706)
  decide +kernel
#print axioms cover_1037706

def state_1037717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 7)))
def hex_1037717 : String := "4344400A41060A4041090A4109420943440A400909090A"
theorem cover_1037717 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037717 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_1037717)
  decide +kernel
#print axioms cover_1037717

def state_1037742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 14)))
def hex_1037742 : String := "40410A0A4142434406400A06064344064041440A050A41060606420A0A"
theorem cover_1037742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037742 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1037742)
  decide +kernel
#print axioms cover_1037742

def state_1037772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 15)))
def hex_1037772 : String := "4105420505"
theorem cover_1037772 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037772 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1037772)
  decide +kernel
#print axioms cover_1037772

def state_1037777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 15)))
def hex_1037777 : String := "41424344400541050605054344400541054205050505424344400A41060640054105420505054344400A41420643070542060A4005410542050505"
theorem cover_1037777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037777 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_1037777)
  decide +kernel
#print axioms cover_1037777

def state_1037836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 7)))
def hex_1037836 : String := "440A05"
theorem cover_1037836 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037836 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1037836)
  decide +kernel
#print axioms cover_1037836

def state_1037840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 7)))
def hex_1037840 : String := "43440A400A420A410A0A0A"
theorem cover_1037840 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037840 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1037840)
  decide +kernel
#print axioms cover_1037840
end Mub6.Numerical.CircleFullD0.Forest
