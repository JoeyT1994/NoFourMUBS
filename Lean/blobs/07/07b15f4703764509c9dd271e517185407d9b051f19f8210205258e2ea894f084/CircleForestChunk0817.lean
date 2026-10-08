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
def state_1496719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 399 else 173) else (if j.val < 3 then 163 else (if j.val < 4 then 206 else 239)))
def hex_1496719 : String := "434142090A4244064043060609064142444043090709094440064306090A424440064341090688400709440640064341090688"
theorem cover_1496719 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496719 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_1496719)
  decide +kernel
#print axioms cover_1496719

def state_1496772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 172) else (if j.val < 3 then 162 else (if j.val < 4 then 207 else 119)))
def hex_1496772 : String := "4440434107070743410988054007430907"
theorem cover_1496772 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496772 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_1496772)
  decide +kernel
#print axioms cover_1496772

def state_1496790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 172) else (if j.val < 3 then 163 else (if j.val < 4 then 207 else 238)))
def hex_1496790 : String := "404341444240064306410705060A88414442050608884341444209400609098841444205404341090505054209404309080988"
theorem cover_1496790 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496790 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1496790)
  decide +kernel
#print axioms cover_1496790

def state_1496841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 172) else (if j.val < 3 then 163 else (if j.val < 4 then 207 else 239)))
def hex_1496841 : String := "4043410A8841080843410988410988"
theorem cover_1496841 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496841 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 15) (hex := hex_1496841)
  decide +kernel
#print axioms cover_1496841

def state_1496856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 173) else (if j.val < 3 then 81 else (if j.val < 4 then 207 else 119)))
def hex_1496856 : String := "88"
theorem cover_1496856 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496856 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1496856)
  decide +kernel
#print axioms cover_1496856

def state_1496858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 87) else (if j.val < 3 then 80 else (if j.val < 4 then 103 else 59)))
def hex_1496858 : String := "444043060505404307074341070707"
theorem cover_1496858 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496858 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1496858)
  decide +kernel
#print axioms cover_1496858

def state_1496874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 118)))
def hex_1496874 : String := "4006430688"
theorem cover_1496874 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496874 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1496874)
  decide +kernel
#print axioms cover_1496874

def state_1496879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 119)))
def hex_1496879 : String := "404306414207060643414244400643414205060605404307074341420744070707410707440640064306414244064006430707060642440640060A0688"
theorem cover_1496879 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496879 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 61) (hex := hex_1496879)
  decide +kernel
#print axioms cover_1496879

def state_1496941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 59)))
def hex_1496941 : String := "06"
theorem cover_1496941 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496941 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1496941)
  decide +kernel
#print axioms cover_1496941

def state_1496943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 102 else 59)))
def hex_1496943 : String := "4144064240064306410A060506"
theorem cover_1496943 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496943 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1496943)
  decide +kernel
#print axioms cover_1496943
end Mub6.Numerical.CircleFullD0.Forest
