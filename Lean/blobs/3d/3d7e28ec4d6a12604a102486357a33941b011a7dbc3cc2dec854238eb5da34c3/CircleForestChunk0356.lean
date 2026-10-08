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
def state_1022825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 102 else 103)))
def hex_1022825 : String := "4205414007054043074407074305440505"
theorem cover_1022825 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022825 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_1022825)
  decide +kernel
#print axioms cover_1022825

def state_1022845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 124) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 102)))
def hex_1022845 : String := "40444305420541054008050505"
theorem cover_1022845 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022845 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1022845)
  decide +kernel
#print axioms cover_1022845

def state_1022858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 125) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 102)))
def hex_1022858 : String := "40444342054140440505054044060605424105064140444305084305050540064443050A05434205410505420541054006054443050505"
theorem cover_1022858 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022858 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1022858)
  decide +kernel
#print axioms cover_1022858

def state_1022914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 124) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 102)))
def hex_1022914 : String := "404443424107400705074241074044070744430508050743074208074443420506420506430508"
theorem cover_1022914 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022914 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1022914)
  decide +kernel
#print axioms cover_1022914

def state_1022958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 250) else (if j.val < 3 then 150 else (if j.val < 4 then 206 else 204)))
def hex_1022958 : String := "4044070744430542050705"
theorem cover_1022958 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022958 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1022958)
  decide +kernel
#print axioms cover_1022958

def state_1022969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 251) else (if j.val < 3 then 150 else (if j.val < 4 then 206 else 204)))
def hex_1022969 : String := "404443084241400644050506074307424107060744434205084241054044050505414007440505400844084305054342050742054105400705"
theorem cover_1022969 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022969 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_1022969)
  decide +kernel
#print axioms cover_1022969

def state_1023026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 125) else (if j.val < 3 then 151 else (if j.val < 4 then 206 else 204)))
def hex_1023026 : String := "41074007444307424107080707"
theorem cover_1023026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023026 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1023026)
  decide +kernel
#print axioms cover_1023026

def state_1023041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 250) else (if j.val < 3 then 150 else (if j.val < 4 then 207 else 204)))
def hex_1023041 : String := "4044434241070A070A43070A44434205410740074405054208414007050A4342050708"
theorem cover_1023041 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023041 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1023041)
  decide +kernel
#print axioms cover_1023041
end Mub6.Numerical.CircleFullD0.Forest
