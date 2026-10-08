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
def state_1335432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
def hex_1335432 : String := "43440740424305074344054140054305070507424344050907434407410A43440509070A44074042084407080A"
theorem cover_1335432 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335432 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_1335432)
  decide +kernel
#print axioms cover_1335432

def state_1335477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
def hex_1335477 : String := "4344074043440741424007434407420A0A074007430A07070743444142070A074142430A0A0A4243440740070A074344064007060744070A44074044070A0A"
theorem cover_1335477 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335477 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_1335477)
  decide +kernel
#print axioms cover_1335477

def state_1335541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
def hex_1335541 : String := "43440540054142054305050544064041420844430505430708420505410A420506"
theorem cover_1335541 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335541 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1335541)
  decide +kernel
#print axioms cover_1335541

def state_1335574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
def hex_1335574 : String := "4344064041074305054143440642070707430506444005054041074405424305400505074144070A44054243050507"
theorem cover_1335574 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335574 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1335574)
  decide +kernel
#print axioms cover_1335574

def state_1335621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_1335621 : String := "41424344064209434406090A0A4344064344060A0A44060A42434406414206430606064406410A06434406414306070644054107440506"
theorem cover_1335621 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335621 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 55) (hex := hex_1335621)
  decide +kernel
#print axioms cover_1335621
end Mub6.Numerical.CircleFullD0.Forest
