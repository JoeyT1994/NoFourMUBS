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
def state_766220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 2)))
def hex_766220 : String := "444140060A06414440424307070742430A410744064240070A07430841050640084243084441074208070808444006424308414406420806060608"
theorem cover_766220 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766220 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_766220)
  decide +kernel
#print axioms cover_766220

def state_766281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_766281 : String := "4243094408084344094043094108080908"
theorem cover_766281 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766281 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_766281)
  decide +kernel
#print axioms cover_766281

def state_766298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_766298 : String := "42434440414205090541084205430505094408404108420808084344090944404107444243050707420909410844420843080708400908"
theorem cover_766298 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766298 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_766298)
  decide +kernel
#print axioms cover_766298

def state_766353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_766353 : String := "41424344080844420644400806060643080942434408410842070808434441094309090944410844080808"
theorem cover_766353 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766353 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_766353)
  decide +kernel
#print axioms cover_766353

def state_766399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_766399 : String := "404142430944094041070907434406400607444006094041054209054142070509420943094409404209060941420943094409414207080909"
theorem cover_766399 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766399 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_766399)
  decide +kernel
#print axioms cover_766399
end Mub6.Numerical.CircleFullPrototype.Forest
