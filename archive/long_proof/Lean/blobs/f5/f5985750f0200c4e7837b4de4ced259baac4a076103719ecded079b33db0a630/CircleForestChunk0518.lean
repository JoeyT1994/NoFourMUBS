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
def state_1313033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 23)))
def hex_1313033 : String := "414244434140090540094244090A05094341400A050A41090844094305094244430609430A0809"
theorem cover_1313033 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313033 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1313033)
  decide +kernel
#print axioms cover_1313033

def state_1313073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 23)))
def hex_1313073 : String := "4244430540410509054305404105424443080808050505"
theorem cover_1313073 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313073 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_1313073)
  decide +kernel
#print axioms cover_1313073

def state_1313100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 27) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 46)))
def hex_1313100 : String := "4142444340060509430A4008410509440505420606"
theorem cover_1313100 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313100 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1313100)
  decide +kernel
#print axioms cover_1313100

def state_1313122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 54) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 46)))
def hex_1313122 : String := "424405430540050505"
theorem cover_1313122 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313122 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1313122)
  decide +kernel
#print axioms cover_1313122

def state_1313132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 55) else (if j.val < 3 then 32 else (if j.val < 4 then 50 else 46)))
def hex_1313132 : String := "4443400641050640094142440543050905424406430609064340064105064041424409080906414244430540090507054244430709074409430609"
theorem cover_1313132 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313132 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_1313132)
  decide +kernel
#print axioms cover_1313132

def state_1313191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 55) else (if j.val < 3 then 33 else (if j.val < 4 then 50 else 46)))
def hex_1313191 : String := "444305094305400905"
theorem cover_1313191 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313191 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1313191)
  decide +kernel
#print axioms cover_1313191

def state_1313200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 16 else (if j.val < 4 then 51 else 46)))
def hex_1313200 : String := "400941424443400905094340410509050905424409434008414244090809090909"
theorem cover_1313200 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313200 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 33) (hex := hex_1313200)
  decide +kernel
#print axioms cover_1313200

def state_1313234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 47)))
def hex_1313234 : String := "40414244430A0808050A4142444305400505050542444340070740084142070542070743070844430540410506054305400805"
theorem cover_1313234 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313234 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1313234)
  decide +kernel
#print axioms cover_1313234
end Mub6.Numerical.CircleFullD0.Forest
