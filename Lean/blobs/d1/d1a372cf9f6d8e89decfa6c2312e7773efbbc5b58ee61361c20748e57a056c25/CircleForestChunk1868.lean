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
def state_2321317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 45)))
def hex_2321317 : String := "4142434008440A08084340084441420808420808080842430805434005444108050508"
theorem cover_2321317 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321317 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_2321317)
  decide +kernel
#print axioms cover_2321317

def state_2321355 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 40 else (if j.val < 4 then 30 else 44)))
def hex_2321355 : String := "0A"
theorem cover_2321355 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321355 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2321355)
  decide +kernel
#print axioms cover_2321355

def state_2321357 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 41 else (if j.val < 4 then 60 else 44)))
def hex_2321357 : String := "404441420A43054044050A05420A4340440A0A0A0A41420A43404441050A410A0A0A40440A0A0A420A4340440A0A060A440A0A"
theorem cover_2321357 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321357 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_2321357)
  decide +kernel
#print axioms cover_2321357

def state_2321408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 41 else (if j.val < 4 then 61 else 44)))
def hex_2321408 : String := "404441420A4340440A0A0A0A0A41420A430A0A0A0A"
theorem cover_2321408 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321408 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_2321408)
  decide +kernel
#print axioms cover_2321408

def state_2321429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 44)))
def hex_2321429 : String := "420A43404441420743060A06410A060A4044070A0A"
theorem cover_2321429 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321429 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_2321429)
  decide +kernel
#print axioms cover_2321429

def state_2321450 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 45)))
def hex_2321450 : String := "41420A43404441420A430740080A420A430A0A41420807080A4044414208080A080A420A434044410A064108060640440A050A"
theorem cover_2321450 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321450 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_2321450)
  decide +kernel
#print axioms cover_2321450

def state_2321501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 31 else 22)))
def hex_2321501 : String := "4044414207434007440741080707074108054441420A4340440A0A0A0A42074340070A0741420A4340080A0A0A"
theorem cover_2321501 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321501 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_2321501)
  decide +kernel
#print axioms cover_2321501
end Mub6.Numerical.CircleFullD0.Forest
