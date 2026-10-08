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
def state_157963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 15)))
def hex_157963 : String := "4440414243440940060744400509400641424307444006070606064309440506424307440506054109074006414207430644090607"
theorem cover_157963 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157963 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 53) (hex := hex_157963)
  decide +kernel
#print axioms cover_157963

def state_158022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 56) else (if j.val < 3 then 28 else (if j.val < 4 then 42 else 30)))
def hex_158022 : String := "4244404341050A0906054440434241074440070608410744070707434206080808"
theorem cover_158022 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158022 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_158022)
  decide +kernel
#print axioms cover_158022

def state_158056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 56 else (if j.val < 4 then 42 else 30)))
def hex_158056 : String := "0A"
theorem cover_158056 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158056 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_158056)
  decide +kernel
#print axioms cover_158056

def state_158057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 42 else 30)))
def hex_158057 : String := "4440434142440A0A444043820743820A4043080708420A4440050A4043820A0A0A4341420A4406080A0A40434142080842094440060A064108094341080A08"
theorem cover_158057 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158057 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_158057)
  decide +kernel
#print axioms cover_158057

def state_158120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 43 else 30)))
def hex_158120 : String := "414208080A"
theorem cover_158120 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158120 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_158120)
  decide +kernel
#print axioms cover_158120

def state_158125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 21 else 30)))
def hex_158125 : String := "434142054406050A0A"
theorem cover_158125 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158125 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_158125)
  decide +kernel
#print axioms cover_158125

def state_158134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 21 else 31)))
def hex_158134 : String := "4043410842094440080808084341050A08"
theorem cover_158134 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158134 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_158134)
  decide +kernel
#print axioms cover_158134

def state_158155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 56) else (if j.val < 3 then 29 else (if j.val < 4 then 42 else 30)))
def hex_158155 : String := "424440070808440707"
theorem cover_158155 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158155 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_158155)
  decide +kernel
#print axioms cover_158155

def state_158166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 58 else (if j.val < 4 then 42 else 60)))
def hex_158166 : String := "4043414244400543090540070807424405400543050505410705434142440908094244094043090A09054108420A05"
theorem cover_158166 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158166 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_158166)
  decide +kernel
#print axioms cover_158166
end Mub6.Numerical.CircleFullPrototype.Forest
