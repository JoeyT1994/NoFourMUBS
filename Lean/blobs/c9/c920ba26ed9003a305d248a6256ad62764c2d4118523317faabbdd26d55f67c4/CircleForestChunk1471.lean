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
def state_1653752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 25 else 20)))
def hex_1653752 : String := "4143054442054005050505"
theorem cover_1653752 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653752 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1653752)
  decide +kernel
#print axioms cover_1653752

def state_1653766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 31 else (if j.val < 4 then 50 else 20)))
def hex_1653766 : String := "440705"
theorem cover_1653766 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653766 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1653766)
  decide +kernel
#print axioms cover_1653766

def state_1653772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 100) else (if j.val < 3 then 62 else (if j.val < 4 then 51 else 40)))
def hex_1653772 : String := "404307444241400643070606064241400707070743440705444241404307090940430509054140430706430709400643050908"
theorem cover_1653772 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653772 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_1653772)
  decide +kernel
#print axioms cover_1653772

def state_1653823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 101) else (if j.val < 3 then 62 else (if j.val < 4 then 51 else 40)))
def hex_1653823 : String := "404305440642410705064305444205414005050505"
theorem cover_1653823 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653823 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1653823)
  decide +kernel
#print axioms cover_1653823

def state_1653844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 63 else (if j.val < 4 then 51 else 40)))
def hex_1653844 : String := "414007430744424140060706060840064305440605"
theorem cover_1653844 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653844 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_1653844)
  decide +kernel
#print axioms cover_1653844

def state_1653865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 31 else (if j.val < 4 then 51 else 41)))
def hex_1653865 : String := "08"
theorem cover_1653865 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653865 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1653865)
  decide +kernel
#print axioms cover_1653865

def state_1653866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 31 else (if j.val < 4 then 25 else 20)))
def hex_1653866 : String := "4305444240050540060505"
theorem cover_1653866 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653866 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1653866)
  decide +kernel
#print axioms cover_1653866

def state_1653877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 25 else 20)))
def hex_1653877 : String := "414305444240414305444209090505054041430544424140430509050541400708080805050805"
theorem cover_1653877 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653877 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 39) (hex := hex_1653877)
  decide +kernel
#print axioms cover_1653877

def state_1653916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 21)))
def hex_1653916 : String := "08"
theorem cover_1653916 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653916 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1653916)
  decide +kernel
#print axioms cover_1653916

def state_1653917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 10)))
def hex_1653917 : String := "4143064442064041060806064305440505"
theorem cover_1653917 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653917 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1653917)
  decide +kernel
#print axioms cover_1653917

def state_1653934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 11)))
def hex_1653934 : String := "420608"
theorem cover_1653934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653934 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1653934)
  decide +kernel
#print axioms cover_1653934

def state_1653944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 26 else 20)))
def hex_1653944 : String := "41064043060706"
theorem cover_1653944 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653944 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1653944)
  decide +kernel
#print axioms cover_1653944

def state_1653952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 20)))
def hex_1653952 : String := "40434206440A0607430607"
theorem cover_1653952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653952 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1653952)
  decide +kernel
#print axioms cover_1653952
end Mub6.Numerical.CircleFullD0.Forest
