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
def state_1588899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 50 else (if j.val < 4 then 27 else 50)))
def hex_1588899 : String := "414043090943084244090808404342440941094009060942440941094009430909094342060942444109064143090943064009064409410809"
theorem cover_1588899 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588899 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_1588899)
  decide +kernel
#print axioms cover_1588899

def state_1588958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 36) else (if j.val < 3 then 50 else (if j.val < 4 then 27 else 51)))
def hex_1588958 : String := "4342444041094309094108430808404143080843070741084308084409084244404309094309094043410607064308410642440806064409400608"
theorem cover_1588958 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588958 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_1588958)
  decide +kernel
#print axioms cover_1588958

def state_1589017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 36) else (if j.val < 3 then 50 else (if j.val < 4 then 27 else 51)))
def hex_1589017 : String := "43084244080808"
theorem cover_1589017 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589017 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1589017)
  decide +kernel
#print axioms cover_1589017

def state_1589026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 37) else (if j.val < 3 then 50 else (if j.val < 4 then 54 else 51)))
def hex_1589026 : String := "42444140430707430A42440941080509400743064205074140074305420507400705444109400709410707"
theorem cover_1589026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589026 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1589026)
  decide +kernel
#print axioms cover_1589026

def state_1589071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 37) else (if j.val < 3 then 100 else (if j.val < 4 then 55 else 102)))
def hex_1589071 : String := "41404309094342440941094007050942440941094307070940430707434244410909054407074244410909410705440907"
theorem cover_1589071 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589071 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 49) (hex := hex_1589071)
  decide +kernel
#print axioms cover_1589071

def state_1589120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 37) else (if j.val < 3 then 100 else (if j.val < 4 then 55 else 103)))
def hex_1589120 : String := "414007434244050507424441430706070544070640074307420507"
theorem cover_1589120 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589120 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1589120)
  decide +kernel
#print axioms cover_1589120
end Mub6.Numerical.CircleFullD0.Forest
