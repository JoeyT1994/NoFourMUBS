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
def state_1011217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 56) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 45)))
def hex_1011217 : String := "44434142090609414209404409060609434106420906414240444309094306050606420909"
theorem cover_1011217 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011217 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_1011217)
  decide +kernel
#print axioms cover_1011217

def state_1011254 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 45)))
def hex_1011254 : String := "40444308414240440543050506050543410608414240070606424044050A444305090605444306410642090506"
theorem cover_1011254 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011254 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1011254)
  decide +kernel
#print axioms cover_1011254

def state_1011299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 45)))
def hex_1011299 : String := "4240440943090A0940440543054105054409430809"
theorem cover_1011299 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011299 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_1011299)
  decide +kernel
#print axioms cover_1011299

def state_1011322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 45)))
def hex_1011322 : String := "40444341420A400A4443090A0A0A0A430A0A444341424009084044094309090909414208400A08074341420840444306080806420940090941080A"
theorem cover_1011322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011322 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_1011322)
  decide +kernel
#print axioms cover_1011322

def state_1011382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 56) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 45)))
def hex_1011382 : String := "44434142400A444341060541420A050543060A054240054405090541420A400A444305050A0A434142400A4443060A0606420A050A"
theorem cover_1011382 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011382 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_1011382)
  decide +kernel
#print axioms cover_1011382
end Mub6.Numerical.CircleFullD0.Forest
