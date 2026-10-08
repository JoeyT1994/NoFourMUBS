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
def state_1659760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 192) else (if j.val < 3 then 116 else (if j.val < 4 then 114 else 94)))
def hex_1659760 : String := "44074043424144070944074009060942414405400507440740430905074105440540050507"
theorem cover_1659760 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659760 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_1659760)
  decide +kernel
#print axioms cover_1659760

def state_1659797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 193) else (if j.val < 3 then 116 else (if j.val < 4 then 114 else 94)))
def hex_1659797 : String := "44074043424144074009064407400A06414440090709444009074009430842070842414407400A070741440740430905074407400A0707"
theorem cover_1659797 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659797 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1659797)
  decide +kernel
#print axioms cover_1659797

def state_1659852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 96) else (if j.val < 3 then 117 else (if j.val < 4 then 114 else 94)))
def hex_1659852 : String := "414440050540430805084440434241054405070505074043094241440509444005054006430806054308420708"
theorem cover_1659852 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659852 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_1659852)
  decide +kernel
#print axioms cover_1659852

def state_1659897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 115 else 94)))
def hex_1659897 : String := "4241440540430705070741054405400507"
theorem cover_1659897 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659897 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_1659897)
  decide +kernel
#print axioms cover_1659897

def state_1659914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 94)))
def hex_1659914 : String := "07"
theorem cover_1659914 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659914 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1659914)
  decide +kernel
#print axioms cover_1659914

def state_1659916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 95)))
def hex_1659916 : String := "4342EA414440090808444043084209060840070842EA414440054308054006084440064342EA06064006430806"
theorem cover_1659916 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659916 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_1659916)
  decide +kernel
#print axioms cover_1659916

def state_1659961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 95)))
def hex_1659961 : String := "434206084241440740EA07440740EA074108440708"
theorem cover_1659961 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659961 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_1659961)
  decide +kernel
#print axioms cover_1659961
end Mub6.Numerical.CircleFullD0.Forest
