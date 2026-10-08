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
def state_998407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 105 else 86)))
def hex_998407 : String := "4142070505"
theorem cover_998407 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998407 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_998407)
  decide +kernel
#print axioms cover_998407

def state_998412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 105 else 87)))
def hex_998412 : String := "4142404443C60743C64142404407430707074044054305420705440743070707440743414207060707404405430505440543054241060505420705"
theorem cover_998412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998412 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_998412)
  decide +kernel
#print axioms cover_998412

def state_998471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 43)))
def hex_998471 : String := "4344074142404306070606074407414207404407060607"
theorem cover_998471 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998471 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_998471)
  decide +kernel
#print axioms cover_998471

def state_998494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 43)))
def hex_998494 : String := "41404306440506064005430544054241050505"
theorem cover_998494 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998494 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_998494)
  decide +kernel
#print axioms cover_998494

def state_998515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 42)))
def hex_998515 : String := "414043440742414043070707074140430544054142080505430707054407420741404407434108070707070707"
theorem cover_998515 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998515 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 45) (hex := hex_998515)
  decide +kernel
#print axioms cover_998515

def state_998560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 42)))
def hex_998560 : String := "4140430544054241404405430505440543050705054344050A440542070505"
theorem cover_998560 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998560 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_998560)
  decide +kernel
#print axioms cover_998560

def state_998597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 72 else (if j.val < 4 then 106 else 86)))
def hex_998597 : String := "414044434108070808084044074342074140440743070707070707"
theorem cover_998597 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998597 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 27) (hex := hex_998597)
  decide +kernel
#print axioms cover_998597

def state_998625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 108) else (if j.val < 3 then 73 else (if j.val < 4 then 106 else 86)))
def hex_998625 : String := "40444341420905054109424044050807054341064240440509060541084208400906444306410607430608"
theorem cover_998625 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998625 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_998625)
  decide +kernel
#print axioms cover_998625
end Mub6.Numerical.CircleFullD0.Forest
