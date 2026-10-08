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
def state_181721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 100) else (if j.val < 3 then 100 else (if j.val < 4 then 60 else 59)))
def hex_181721 : String := "444306094341424044069644069606064109420707"
theorem cover_181721 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181721 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_181721)
  decide +kernel
#print axioms cover_181721

def state_181742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 100) else (if j.val < 3 then 100 else (if j.val < 4 then 60 else 59)))
def hex_181742 : String := "444306410A4208054341424044069644069640060642400606054142404409960A0942404443060796440896400905"
theorem cover_181742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181742 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_181742)
  decide +kernel
#print axioms cover_181742

def state_181789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 100) else (if j.val < 3 then 101 else (if j.val < 4 then 60 else 59)))
def hex_181789 : String := "40094405430509"
theorem cover_181789 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181789 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_181789)
  decide +kernel
#print axioms cover_181789

def state_181796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 101) else (if j.val < 3 then 50 else (if j.val < 4 then 60 else 59)))
def hex_181796 : String := "42404405430507440543054241400705050505"
theorem cover_181796 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181796 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_181796)
  decide +kernel
#print axioms cover_181796

def state_181815 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 50 else (if j.val < 4 then 61 else 59)))
def hex_181815 : String := "414240094409434109420707090942400744070709"
theorem cover_181815 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181815 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_181815)
  decide +kernel
#print axioms cover_181815

def state_181836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 50) else (if j.val < 3 then 50 else (if j.val < 4 then 30 else 29)))
def hex_181836 : String := "4443410A050A43414240440A43410A420805410A42080A0A0A4240440543054208050505410A42404408434208050708400505"
theorem cover_181836 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181836 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_181836)
  decide +kernel
#print axioms cover_181836

def state_181887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 29)))
def hex_181887 : String := "404405430509440543050A"
theorem cover_181887 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181887 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_181887)
  decide +kernel
#print axioms cover_181887

def state_181898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 29)))
def hex_181898 : String := "42404405430507440543054241400505050505"
theorem cover_181898 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181898 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_181898)
  decide +kernel
#print axioms cover_181898

def state_181917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 29)))
def hex_181917 : String := "41424009440A43410A424007080A0A0942400744070705"
theorem cover_181917 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181917 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_181917)
  decide +kernel
#print axioms cover_181917

def state_181943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 15)))
def hex_181943 : String := "434441054205400543444105420540050505050505"
theorem cover_181943 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181943 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 21) (hex := hex_181943)
  decide +kernel
#print axioms cover_181943
end Mub6.Numerical.CircleFullPrototype.Forest
