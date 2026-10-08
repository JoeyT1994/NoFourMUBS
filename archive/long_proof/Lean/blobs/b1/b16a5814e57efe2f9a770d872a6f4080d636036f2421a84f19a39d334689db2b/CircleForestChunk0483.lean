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
def state_277267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 91) else (if j.val < 3 then 36 else (if j.val < 4 then 114 else 35)))
def hex_277267 : String := "4244404106430642D906064041430642D906430642D9060606"
theorem cover_277267 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277267 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_277267)
  decide +kernel
#print axioms cover_277267

def state_277292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 91) else (if j.val < 3 then 36 else (if j.val < 4 then 115 else 35)))
def hex_277292 : String := "42444041074342D944060607410743050540414342D9094207074342D944060642D9440A094143060843064244050806444041060A06400906"
theorem cover_277292 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277292 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 57) (hex := hex_277292)
  decide +kernel
#print axioms cover_277292

def state_277349 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 45) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 35)))
def hex_277349 : String := "41430642080643064244060606"
theorem cover_277349 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277349 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_277349)
  decide +kernel
#print axioms cover_277349

def state_277362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 37 else (if j.val < 4 then 57 else 17)))
def hex_277362 : String := "4440410606064041060606"
theorem cover_277362 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277362 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_277362)
  decide +kernel
#print axioms cover_277362

def state_277373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 17)))
def hex_277373 : String := "410643064244060606"
theorem cover_277373 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277373 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_277373)
  decide +kernel
#print axioms cover_277373

def state_277383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 16)))
def hex_277383 : String := "400707"
theorem cover_277383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277383 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_277383)
  decide +kernel
#print axioms cover_277383

def state_277388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 17)))
def hex_277388 : String := "420707"
theorem cover_277388 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277388 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_277388)
  decide +kernel
#print axioms cover_277388

def state_277392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 36 else (if j.val < 4 then 29 else 17)))
def hex_277392 : String := "4344400707404107434244074041074342D9090A4107434208440708074407400941074306074244070807410743424405084406064207074407400707"
theorem cover_277392 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277392 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 61) (hex := hex_277392)
  decide +kernel
#print axioms cover_277392

def state_277453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 37 else (if j.val < 4 then 29 else 17)))
def hex_277453 : String := "43440740410742434407090709410642430607064407400707"
theorem cover_277453 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277453 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_277453)
  decide +kernel
#print axioms cover_277453

def state_277478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 17)))
def hex_277478 : String := "4107424344074041070505074344060607"
theorem cover_277478 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277478 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_277478)
  decide +kernel
#print axioms cover_277478
end Mub6.Numerical.CircleFullPrototype.Forest
