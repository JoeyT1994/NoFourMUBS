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
def state_1018029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 11)))
def hex_1018029 : String := "434044050A44424305414005070505424341400544050A050A05400A44420941430509050A"
theorem cover_1018029 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018029 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_1018029)
  decide +kernel
#print axioms cover_1018029

def state_1018069 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 10)))
def hex_1018069 : String := "40084244054143054008050508"
theorem cover_1018069 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018069 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1018069)
  decide +kernel
#print axioms cover_1018069

def state_1018083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 10)))
def hex_1018083 : String := "4244080808"
theorem cover_1018083 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018083 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1018083)
  decide +kernel
#print axioms cover_1018083

def state_1018090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 20)))
def hex_1018090 : String := "410908"
theorem cover_1018090 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018090 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1018090)
  decide +kernel
#print axioms cover_1018090

def state_1018095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 30 else 21)))
def hex_1018095 : String := "40424408410708084244094109050A"
theorem cover_1018095 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018095 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1018095)
  decide +kernel
#print axioms cover_1018095

def state_1018110 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 21)))
def hex_1018110 : String := "4042440841070844080742440941094340424408080842440941090509404244084109080842440941094340424405080842440541090505820909"
theorem cover_1018110 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018110 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 59) (hex := hex_1018110)
  decide +kernel
#print axioms cover_1018110

def state_1018169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 21)))
def hex_1018169 : String := "4305400842440541430540084244054143058205050508"
theorem cover_1018169 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018169 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 23) (hex := hex_1018169)
  decide +kernel
#print axioms cover_1018169

def state_1018192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 15 else 10)))
def hex_1018192 : String := "4408410908"
theorem cover_1018192 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018192 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1018192)
  decide +kernel
#print axioms cover_1018192

def state_1018197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 10)))
def hex_1018197 : String := "4305400808"
theorem cover_1018197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018197 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1018197)
  decide +kernel
#print axioms cover_1018197

def state_1018204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 11)))
def hex_1018204 : String := "40424441070507074244414305400706054106054441060505"
theorem cover_1018204 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018204 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1018204)
  decide +kernel
#print axioms cover_1018204

def state_1018230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 11)))
def hex_1018230 : String := "424441074307070707"
theorem cover_1018230 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018230 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1018230)
  decide +kernel
#print axioms cover_1018230

def state_1018243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 30 else 22)))
def hex_1018243 : String := "40074244410743054042440505054205050707"
theorem cover_1018243 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018243 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 19) (hex := hex_1018243)
  decide +kernel
#print axioms cover_1018243

def state_1018263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 22)))
def hex_1018263 : String := "07"
theorem cover_1018263 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018263 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1018263)
  decide +kernel
#print axioms cover_1018263

def state_1018267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 44 else (if j.val < 4 then 31 else 44)))
def hex_1018267 : String := "07"
theorem cover_1018267 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018267 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1018267)
  decide +kernel
#print axioms cover_1018267
end Mub6.Numerical.CircleFullD0.Forest
