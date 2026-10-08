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
def state_1582467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 35) else (if j.val < 3 then 97 else (if j.val < 4 then 107 else 102)))
def hex_1582467 : String := "41424443060A434008050A444309094340410907414244060509420509400A410A420A09424406084443064008064340070540074142050705"
theorem cover_1582467 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582467 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_1582467)
  decide +kernel
#print axioms cover_1582467

def state_1582524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 79 else 35) else (if j.val < 3 then 97 else (if j.val < 4 then 107 else 102)))
def hex_1582524 : String := "4142440605440643054041420509050506"
theorem cover_1582524 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582524 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_1582524)
  decide +kernel
#print axioms cover_1582524

def state_1582541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 35) else (if j.val < 3 then 97 else (if j.val < 4 then 53 else 103)))
def hex_1582541 : String := "43404142054443054007050505054041424443050A0544434007054007410A05434007054007054205444305070541420544050505"
theorem cover_1582541 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582541 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_1582541)
  decide +kernel
#print axioms cover_1582541

def state_1582595 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 26 else 50)))
def hex_1582595 : String := "434041094244064306090941094206094041094244094309090941094244094340090640090909"
theorem cover_1582595 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582595 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_1582595)
  decide +kernel
#print axioms cover_1582595

def state_1582636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 52 else 51)))
def hex_1582636 : String := "414244430A4007094307074409074244070707"
theorem cover_1582636 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582636 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_1582636)
  decide +kernel
#print axioms cover_1582636

def state_1582655 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 52 else 51)))
def hex_1582655 : String := "414244430A400909430A404142444308084307080842440A07074108424405050844090A4244430640414206070606430A4007410A050A"
theorem cover_1582655 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582655 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1582655)
  decide +kernel
#print axioms cover_1582655
end Mub6.Numerical.CircleFullD0.Forest
