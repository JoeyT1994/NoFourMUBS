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
def state_1035643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 49) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 60)))
def hex_1035643 : String := "414243080643080842434406404108424305060806064309440606"
theorem cover_1035643 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035643 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_1035643)
  decide +kernel
#print axioms cover_1035643

def state_1035670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 49) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 61)))
def hex_1035670 : String := "40414243080807424344400741084243070707074440074108424308060740070807410842430808430808"
theorem cover_1035670 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035670 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_1035670)
  decide +kernel
#print axioms cover_1035670

def state_1035713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 49) else (if j.val < 3 then 53 else (if j.val < 4 then 18 else 30)))
def hex_1035713 : String := "43074440074142430708070907"
theorem cover_1035713 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035713 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1035713)
  decide +kernel
#print axioms cover_1035713

def state_1035726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 31)))
def hex_1035726 : String := "40074108424344400708084440410842430707070840070807"
theorem cover_1035726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035726 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 25) (hex := hex_1035726)
  decide +kernel
#print axioms cover_1035726

def state_1035753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 24) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 30)))
def hex_1035753 : String := "4142434441054005420505050507424344400741420A070A40054105070507"
theorem cover_1035753 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035753 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_1035753)
  decide +kernel
#print axioms cover_1035753

def state_1035785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 48) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 30)))
def hex_1035785 : String := "4243444041084209430805060844050543444007080805"
theorem cover_1035785 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035785 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1035785)
  decide +kernel
#print axioms cover_1035785

def state_1035809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 49) else (if j.val < 3 then 52 else (if j.val < 4 then 19 else 30)))
def hex_1035809 : String := "4344404142434406400906064344060706420A434406070606404142090542434440410507060905074108424308064308064406400506"
theorem cover_1035809 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035809 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1035809)
  decide +kernel
#print axioms cover_1035809

def state_1035864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 49) else (if j.val < 3 then 53 else (if j.val < 4 then 19 else 30)))
def hex_1035864 : String := "43444007414206064206064007410842430706074406400506"
theorem cover_1035864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035864 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1035864)
  decide +kernel
#print axioms cover_1035864
end Mub6.Numerical.CircleFullD0.Forest
