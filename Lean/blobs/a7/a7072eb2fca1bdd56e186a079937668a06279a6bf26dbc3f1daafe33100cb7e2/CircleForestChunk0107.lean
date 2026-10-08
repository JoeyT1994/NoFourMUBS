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
def state_46905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 37) else (if j.val < 3 then 41 else (if j.val < 4 then 47 else 20)))
def hex_46905 : String := "44430740410744074207050743404105420805084005410542444307404105420705070505"
theorem cover_46905 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46905 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 37) (hex := hex_46905)
  decide +kernel
#print axioms cover_46905

def state_46942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 18) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 20)))
def hex_46942 : String := "41420706424407084407430740410642080606"
theorem cover_46942 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46942 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_46942)
  decide +kernel
#print axioms cover_46942

def state_46962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 20)))
def hex_46962 : String := "4041424443064006050644074308400A41084206084206440A0A414244050844070842054405430940414205090505"
theorem cover_46962 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46962 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_46962)
  decide +kernel
#print axioms cover_46962

def state_47012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 40 else (if j.val < 4 then 47 else 20)))
def hex_47012 : String := "4443404142060706410705404142094407904205440506414205070543400641420608064041420690064142444306090690420690"
theorem cover_47012 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47012 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_47012)
  decide +kernel
#print axioms cover_47012

def state_47066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 41 else (if j.val < 4 then 47 else 40)))
def hex_47066 : String := "4340410744070A074041440790444243070807904107440790"
theorem cover_47066 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47066 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_47066)
  decide +kernel
#print axioms cover_47066

def state_47091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 41 else (if j.val < 4 then 47 else 41)))
def hex_47091 : String := "4340414244430840414206050A410842060808440A0542060A4142084407084244434006074041420607060708440A0990"
theorem cover_47091 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47091 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_47091)
  decide +kernel
#print axioms cover_47091
end Mub6.Numerical.CircleFullPrototype.Forest
