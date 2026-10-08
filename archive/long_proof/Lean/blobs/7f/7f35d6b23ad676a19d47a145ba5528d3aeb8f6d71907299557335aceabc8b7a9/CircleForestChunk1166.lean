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
def state_1580289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 66) else (if j.val < 3 then 194 else (if j.val < 4 then 105 else 206)))
def hex_1580289 : String := "43404109424409430909094108424409080840410909410842440943080808"
theorem cover_1580289 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580289 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_1580289)
  decide +kernel
#print axioms cover_1580289

def state_1580320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 66) else (if j.val < 3 then 194 else (if j.val < 4 then 105 else 207)))
def hex_1580320 : String := "4340414244434006080606064244430707070741084244430808430508084006410642444308060606"
theorem cover_1580320 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580320 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1580320)
  decide +kernel
#print axioms cover_1580320

def state_1580361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 66) else (if j.val < 3 then 195 else (if j.val < 4 then 105 else 103)))
def hex_1580361 : String := "44094340060806"
theorem cover_1580361 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580361 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1580361)
  decide +kernel
#print axioms cover_1580361

def state_1580371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 67) else (if j.val < 3 then 194 else (if j.val < 4 then 210 else 206)))
def hex_1580371 : String := "4041424409070707414244094340070540090509424406430505440907"
theorem cover_1580371 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580371 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_1580371)
  decide +kernel
#print axioms cover_1580371

def state_1580400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 67) else (if j.val < 3 then 194 else (if j.val < 4 then 211 else 206)))
def hex_1580400 : String := "404142440943070609424409070741424409434009094009090942444309094340070540410907054409430709"
theorem cover_1580400 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580400 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_1580400)
  decide +kernel
#print axioms cover_1580400

def state_1580446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 67) else (if j.val < 3 then 194 else (if j.val < 4 then 210 else 207)))
def hex_1580446 : String := "40074142444305400705054443070707420507"
theorem cover_1580446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580446 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1580446)
  decide +kernel
#print axioms cover_1580446

def state_1580465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 67) else (if j.val < 3 then 194 else (if j.val < 4 then 211 else 207)))
def hex_1580465 : String := "40414244430706060607414244434041424405050607054006410805434006050644430806064244430540070505440707"
theorem cover_1580465 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580465 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_1580465)
  decide +kernel
#print axioms cover_1580465

def state_1580514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 67) else (if j.val < 3 then 195 else (if j.val < 4 then 105 else 103)))
def hex_1580514 : String := "4443090943074006410807"
theorem cover_1580514 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580514 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1580514)
  decide +kernel
#print axioms cover_1580514
end Mub6.Numerical.CircleFullD0.Forest
