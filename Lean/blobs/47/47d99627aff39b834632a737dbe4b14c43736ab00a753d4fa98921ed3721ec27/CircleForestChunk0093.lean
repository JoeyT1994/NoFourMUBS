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
def state_959722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 88) else (if j.val < 3 then 103 else (if j.val < 4 then 70 else 109)))
def hex_959722 : String := "4142440A434009420941090509C7420A0A"
theorem cover_959722 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959722 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_959722)
  decide +kernel
#print axioms cover_959722

def state_959739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 88) else (if j.val < 3 then 103 else (if j.val < 4 then 70 else 109)))
def hex_959739 : String := "4142444305400A420605434042410905414405050542050540420941090A42410909414443050908440508C742440543050A44054305400A05"
theorem cover_959739 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959739 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_959739)
  decide +kernel
#print axioms cover_959739

def state_959796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 103 else (if j.val < 4 then 71 else 109)))
def hex_959796 : String := "4041420A0A0A4142434406090AC7420A0A"
theorem cover_959796 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959796 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_959796)
  decide +kernel
#print axioms cover_959796

def state_959813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 89) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 54)))
def hex_959813 : String := "420A440A43400A050A"
theorem cover_959813 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959813 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_959813)
  decide +kernel
#print axioms cover_959813

def state_959824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 44) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 55)))
def hex_959824 : String := "410642444306400641060A0606"
theorem cover_959824 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959824 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_959824)
  decide +kernel
#print axioms cover_959824

def state_959838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 55)))
def hex_959838 : String := "42444340064205054042094106444305090642410808410844050808444306400641420806424405050506"
theorem cover_959838 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959838 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_959838)
  decide +kernel
#print axioms cover_959838

def state_959881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 89) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 55)))
def hex_959881 : String := "4244430540414244050944050605414205050543064006410808444305404106050506"
theorem cover_959881 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959881 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_959881)
  decide +kernel
#print axioms cover_959881

def state_959917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 44) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 55)))
def hex_959917 : String := "414209444306090642440A09440A430609"
theorem cover_959917 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959917 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_959917)
  decide +kernel
#print axioms cover_959917

def state_959936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 102 else (if j.val < 4 then 35 else 55)))
def hex_959936 : String := "4443400942094109090909"
theorem cover_959936 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959936 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_959936)
  decide +kernel
#print axioms cover_959936

def state_959950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 88) else (if j.val < 3 then 103 else (if j.val < 4 then 70 else 110)))
def hex_959950 : String := "41420906424443400641060A09094443064006414209060A06"
theorem cover_959950 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959950 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_959950)
  decide +kernel
#print axioms cover_959950
end Mub6.Numerical.CircleFullD0.Forest
