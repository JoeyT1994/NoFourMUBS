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
def state_2252253 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 93 else 54)))
def hex_2252253 : String := "414244404341064205060A0A400A0A44060A42444005434142050A0505054440430608434106424406050641060840434142050A050543410A42050A05"
theorem cover_2252253 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252253 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_2252253)
  decide +kernel
#print axioms cover_2252253

def state_2252316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 102) else (if j.val < 3 then 43 else (if j.val < 4 then 92 else 54)))
def hex_2252316 : String := "4244404341064208060A070844060A"
theorem cover_2252316 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252316 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_2252316)
  decide +kernel
#print axioms cover_2252316

def state_2252333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 103) else (if j.val < 3 then 86 else (if j.val < 4 then 92 else 108)))
def hex_2252333 : String := "40434142094406404306090942444043410909090909BE4142094406094205444043060543BE0A400543BE054341094209BE41094209440709"
theorem cover_2252333 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252333 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_2252333)
  decide +kernel
#print axioms cover_2252333

def state_2252390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 103) else (if j.val < 3 then 86 else (if j.val < 4 then 92 else 109)))
def hex_2252390 : String := "404341084205BE410905430809"
theorem cover_2252390 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252390 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_2252390)
  decide +kernel
#print axioms cover_2252390

def state_2252403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 103) else (if j.val < 3 then 87 else (if j.val < 4 then 92 else 54)))
def hex_2252403 : String := "4440434106BE41064244064043BE0A0706434106BE0740434142440A080ABE410A4244400A0A0A440A0A434107BE4107420A07"
theorem cover_2252403 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252403 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_2252403)
  decide +kernel
#print axioms cover_2252403

def state_2252454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 93 else 54)))
def hex_2252454 : String := "41424407090742444043410A05054341074205070A4005094440434107420A0607074043410A42050A0A07"
theorem cover_2252454 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252454 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_2252454)
  decide +kernel
#print axioms cover_2252454
end Mub6.Numerical.CircleFullD0.Forest
