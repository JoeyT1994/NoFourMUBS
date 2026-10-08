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
def state_1305360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 88) else (if j.val < 3 then 96 else (if j.val < 4 then 57 else 89)))
def hex_1305360 : String := "4306404244B841060844B807424441430540B84205440505430540B805410609444107430540080507"
theorem cover_1305360 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305360 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_1305360)
  decide +kernel
#print axioms cover_1305360

def state_1305401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 89) else (if j.val < 3 then 96 else (if j.val < 4 then 57 else 44)))
def hex_1305401 : String := "444305404241B8050A0543054008420908"
theorem cover_1305401 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305401 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_1305401)
  decide +kernel
#print axioms cover_1305401

def state_1305418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 44) else (if j.val < 3 then 97 else (if j.val < 4 then 57 else 44)))
def hex_1305418 : String := "41444307404241070A070A07440A08"
theorem cover_1305418 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305418 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1305418)
  decide +kernel
#print axioms cover_1305418

def state_1305433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 44) else (if j.val < 3 then 48 else (if j.val < 4 then 57 else 44)))
def hex_1305433 : String := "420541440543054042440507070505"
theorem cover_1305433 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305433 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1305433)
  decide +kernel
#print axioms cover_1305433

def state_1305448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 44) else (if j.val < 3 then 48 else (if j.val < 4 then 28 else 45)))
def hex_1305448 : String := "430640424441060806084244410605094441070507"
theorem cover_1305448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305448 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_1305448)
  decide +kernel
#print axioms cover_1305448

def state_1305469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 45) else (if j.val < 3 then 48 else (if j.val < 4 then 28 else 22)))
def hex_1305469 : String := "44430540424144050805080509"
theorem cover_1305469 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305469 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1305469)
  decide +kernel
#print axioms cover_1305469

def state_1305482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 22) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 22)))
def hex_1305482 : String := "414443074042410708070A07440A08"
theorem cover_1305482 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305482 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1305482)
  decide +kernel
#print axioms cover_1305482

def state_1305497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 22)))
def hex_1305497 : String := "05"
theorem cover_1305497 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305497 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1305497)
  decide +kernel
#print axioms cover_1305497

def state_1305507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 88) else (if j.val < 3 then 96 else (if j.val < 4 then 58 else 88)))
def hex_1305507 : String := "4340B842414443400905064340B84208440841084305060644064340B80506410944064340B8050606"
theorem cover_1305507 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305507 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 41) (hex := hex_1305507)
  decide +kernel
#print axioms cover_1305507

def state_1305550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 64 else 88) else (if j.val < 3 then 96 else (if j.val < 4 then 116 else 89)))
def hex_1305550 : String := "4244B8410A43090544B8410708"
theorem cover_1305550 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305550 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1305550)
  decide +kernel
#print axioms cover_1305550

def state_1305566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 65 else 176) else (if j.val < 3 then 192 else (if j.val < 4 then 116 else 178)))
def hex_1305566 : String := "4340B842444108430508410A43090A44414340070540B808430540B8054143060A4340B80540B8420A444107050740B8420A44410806410A0A"
theorem cover_1305566 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305566 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_1305566)
  decide +kernel
#print axioms cover_1305566
end Mub6.Numerical.CircleFullD0.Forest
