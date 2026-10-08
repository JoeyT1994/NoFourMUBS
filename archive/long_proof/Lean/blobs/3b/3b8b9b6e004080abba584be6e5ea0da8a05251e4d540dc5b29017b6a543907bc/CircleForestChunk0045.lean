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
def state_948288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 84) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 54)))
def hex_948288 : String := "444340050A0505"
theorem cover_948288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948288 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_948288)
  decide +kernel
#print axioms cover_948288

def state_948299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 85) else (if j.val < 3 then 206 else (if j.val < 4 then 70 else 108)))
def hex_948299 : String := "41094443400942094109444340060707090509"
theorem cover_948299 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948299 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_948299)
  decide +kernel
#print axioms cover_948299

def state_948318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 85) else (if j.val < 3 then 207 else (if j.val < 4 then 70 else 108)))
def hex_948318 : String := "414443060505444340064241064443064006070606404205410506424105094105444340064207070505430605"
theorem cover_948318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948318 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 45) (hex := hex_948318)
  decide +kernel
#print axioms cover_948318

def state_948363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 85) else (if j.val < 3 then 103 else (if j.val < 4 then 70 else 108)))
def hex_948363 : String := "424144070544434042074107070707430A05410A44434042410A44070A0A0A404207410A440707070A"
theorem cover_948363 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948363 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_948363)
  decide +kernel
#print axioms cover_948363

def state_948404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 85) else (if j.val < 3 then 103 else (if j.val < 4 then 71 else 108)))
def hex_948404 : String := "400542054105440705"
theorem cover_948404 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948404 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_948404)
  decide +kernel
#print axioms cover_948404

def state_948413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 85) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 109)))
def hex_948413 : String := "4340090A05"
theorem cover_948413 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948413 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_948413)
  decide +kernel
#print axioms cover_948413

def state_948418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 55)))
def hex_948418 : String := "430609"
theorem cover_948418 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948418 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_948418)
  decide +kernel
#print axioms cover_948418

def state_948425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 43) else (if j.val < 3 then 102 else (if j.val < 4 then 34 else 54)))
def hex_948425 : String := "414443400642410606064042090642094144430609064443060A06064443400642414405060505400A420A41440A4306090A43064006420906"
theorem cover_948425 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948425 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_948425)
  decide +kernel
#print axioms cover_948425

def state_948482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 43) else (if j.val < 3 then 103 else (if j.val < 4 then 34 else 54)))
def hex_948482 : String := "41444306400642410606060644430640064241440A060A41060506"
theorem cover_948482 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948482 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_948482)
  decide +kernel
#print axioms cover_948482
end Mub6.Numerical.CircleFullD0.Forest
