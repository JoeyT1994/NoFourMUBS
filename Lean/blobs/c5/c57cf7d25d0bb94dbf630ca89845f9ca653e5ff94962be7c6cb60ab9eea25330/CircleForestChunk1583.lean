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
def state_2253218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 90 else 55)))
def hex_2253218 : String := "414244054043054105050505424440074305090705"
theorem cover_2253218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253218 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_2253218)
  decide +kernel
#print axioms cover_2253218

def state_2253239 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 91 else 55)))
def hex_2253239 : String := "414244064043414208050741420809420709434105420805410842080944050942444009430941090940074307414207090709"
theorem cover_2253239 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253239 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_2253239)
  decide +kernel
#print axioms cover_2253239

def state_2253290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 45 else (if j.val < 4 then 22 else 27)))
def hex_2253290 : String := "4305440509"
theorem cover_2253290 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253290 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2253290)
  decide +kernel
#print axioms cover_2253290

def state_2253296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 50) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 27)))
def hex_2253296 : String := "4243054405404105050505"
theorem cover_2253296 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253296 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_2253296)
  decide +kernel
#print axioms cover_2253296

def state_2253309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 27)))
def hex_2253309 : String := "05"
theorem cover_2253309 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253309 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2253309)
  decide +kernel
#print axioms cover_2253309

def state_2253311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 54)))
def hex_2253311 : String := "400643054105424405404305410542BE050505"
theorem cover_2253311 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253311 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_2253311)
  decide +kernel
#print axioms cover_2253311

def state_2253332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 90 else 55)))
def hex_2253332 : String := "410542444043054105090540430541420705074305410542070505"
theorem cover_2253332 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253332 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_2253332)
  decide +kernel
#print axioms cover_2253332

def state_2253360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 102) else (if j.val < 3 then 44 else (if j.val < 4 then 91 else 55)))
def hex_2253360 : String := "42444043054105420A0543050A4043080A0805"
theorem cover_2253360 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253360 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_2253360)
  decide +kernel
#print axioms cover_2253360

def state_2253382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 68 else 103) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 110)))
def hex_2253382 : String := "434142440540070505094142440640090A094244090909"
theorem cover_2253382 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253382 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 23) (hex := hex_2253382)
  decide +kernel
#print axioms cover_2253382

def state_2253405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 69 else 103) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 110)))
def hex_2253405 : String := "434105424440060540094305410509054142440A0A054244400943410509410A09404309410909434108090A09"
theorem cover_2253405 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253405 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_2253405)
  decide +kernel
#print axioms cover_2253405
end Mub6.Numerical.CircleFullD0.Forest
