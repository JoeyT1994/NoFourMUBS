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
def state_2596186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
def hex_2596186 : String := "424344404243060505424341444206430605060641440505440505434144050544050505400542064306054405054344050505"
theorem cover_2596186 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596186 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_2596186)
  decide +kernel
#print axioms cover_2596186

def state_2596237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
def hex_2596237 : String := "42434440054142060506060543054405400505"
theorem cover_2596237 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596237 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_2596237)
  decide +kernel
#print axioms cover_2596237

def state_2596263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 10)))
def hex_2596263 : String := "414442434006414442070A070A40410706410707434041440A0606414409070A40414405050A41444243070743090707440A07420743060744420A0A06"
theorem cover_2596263 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596263 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_2596263)
  decide +kernel
#print axioms cover_2596263

def state_2596324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 10)))
def hex_2596324 : String := "41444243404144080744080708084309404144080744090708420743440907074442430A4108080A424306074309410706"
theorem cover_2596324 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596324 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 49) (hex := hex_2596324)
  decide +kernel
#print axioms cover_2596324

def state_2596374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 25 else 10)))
def hex_2596374 : String := "4144424340410707410707400507434005414442070507440A07050744424340060A400507430A054206430605"
theorem cover_2596374 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596374 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_2596374)
  decide +kernel
#print axioms cover_2596374

def state_2596419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 25 else 10)))
def hex_2596419 : String := "4144420843404108080808074442084341080A08420707"
theorem cover_2596419 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596419 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2596419)
  decide +kernel
#print axioms cover_2596419
end Mub6.Numerical.CircleFullD0.Forest
