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
def state_2573871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 8)))
def hex_2573871 : String := "4243064144400743070A400643064206090643074144074007424307410707074407400742430641070607"
theorem cover_2573871 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573871 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_2573871)
  decide +kernel
#print axioms cover_2573871

def state_2573915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 22 else (if j.val < 4 then 11 else 8)))
def hex_2573915 : String := "430541444305400A054305404205410A440A0A0544434042050705404241050641070742054105054340060540420641444306400642050506064205410505"
theorem cover_2573915 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573915 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_2573915)
  decide +kernel
#print axioms cover_2573915

def state_2573979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 8)))
def hex_2573979 : String := "410707"
theorem cover_2573979 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573979 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2573979)
  decide +kernel
#print axioms cover_2573979

def state_2573983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 8)))
def hex_2573983 : String := "4407424340070540410A440743074240070A07410A440743054205074307400707"
theorem cover_2573983 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573983 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 33) (hex := hex_2573983)
  decide +kernel
#print axioms cover_2573983

def state_2574016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 8)))
def hex_2574016 : String := "440742434007410505404144074307420607440706414407430542054007054407434205074240060540070743074007410707"
theorem cover_2574016 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574016 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_2574016)
  decide +kernel
#print axioms cover_2574016

def state_2574068 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 9)))
def hex_2574068 : String := "42064306414440420608424306094308414408094408060606"
theorem cover_2574068 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574068 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 25) (hex := hex_2574068)
  decide +kernel
#print axioms cover_2574068

def state_2574094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 22 else (if j.val < 4 then 11 else 9)))
def hex_2574094 : String := "430641444305404205410906050606"
theorem cover_2574094 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574094 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_2574094)
  decide +kernel
#print axioms cover_2574094

def state_2574110 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 9)))
def hex_2574110 : String := "41444205404305410706050606"
theorem cover_2574110 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574110 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2574110)
  decide +kernel
#print axioms cover_2574110
end Mub6.Numerical.CircleFullD0.Forest
