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
def state_1338429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 116 else 193) else (if j.val < 3 then 88 else (if j.val < 4 then 65 else 179)))
def hex_1338429 : String := "4240084305414442084008090808404307414442400743074144080607060607434144090707414409420A07440907"
theorem cover_1338429 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338429 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_1338429)
  decide +kernel
#print axioms cover_1338429

def state_1338476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 117 else 96) else (if j.val < 3 then 88 else (if j.val < 4 then 32 else 89)))
def hex_1338476 : String := "43054144090A4409420509"
theorem cover_1338476 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338476 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1338476)
  decide +kernel
#print axioms cover_1338476

def state_1338487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 96) else (if j.val < 3 then 89 else (if j.val < 4 then 32 else 44)))
def hex_1338487 : String := "44094043414244C8060607414244400609060642444043070509070709"
theorem cover_1338487 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338487 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1338487)
  decide +kernel
#print axioms cover_1338487

def state_1338516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 97) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 44)))
def hex_1338516 : String := "424406404341444206070707414442064007064208074406074305414406420509064409400709"
theorem cover_1338516 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338516 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1338516)
  decide +kernel
#print axioms cover_1338516

def state_1338558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 96) else (if j.val < 3 then 88 else (if j.val < 4 then 33 else 88)))
def hex_1338558 : String := "40434142074405400509420644054005090509"
theorem cover_1338558 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338558 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1338558)
  decide +kernel
#print axioms cover_1338558

def state_1338581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 116 else 192) else (if j.val < 3 then 88 else (if j.val < 4 then 66 else 178)))
def hex_1338581 : String := "4240434144054207054405424005070505434107440742070907400509"
theorem cover_1338581 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338581 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1338581)
  decide +kernel
#print axioms cover_1338581

def state_1338610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 116 else 192) else (if j.val < 3 then 88 else (if j.val < 4 then 66 else 179)))
def hex_1338610 : String := "424043410A4442084005430A0542080605430A410744070A400643414409064409420A0641064409420A05"
theorem cover_1338610 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338610 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1338610)
  decide +kernel
#print axioms cover_1338610

def state_1338654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 116 else 193) else (if j.val < 3 then 88 else (if j.val < 4 then 66 else 178)))
def hex_1338654 : String := "424043414405420805440608054341440642064009060641440642060906400509"
theorem cover_1338654 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338654 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1338654)
  decide +kernel
#print axioms cover_1338654
end Mub6.Numerical.CircleFullD0.Forest
