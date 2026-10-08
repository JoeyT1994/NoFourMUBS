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
def state_2338087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 2)))
def hex_2338087 : String := "444041424344400806084406404108424308060806084243440708440640424106060806084142060642064308064008410808"
theorem cover_2338087 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2338087 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_2338087)
  decide +kernel
#print axioms cover_2338087

def state_2338138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 2)))
def hex_2338138 : String := "44404106420606064041420743080742054308054142434406070643080642430A05430806"
theorem cover_2338138 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2338138 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 37) (hex := hex_2338138)
  decide +kernel
#print axioms cover_2338138

def state_2338175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
def hex_2338175 : String := "4344080844064008410808"
theorem cover_2338175 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2338175 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_2338175)
  decide +kernel
#print axioms cover_2338175

def state_2338186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_2338186 : String := "4243444042414307440640080643070608420641060608440640424344410505050543080542430A05430805430844094008430809"
theorem cover_2338186 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2338186 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_2338186)
  decide +kernel
#print axioms cover_2338186

def state_2338239 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_2338239 : String := "4142434406084406410642060643084406410643080642430A44064206430A064344060A4409430809"
theorem cover_2338239 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2338239 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 41) (hex := hex_2338239)
  decide +kernel
#print axioms cover_2338239

def state_2338284 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 3)))
def hex_2338284 : String := "444041424405054408054205084142080808404142054344050505424344054006050543060541424344050505074243080508"
theorem cover_2338284 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2338284 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_2338284)
  decide +kernel
#print axioms cover_2338284
end Mub6.Numerical.CircleFullD0.Forest
