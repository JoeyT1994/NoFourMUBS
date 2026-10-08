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
def state_1461128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 17)))
def hex_1461128 : String := "424006410606400608"
theorem cover_1461128 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461128 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1461128)
  decide +kernel
#print axioms cover_1461128

def state_1461137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 23 else (if j.val < 4 then 15 else 8)))
def hex_1461137 : String := "400A410808"
theorem cover_1461137 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461137 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1461137)
  decide +kernel
#print axioms cover_1461137

def state_1461142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 9)))
def hex_1461142 : String := "424006410906400608"
theorem cover_1461142 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461142 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1461142)
  decide +kernel
#print axioms cover_1461142

def state_1461153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 4)))
def hex_1461153 : String := "4441400642060640060A06"
theorem cover_1461153 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461153 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1461153)
  decide +kernel
#print axioms cover_1461153

def state_1461164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 4)))
def hex_1461164 : String := "444140054205434441400642060640050A06444140054205434441060606444140054205430644E705050505054005420543050505"
theorem cover_1461164 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461164 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 17) (count := 53) (hex := hex_1461164)
  decide +kernel
#print axioms cover_1461164

def state_1461218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 4)))
def hex_1461218 : String := "06"
theorem cover_1461218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461218 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1461218)
  decide +kernel
#print axioms cover_1461218

def state_1461223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 8)))
def hex_1461223 : String := "06"
theorem cover_1461223 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461223 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1461223)
  decide +kernel
#print axioms cover_1461223

def state_1461225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 30 else 8)))
def hex_1461225 : String := "4441060606"
theorem cover_1461225 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461225 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1461225)
  decide +kernel
#print axioms cover_1461225

def state_1461232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 44) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 16)))
def hex_1461232 : String := "4240064344410606064441424006430644E706400643064442E7080642400543064441E705054006430609410606400608"
theorem cover_1461232 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461232 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_1461232)
  decide +kernel
#print axioms cover_1461232

def state_1461281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 45) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 16)))
def hex_1461281 : String := "424005430644414205090505400608"
theorem cover_1461281 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461281 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1461281)
  decide +kernel
#print axioms cover_1461281

def state_1461296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 17)))
def hex_1461296 : String := "410606"
theorem cover_1461296 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461296 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1461296)
  decide +kernel
#print axioms cover_1461296

def state_1461299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 15 else 8)))
def hex_1461299 : String := "400608"
theorem cover_1461299 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461299 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1461299)
  decide +kernel
#print axioms cover_1461299

def state_1461302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 8)))
def hex_1461302 : String := "42400543064441420508050508"
theorem cover_1461302 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461302 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1461302)
  decide +kernel
#print axioms cover_1461302

def state_1461315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 9)))
def hex_1461315 : String := "06"
theorem cover_1461315 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461315 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1461315)
  decide +kernel
#print axioms cover_1461315

def state_1461318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 4)))
def hex_1461318 : String := "09"
theorem cover_1461318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461318 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1461318)
  decide +kernel
#print axioms cover_1461318

def state_1461320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 4)))
def hex_1461320 : String := "44404209050508"
theorem cover_1461320 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461320 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1461320)
  decide +kernel
#print axioms cover_1461320

def state_1461331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 8)))
def hex_1461331 : String := "09"
theorem cover_1461331 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461331 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1461331)
  decide +kernel
#print axioms cover_1461331

def state_1461333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 22 else (if j.val < 4 then 30 else 8)))
def hex_1461333 : String := "44404209050508"
theorem cover_1461333 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461333 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1461333)
  decide +kernel
#print axioms cover_1461333
end Mub6.Numerical.CircleFullD0.Forest
