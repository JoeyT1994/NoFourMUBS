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
def state_2326129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 229) else (if j.val < 3 then 174 else (if j.val < 4 then 126 else 176)))
def hex_2326129 : String := "43404442060642060644424143050607410543404405050583424143400605064340440742060644420505420A058341064340444205054206054405058383"
theorem cover_2326129 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326129 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_2326129)
  decide +kernel
#print axioms cover_2326129

def state_2326192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 114) else (if j.val < 3 then 175 else (if j.val < 4 then 126 else 176)))
def hex_2326192 : String := "41064340444206064206064442050542410543404405050583410543058383"
theorem cover_2326192 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326192 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_2326192)
  decide +kernel
#print axioms cover_2326192

def state_2326224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 114) else (if j.val < 3 then 174 else (if j.val < 4 then 126 else 177)))
def hex_2326224 : String := "4143400644060606434044420606084442414340064405060643400844420808080841064340084442080508080883"
theorem cover_2326224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326224 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_2326224)
  decide +kernel
#print axioms cover_2326224

def state_2326271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 114) else (if j.val < 3 then 175 else (if j.val < 4 then 126 else 177)))
def hex_2326271 : String := "410643404442060608444241064340080708070783"
theorem cover_2326271 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326271 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_2326271)
  decide +kernel
#print axioms cover_2326271

def state_2326293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 114) else (if j.val < 3 then 87 else (if j.val < 4 then 126 else 176)))
def hex_2326293 : String := "42414305834340444205054241050A0544050583410543404405050583"
theorem cover_2326293 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326293 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_2326293)
  decide +kernel
#print axioms cover_2326293

def state_2326322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 114) else (if j.val < 3 then 87 else (if j.val < 4 then 126 else 177)))
def hex_2326322 : String := "42414340440507058343404442410A0A41054340440505058342410A0A0744420505420A07834107430783"
theorem cover_2326322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326322 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 43) (hex := hex_2326322)
  decide +kernel
#print axioms cover_2326322

def state_2326365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 87 else (if j.val < 4 then 127 else 88)))
def hex_2326365 : String := "83"
theorem cover_2326365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326365 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2326365)
  decide +kernel
#print axioms cover_2326365
end Mub6.Numerical.CircleFullD0.Forest
