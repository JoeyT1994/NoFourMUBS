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
def state_2314022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 4)))
def hex_2314022 : String := "434440094208084042410509094241054305080544400A420808404241440A0644070A0A424144050544084308404208080841050A"
theorem cover_2314022 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314022 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_2314022)
  decide +kernel
#print axioms cover_2314022

def state_2314077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
def hex_2314077 : String := "424443410640064206060643410644060606440A06"
theorem cover_2314077 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314077 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_2314077)
  decide +kernel
#print axioms cover_2314077

def state_2314100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 10)))
def hex_2314100 : String := "4340410A4244070A0A4142444340060506434006410544060606440A0A424443090743400944094309410609400644060644090A40064106420706"
theorem cover_2314100 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314100 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_2314100)
  decide +kernel
#print axioms cover_2314100

def state_2314159 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 11)))
def hex_2314159 : String := "4344400A4142434406060606424344400A43410A09410609400843410808084406080A4008414243080606420808440606"
theorem cover_2314159 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314159 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_2314159)
  decide +kernel
#print axioms cover_2314159

def state_2314208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 5)))
def hex_2314208 : String := "44430A0A0A"
theorem cover_2314208 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314208 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2314208)
  decide +kernel
#print axioms cover_2314208

def state_2314214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
def hex_2314214 : String := "424443404105420505054006410542050543404107444243070605070740064106444206050744430540050507"
theorem cover_2314214 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314214 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_2314214)
  decide +kernel
#print axioms cover_2314214
end Mub6.Numerical.CircleFullD0.Forest
