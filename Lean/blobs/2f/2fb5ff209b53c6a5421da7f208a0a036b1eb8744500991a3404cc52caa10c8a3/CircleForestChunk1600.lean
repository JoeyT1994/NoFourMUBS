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
def state_2257214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 105) else (if j.val < 3 then 43 else (if j.val < 4 then 92 else 53)))
def hex_2257214 : String := "424408400843414244080508080808"
theorem cover_2257214 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257214 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_2257214)
  decide +kernel
#print axioms cover_2257214

def state_2257229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 93 else 53)))
def hex_2257229 : String := "41424408404341420508050543414205440607420508050808"
theorem cover_2257229 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257229 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_2257229)
  decide +kernel
#print axioms cover_2257229

def state_2257254 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 53) else (if j.val < 3 then 21 else (if j.val < 4 then 46 else 26)))
def hex_2257254 : String := "4244080508"
theorem cover_2257254 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257254 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2257254)
  decide +kernel
#print axioms cover_2257254

def state_2257259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 47 else 26)))
def hex_2257259 : String := "4142444008434144080505050544084008434142440805080808420508"
theorem cover_2257259 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257259 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_2257259)
  decide +kernel
#print axioms cover_2257259

def state_2257289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 27)))
def hex_2257289 : String := "434142054440074341420744080707410505050505"
theorem cover_2257289 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257289 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 21) (hex := hex_2257289)
  decide +kernel
#print axioms cover_2257289

def state_2257313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 46 else 27)))
def hex_2257313 : String := "44400543414205440505050505"
theorem cover_2257313 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257313 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2257313)
  decide +kernel
#print axioms cover_2257313

def state_2257331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 104) else (if j.val < 3 then 86 else (if j.val < 4 then 92 else 54)))
def hex_2257331 : String := "444043070543414205444007434106050505050505"
theorem cover_2257331 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257331 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 21) (hex := hex_2257331)
  decide +kernel
#print axioms cover_2257331

def state_2257353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 104) else (if j.val < 3 then 87 else (if j.val < 4 then 92 else 108)))
def hex_2257353 : String := "400843414244064008434106084142050605060808"
theorem cover_2257353 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257353 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 21) (hex := hex_2257353)
  decide +kernel
#print axioms cover_2257353

def state_2257375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 68 else 104) else (if j.val < 3 then 87 else (if j.val < 4 then 92 else 109)))
def hex_2257375 : String := "434142054408070705"
theorem cover_2257375 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257375 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2257375)
  decide +kernel
#print axioms cover_2257375

def state_2257385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 69 else 104) else (if j.val < 3 then 87 else (if j.val < 4 then 184 else 109)))
def hex_2257385 : String := "414244404307054341420544060505050544400843414244064006060608084043414205090705434142444007BE0509420509414205440805054205440805"
theorem cover_2257385 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257385 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_2257385)
  decide +kernel
#print axioms cover_2257385

def state_2257448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 69 else 104) else (if j.val < 3 then 87 else (if j.val < 4 then 185 else 109)))
def hex_2257448 : String := "41420544080505"
theorem cover_2257448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257448 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2257448)
  decide +kernel
#print axioms cover_2257448

def state_2257455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 105) else (if j.val < 3 then 43 else (if j.val < 4 then 92 else 54)))
def hex_2257455 : String := "4205440805"
theorem cover_2257455 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257455 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2257455)
  decide +kernel
#print axioms cover_2257455

def state_2257460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 93 else 54)))
def hex_2257460 : String := "41420544080505"
theorem cover_2257460 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257460 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2257460)
  decide +kernel
#print axioms cover_2257460
end Mub6.Numerical.CircleFullD0.Forest
