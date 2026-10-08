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
def state_2247400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 51) else (if j.val < 3 then 39 else (if j.val < 4 then 94 else 49)))
def hex_2247400 : String := "444106424043440641060506434441064207060944410642050609064109420940434406090643444106420906094441060809"
theorem cover_2247400 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247400 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_2247400)
  decide +kernel
#print axioms cover_2247400

def state_2247451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 51) else (if j.val < 3 then 39 else (if j.val < 4 then 95 else 49)))
def hex_2247451 : String := "44410642400543440605050641094205400509"
theorem cover_2247451 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247451 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_2247451)
  decide +kernel
#print axioms cover_2247451

def state_2247471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 39 else (if j.val < 4 then 94 else 49)))
def hex_2247471 : String := "4441094240434441094209400A0909444109420940080909094043444106424006070641074209084441060841064209060709"
theorem cover_2247471 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247471 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_2247471)
  decide +kernel
#print axioms cover_2247471

def state_2247522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 39 else (if j.val < 4 then 95 else 49)))
def hex_2247522 : String := "444109424043444109420508094441060505094043440641060844064106080709"
theorem cover_2247522 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247522 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_2247522)
  decide +kernel
#print axioms cover_2247522

def state_2247556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 23 else 24)))
def hex_2247556 : String := "434441080A08444108404208434441080A08444108404208CF4206CF090809"
theorem cover_2247556 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247556 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 31) (hex := hex_2247556)
  decide +kernel
#print axioms cover_2247556

def state_2247588 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 24)))
def hex_2247588 : String := "44410540424405430541090A050541074042094344050944070909"
theorem cover_2247588 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247588 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_2247588)
  decide +kernel
#print axioms cover_2247588
end Mub6.Numerical.CircleFullD0.Forest
