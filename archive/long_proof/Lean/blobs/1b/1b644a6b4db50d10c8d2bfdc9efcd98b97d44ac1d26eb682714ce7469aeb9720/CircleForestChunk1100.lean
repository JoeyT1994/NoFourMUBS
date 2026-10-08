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
def state_1564295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 123) else (if j.val < 3 then 107 else (if j.val < 4 then 85 else 89)))
def hex_1564295 : String := "4044434241400A060606420A0A43424140440A080A4044064306080641404406070606420A0A440643060A"
theorem cover_1564295 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564295 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1564295)
  decide +kernel
#print axioms cover_1564295

def state_1564338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 53 else (if j.val < 4 then 43 else 44)))
def hex_1564338 : String := "41404443420A0A0A4342060806440A094044434205410A0507434241400609054140080A4008440A0A0A4443420A0A0A434209410A0A09"
theorem cover_1564338 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564338 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1564338)
  decide +kernel
#print axioms cover_1564338

def state_1564396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 60) else (if j.val < 3 then 52 else (if j.val < 4 then 42 else 45)))
def hex_1564396 : String := "404442064308060609"
theorem cover_1564396 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564396 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1564396)
  decide +kernel
#print axioms cover_1564396

def state_1564406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 52 else (if j.val < 4 then 42 else 45)))
def hex_1564406 : String := "444243410905054341400844420943070808404405054442054341400507050542054307054106054209434108400844080708"
theorem cover_1564406 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564406 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_1564406)
  decide +kernel
#print axioms cover_1564406

def state_1564457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 61) else (if j.val < 3 then 52 else (if j.val < 4 then 42 else 45)))
def hex_1564457 : String := "44420943410940444205434107050909090909"
theorem cover_1564457 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564457 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_1564457)
  decide +kernel
#print axioms cover_1564457

def state_1564476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 52 else (if j.val < 4 then 43 else 45)))
def hex_1564476 : String := "09"
theorem cover_1564476 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564476 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1564476)
  decide +kernel
#print axioms cover_1564476

def state_1564479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 60) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 45)))
def hex_1564479 : String := "4044424308064307080844424307090707"
theorem cover_1564479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564479 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_1564479)
  decide +kernel
#print axioms cover_1564479

def state_1564499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 106 else (if j.val < 4 then 42 else 90)))
def hex_1564499 : String := "434140084442080707404442080808444243410740054405074108054307410840084408074243070807410840084442050808"
theorem cover_1564499 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564499 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_1564499)
  decide +kernel
#print axioms cover_1564499
end Mub6.Numerical.CircleFullD0.Forest
