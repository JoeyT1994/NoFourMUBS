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
def state_2212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_2212 : String := "41424344054205430505440A4240050A054344430544050543400541060505440A0642430544050543440505440505"
theorem cover_2212 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2212 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_2212)
  decide +kernel
#print axioms cover_2212

def state_2263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_2263 : String := "4142430A0505424344084005084440054341050A050543440A0505"
theorem cover_2263 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2263 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_2263)
  decide +kernel
#print axioms cover_2263

def state_2291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_2291 : String := "424308444105434005080505434441050A0505"
theorem cover_2291 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2291 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_2291)
  decide +kernel
#print axioms cover_2291

def state_2312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 2)))
def hex_2312 : String := "44400A0808"
theorem cover_2312 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2312 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2312)
  decide +kernel
#print axioms cover_2312

def state_2317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 2)))
def hex_2317 : String := "4443404142080A42440A080A414208440A08424443060908440A4308420805404142090542094409054142094409054209440943424409050505430805"
theorem cover_2317 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2317 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_2317)
  decide +kernel
#print axioms cover_2317

def state_2378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
def hex_2378 : String := "430A4442430A050505"
theorem cover_2378 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2378 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2378)
  decide +kernel
#print axioms cover_2378

def state_2388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_2388 : String := "414243440506050542434440054405410542434044050707050540410642090641064243070706440509434405400542060505"
theorem cover_2388 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_2388 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 51) (hex := hex_2388)
  decide +kernel
#print axioms cover_2388
end Mub6.Numerical.CircleFullPrototype.Forest
