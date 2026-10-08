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
def state_281707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 56) else (if j.val < 3 then 35 else (if j.val < 4 then 57 else 47)))
def hex_281707 : String := "444043410742444006064006434106060644074043080607410642060A07D5"
theorem cover_281707 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281707 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_281707)
  decide +kernel
#print axioms cover_281707

def state_281739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 57) else (if j.val < 3 then 17 else (if j.val < 4 then 56 else 47)))
def hex_281739 : String := "420944400841430842090808D5"
theorem cover_281739 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281739 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_281739)
  decide +kernel
#print axioms cover_281739

def state_281753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 57) else (if j.val < 3 then 34 else (if j.val < 4 then 57 else 47)))
def hex_281753 : String := "4440090940414342064406060607414342094409404143090607414309420644060609420644060609"
theorem cover_281753 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281753 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 41) (hex := hex_281753)
  decide +kernel
#print axioms cover_281753

def state_281794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 57) else (if j.val < 3 then 35 else (if j.val < 4 then 57 else 47)))
def hex_281794 : String := "44404143420A0A0A0A414342440540090544054008050505D5"
theorem cover_281794 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281794 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_281794)
  decide +kernel
#print axioms cover_281794

def state_281819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 8 else (if j.val < 4 then 29 else 23)))
def hex_281819 : String := "42440606444006414342060705054041060641434206444006074006410743D506064342440606440A400A4143D506050A"
theorem cover_281819 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281819 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_281819)
  decide +kernel
#print axioms cover_281819

def state_281868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 23)))
def hex_281868 : String := "43420944094043070A43094142094409400743090509420A0A"
theorem cover_281868 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281868 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 25) (hex := hex_281868)
  decide +kernel
#print axioms cover_281868

def state_281894 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 22)))
def hex_281894 : String := "05"
theorem cover_281894 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281894 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_281894)
  decide +kernel
#print axioms cover_281894

def state_281898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 16 else (if j.val < 4 then 28 else 23)))
def hex_281898 : String := "4044054143420944090A4244050844054008050905"
theorem cover_281898 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281898 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_281898)
  decide +kernel
#print axioms cover_281898

def state_281921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 46)))
def hex_281921 : String := "410705"
theorem cover_281921 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281921 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_281921)
  decide +kernel
#print axioms cover_281921

def state_281926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 17 else (if j.val < 4 then 56 else 47)))
def hex_281926 : String := "424440410709050A4407404107430A420A0707"
theorem cover_281926 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281926 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_281926)
  decide +kernel
#print axioms cover_281926
end Mub6.Numerical.CircleFullPrototype.Forest
