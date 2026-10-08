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
def state_1050264 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 9)))
def hex_1050264 : String := "400541050A"
theorem cover_1050264 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050264 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1050264)
  decide +kernel
#print axioms cover_1050264

def state_1050269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
def hex_1050269 : String := "434244400843050A08444008430841420844400843084142084440084308414244400843050A0844DD400843080A0808080808080A"
theorem cover_1050269 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050269 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 21) (count := 53) (hex := hex_1050269)
  decide +kernel
#print axioms cover_1050269

def state_1050325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 4)))
def hex_1050325 : String := "06"
theorem cover_1050325 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050325 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1050325)
  decide +kernel
#print axioms cover_1050325

def state_1050328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 8)))
def hex_1050328 : String := "4307400706"
theorem cover_1050328 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050328 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1050328)
  decide +kernel
#print axioms cover_1050328

def state_1050334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 24 else 8)))
def hex_1050334 : String := "4042064443054107050605"
theorem cover_1050334 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050334 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1050334)
  decide +kernel
#print axioms cover_1050334

def state_1050347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 25 else 8)))
def hex_1050347 : String := "4441060606"
theorem cover_1050347 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050347 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1050347)
  decide +kernel
#print axioms cover_1050347

def state_1050354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 50) else (if j.val < 3 then 31 else (if j.val < 4 then 25 else 16)))
def hex_1050354 : String := "43400706400706"
theorem cover_1050354 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050354 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_1050354)
  decide +kernel
#print axioms cover_1050354

def state_1050361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 51) else (if j.val < 3 then 31 else (if j.val < 4 then 25 else 16)))
def hex_1050361 : String := "43404206444305410A050605404244410606064441434042060A06404206444107DD060643404206444305DD060540420644DD060641060606"
theorem cover_1050361 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050361 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_1050361)
  decide +kernel
#print axioms cover_1050361

def state_1050418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 25 else 17)))
def hex_1050418 : String := "410606"
theorem cover_1050418 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050418 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1050418)
  decide +kernel
#print axioms cover_1050418

def state_1050421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 8)))
def hex_1050421 : String := "06"
theorem cover_1050421 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050421 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1050421)
  decide +kernel
#print axioms cover_1050421

def state_1050422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 9)))
def hex_1050422 : String := "06"
theorem cover_1050422 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050422 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1050422)
  decide +kernel
#print axioms cover_1050422

def state_1050424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 4)))
def hex_1050424 : String := "44414007064043060A0606"
theorem cover_1050424 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050424 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1050424)
  decide +kernel
#print axioms cover_1050424

def state_1050437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 8)))
def hex_1050437 : String := "4043070708"
theorem cover_1050437 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050437 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1050437)
  decide +kernel
#print axioms cover_1050437

def state_1050445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 8)))
def hex_1050445 : String := "4441400706404306060606"
theorem cover_1050445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050445 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1050445)
  decide +kernel
#print axioms cover_1050445

def state_1050456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 26 else 8)))
def hex_1050456 : String := "44414043420707070840434244410606064441404342060808064043420644DD064209080641060642440806440841050A43060641074043060606"
theorem cover_1050456 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050456 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_1050456)
  decide +kernel
#print axioms cover_1050456

def state_1050515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 27 else 8)))
def hex_1050515 : String := "42440907440841050A"
theorem cover_1050515 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050515 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1050515)
  decide +kernel
#print axioms cover_1050515

def state_1050524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 8)))
def hex_1050524 : String := "430608"
theorem cover_1050524 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1050524 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1050524)
  decide +kernel
#print axioms cover_1050524
end Mub6.Numerical.CircleFullD0.Forest
