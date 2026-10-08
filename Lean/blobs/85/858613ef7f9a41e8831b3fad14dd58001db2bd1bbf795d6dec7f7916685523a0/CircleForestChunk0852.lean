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
def state_1505161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 42 else (if j.val < 4 then 52 else 30)))
def hex_1505161 : String := "4440410A06410A4342440605054244400641430642090606400A410A43050A0A05"
theorem cover_1505161 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505161 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 33) (hex := hex_1505161)
  decide +kernel
#print axioms cover_1505161

def state_1505196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 43) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 60)))
def hex_1505196 : String := "4142080A420909"
theorem cover_1505196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505196 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_1505196)
  decide +kernel
#print axioms cover_1505196

def state_1505203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 43) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 60)))
def hex_1505203 : String := "41424344400A410A430A4208090A08430A0A424344400941430909094041080941430A0843420909420809444008410809084344060A44094009410909"
theorem cover_1505203 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505203 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1505203)
  decide +kernel
#print axioms cover_1505203

def state_1505264 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 61)))
def hex_1505264 : String := "400A410A42430A080A"
theorem cover_1505264 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505264 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1505264)
  decide +kernel
#print axioms cover_1505264

def state_1505273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 43 else (if j.val < 4 then 26 else 30)))
def hex_1505273 : String := "430544400A410A424306090605"
theorem cover_1505273 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505273 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1505273)
  decide +kernel
#print axioms cover_1505273

def state_1505286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 31)))
def hex_1505286 : String := "05"
theorem cover_1505286 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505286 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1505286)
  decide +kernel
#print axioms cover_1505286

def state_1505287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 15)))
def hex_1505287 : String := "444041084208430908414208430A08424344400841084208430908080843444009410A4209070A444008410809084008410842080A"
theorem cover_1505287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505287 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_1505287)
  decide +kernel
#print axioms cover_1505287

def state_1505341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 20) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 15)))
def hex_1505341 : String := "424306064344404243050A0542060A05444042064106430A060606"
theorem cover_1505341 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505341 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1505341)
  decide +kernel
#print axioms cover_1505341
end Mub6.Numerical.CircleFullD0.Forest
