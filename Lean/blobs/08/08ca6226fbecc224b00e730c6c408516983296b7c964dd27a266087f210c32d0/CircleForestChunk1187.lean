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
def state_1585370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 53 else 52)))
def hex_1585370 : String := "44434041420A440A0642054443050505050A434041060505400605"
theorem cover_1585370 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585370 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1585370)
  decide +kernel
#print axioms cover_1585370

def state_1585397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 33) else (if j.val < 3 then 97 else (if j.val < 4 then 53 else 52)))
def hex_1585397 : String := "444340414244430806060642444340410605054006054305064443080606410842050840064106424408050843400641060506"
theorem cover_1585397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585397 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_1585397)
  decide +kernel
#print axioms cover_1585397

def state_1585448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 53 else 53)))
def hex_1585448 : String := "400641064243090606"
theorem cover_1585448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585448 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1585448)
  decide +kernel
#print axioms cover_1585448

def state_1585457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 49 else (if j.val < 4 then 26 else 26)))
def hex_1585457 : String := "43444041064243440706064307064108424344080844080808400641064243440806060644400641064244430806060606"
theorem cover_1585457 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585457 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 49) (hex := hex_1585457)
  decide +kernel
#print axioms cover_1585457

def state_1585510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 52)))
def hex_1585510 : String := "414243444007050944404142080707414205444305050505094344070744400741424443070707070707424305440505430707"
theorem cover_1585510 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585510 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_1585510)
  decide +kernel
#print axioms cover_1585510

def state_1585561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 52)))
def hex_1585561 : String := "4142430505434405054440414205444305400705050505054205430505"
theorem cover_1585561 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585561 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 29) (hex := hex_1585561)
  decide +kernel
#print axioms cover_1585561

def state_1585590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 53)))
def hex_1585590 : String := "4041420943070642050741420543050505"
theorem cover_1585590 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585590 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_1585590)
  decide +kernel
#print axioms cover_1585590
end Mub6.Numerical.CircleFullD0.Forest
