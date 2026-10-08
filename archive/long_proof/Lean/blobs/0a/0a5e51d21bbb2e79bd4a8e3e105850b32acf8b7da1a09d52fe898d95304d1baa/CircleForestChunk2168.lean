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
def state_2600976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_2600976 : String := "424306440841430508064344410542050541090644414205430505420843050841424305440505094243060843440505440505"
theorem cover_2600976 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2600976 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_2600976)
  decide +kernel
#print axioms cover_2600976

def state_2601028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_2601028 : String := "424344054005440505440A404305440505434405050A434407400907444042050707404243050A09420A43070A"
theorem cover_2601028 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2601028 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 45) (hex := hex_2601028)
  decide +kernel
#print axioms cover_2601028

def state_2601074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
def hex_2601074 : String := "434440054105054006414405054405064440080A404143050A430608410A43060A"
theorem cover_2601074 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2601074 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 33) (hex := hex_2601074)
  decide +kernel
#print axioms cover_2601074

def state_2601108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
def hex_2601108 : String := "444041054205054107420507404142050942064405054142440505074206440505"
theorem cover_2601108 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2601108 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 33) (hex := hex_2601108)
  decide +kernel
#print axioms cover_2601108

def state_2601141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 2)))
def hex_2601141 : String := "44404142054305050841420A0742430505430505404142430505054205054142050505"
theorem cover_2601141 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2601141 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 35) (hex := hex_2601141)
  decide +kernel
#print axioms cover_2601141

def state_2601177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_2601177 : String := "41424344064007060943440908094243440607440607434406410607440909"
theorem cover_2601177 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2601177 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 31) (hex := hex_2601177)
  decide +kernel
#print axioms cover_2601177
end Mub6.Numerical.CircleFullD0.Forest
