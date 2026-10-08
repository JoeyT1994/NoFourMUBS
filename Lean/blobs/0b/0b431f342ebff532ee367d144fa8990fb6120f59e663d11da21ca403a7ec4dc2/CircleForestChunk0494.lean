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
def state_1307298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 23)))
def hex_1307298 : String := "4042090842094441070507"
theorem cover_1307298 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307298 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1307298)
  decide +kernel
#print axioms cover_1307298

def state_1307310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 23)))
def hex_1307310 : String := "4244414340420907420944410708074005420A4441054308050A4308400542060809444143074005424441050805050808"
theorem cover_1307310 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307310 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_1307310)
  decide +kernel
#print axioms cover_1307310

def state_1307363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 44) else (if j.val < 3 then 48 else (if j.val < 4 then 58 else 46)))
def hex_1307363 : String := "40420944414307400742090709094205440509"
theorem cover_1307363 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307363 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_1307363)
  decide +kernel
#print axioms cover_1307363

def state_1307382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 44) else (if j.val < 3 then 48 else (if j.val < 4 then 59 else 46)))
def hex_1307382 : String := "40420A444143400A0A0A434042090842094441430806060806410A094244410A090944414340420A44410A0A0A050A43404209444143050605090506410A09"
theorem cover_1307382 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307382 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_1307382)
  decide +kernel
#print axioms cover_1307382

def state_1307445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 45) else (if j.val < 3 then 48 else (if j.val < 4 then 29 else 46)))
def hex_1307445 : String := "43094042094406084209440609"
theorem cover_1307445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307445 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1307445)
  decide +kernel
#print axioms cover_1307445

def state_1307458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 22) else (if j.val < 3 then 48 else (if j.val < 4 then 29 else 47)))
def hex_1307458 : String := "4143090909"
theorem cover_1307458 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307458 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1307458)
  decide +kernel
#print axioms cover_1307458

def state_1307466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 44) else (if j.val < 3 then 49 else (if j.val < 4 then 58 else 46)))
def hex_1307466 : String := "4042444107080707424441070541070507"
theorem cover_1307466 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307466 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_1307466)
  decide +kernel
#print axioms cover_1307466

def state_1307484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 44) else (if j.val < 3 then 49 else (if j.val < 4 then 59 else 46)))
def hex_1307484 : String := "42444143074005420A074308064107084441070807"
theorem cover_1307484 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307484 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1307484)
  decide +kernel
#print axioms cover_1307484

def state_1307508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 88) else (if j.val < 3 then 98 else (if j.val < 4 then 59 else 92)))
def hex_1307508 : String := "434042444107430540070507074244050707404244410A060A44410706074244410A060A444107064107430706"
theorem cover_1307508 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307508 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_1307508)
  decide +kernel
#print axioms cover_1307508
end Mub6.Numerical.CircleFullD0.Forest
