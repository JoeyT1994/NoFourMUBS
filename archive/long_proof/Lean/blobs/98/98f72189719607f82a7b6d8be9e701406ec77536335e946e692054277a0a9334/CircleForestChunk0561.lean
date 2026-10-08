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
def state_373518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 47 else 23)))
def hex_373518 : String := "44410606414006074006420943440541060505"
theorem cover_373518 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373518 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_373518)
  decide +kernel
#print axioms cover_373518

def state_373539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 22)))
def hex_373539 : String := "4042080942084143080808"
theorem cover_373539 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373539 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_373539)
  decide +kernel
#print axioms cover_373539

def state_373551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 23)))
def hex_373551 : String := "42414443080843400A420844084143090A070A0A414409430942400744414309060741430707070707"
theorem cover_373551 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373551 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_373551)
  decide +kernel
#print axioms cover_373551

def state_373593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 23) else (if j.val < 3 then 18 else (if j.val < 4 then 22 else 23)))
def hex_373593 : String := "4144084308404208440841430808080808"
theorem cover_373593 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373593 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_373593)
  decide +kernel
#print axioms cover_373593

def state_373612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 46) else (if j.val < 3 then 19 else (if j.val < 4 then 22 else 46)))
def hex_373612 : String := "4309404208094208410905"
theorem cover_373612 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373612 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_373612)
  decide +kernel
#print axioms cover_373612

def state_373624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 46) else (if j.val < 3 then 19 else (if j.val < 4 then 44 else 47)))
def hex_373624 : String := "4042440941430940094208094308080942440841060609"
theorem cover_373624 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373624 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_373624)
  decide +kernel
#print axioms cover_373624

def state_373649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 46) else (if j.val < 3 then 38 else (if j.val < 4 then 45 else 47)))
def hex_373649 : String := "444143400908404208090808414340424408419B070942084409419B43070840420A44419B0707420844419B08419B430840050543400708400708"
theorem cover_373649 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373649 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_373649)
  decide +kernel
#print axioms cover_373649

def state_373708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 46) else (if j.val < 3 then 39 else (if j.val < 4 then 45 else 47)))
def hex_373708 : String := "44094143094007424409419B070907"
theorem cover_373708 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373708 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_373708)
  decide +kernel
#print axioms cover_373708

def state_373724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 46) else (if j.val < 3 then 38 else (if j.val < 4 then 45 else 47)))
def hex_373724 : String := "440841434208404408410606064208404408419B080808"
theorem cover_373724 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373724 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_373724)
  decide +kernel
#print axioms cover_373724
end Mub6.Numerical.CircleFullPrototype.Forest
