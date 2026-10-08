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
def state_158213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 58 else (if j.val < 4 then 42 else 61)))
def hex_158213 : String := "4043410806084341084244400808080808"
theorem cover_158213 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158213 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_158213)
  decide +kernel
#print axioms cover_158213

def state_158230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 59 else (if j.val < 4 then 42 else 30)))
def hex_158230 : String := "444005094006430808"
theorem cover_158230 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158230 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_158230)
  decide +kernel
#print axioms cover_158230

def state_158239 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 29 else (if j.val < 4 then 43 else 30)))
def hex_158239 : String := "4107424440070808440707"
theorem cover_158239 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158239 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_158239)
  decide +kernel
#print axioms cover_158239

def state_158250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 29 else (if j.val < 4 then 21 else 30)))
def hex_158250 : String := "43414244080808424409404341084208080808094108420A08"
theorem cover_158250 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158250 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_158250)
  decide +kernel
#print axioms cover_158250

def state_158275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 29 else (if j.val < 4 then 21 else 31)))
def hex_158275 : String := "404341084208060808"
theorem cover_158275 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158275 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_158275)
  decide +kernel
#print axioms cover_158275

def state_158285 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 28 else (if j.val < 4 then 21 else 15)))
def hex_158285 : String := "444043420A41440A0A0A0A0A40434209410A06090A"
theorem cover_158285 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158285 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_158285)
  decide +kernel
#print axioms cover_158285

def state_158307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 29 else (if j.val < 4 then 21 else 30)))
def hex_158307 : String := "4043414244400543050540064341420A06060A440506424405060541420A0505434142440A404341420A09070A0A09420A050A"
theorem cover_158307 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158307 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_158307)
  decide +kernel
#print axioms cover_158307

def state_158358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 29 else (if j.val < 4 then 21 else 31)))
def hex_158358 : String := "4006434142444043410806080A084440060806420A0641080A"
theorem cover_158358 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158358 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_158358)
  decide +kernel
#print axioms cover_158358

def state_158383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 15)))
def hex_158383 : String := "434142444041050705050942070941420A44404309080608420A444043090A09404341420708070A0A"
theorem cover_158383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158383 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_158383)
  decide +kernel
#print axioms cover_158383

def state_158425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 14)))
def hex_158425 : String := "40430941090509"
theorem cover_158425 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158425 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_158425)
  decide +kernel
#print axioms cover_158425
end Mub6.Numerical.CircleFullPrototype.Forest
