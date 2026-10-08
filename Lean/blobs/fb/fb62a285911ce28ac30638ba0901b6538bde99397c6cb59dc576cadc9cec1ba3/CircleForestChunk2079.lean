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
def state_2579436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 206 else 77) else (if j.val < 3 then 189 else (if j.val < 4 then 193 else 74)))
def hex_2579436 : String := "41444342400941070740070742090943420940094109090944434240064107060742094009410707430609"
theorem cover_2579436 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579436 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 43) (hex := hex_2579436)
  decide +kernel
#print axioms cover_2579436

def state_2579479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 207 else 77) else (if j.val < 3 then 189 else (if j.val < 4 then 193 else 74)))
def hex_2579479 : String := "414443420540070542084041070708434205404108440808050844434205400705424041080805404107074107074342054041440A08060542084041080808"
theorem cover_2579479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579479 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 63) (hex := hex_2579479)
  decide +kernel
#print axioms cover_2579479

def state_2579542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 77) else (if j.val < 3 then 94 else (if j.val < 4 then 96 else 75)))
def hex_2579542 : String := "43420640064144050506424006084041440906064108444342054006050806"
theorem cover_2579542 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579542 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_2579542)
  decide +kernel
#print axioms cover_2579542

def state_2579573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 94 else (if j.val < 4 then 97 else 37)))
def hex_2579573 : String := "40410944090941444208434009084009064208434009080844424340090808434041094409094108444208434041080A080808400908420843400908400908"
theorem cover_2579573 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579573 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 63) (hex := hex_2579573)
  decide +kernel
#print axioms cover_2579573

def state_2579639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 76) else (if j.val < 3 then 95 else (if j.val < 4 then 96 else 37)))
def hex_2579639 : String := "44424340410909414407DC4407DC400541094407094340054107070542434009DC09434005DC4005DC"
theorem cover_2579639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579639 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 41) (hex := hex_2579639)
  decide +kernel
#print axioms cover_2579639
end Mub6.Numerical.CircleFullD0.Forest
