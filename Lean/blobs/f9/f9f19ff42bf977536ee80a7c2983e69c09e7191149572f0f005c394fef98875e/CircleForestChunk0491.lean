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
def state_1306621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 44) else (if j.val < 3 then 48 else (if j.val < 4 then 59 else 45)))
def hex_1306621 : String := "4005424406410A064441434005420606050641434005420A4405050506"
theorem cover_1306621 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306621 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1306621)
  decide +kernel
#print axioms cover_1306621

def state_1306650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 45) else (if j.val < 3 then 48 else (if j.val < 4 then 29 else 22)))
def hex_1306650 : String := "44434042414406060641060642410606060643400842094144430806080806"
theorem cover_1306650 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306650 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_1306650)
  decide +kernel
#print axioms cover_1306650

def state_1306681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 22) else (if j.val < 3 then 49 else (if j.val < 4 then 29 else 22)))
def hex_1306681 : String := "41444340424109440608094241090A090643400842444143074007424407070708080840054244410906410508440908444340060606430806"
theorem cover_1306681 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306681 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_1306681)
  decide +kernel
#print axioms cover_1306681

def state_1306741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 44) else (if j.val < 3 then 48 else (if j.val < 4 then 29 else 44)))
def hex_1306741 : String := "4340424144054305404208440541080505054144054305404244064109050905050506"
theorem cover_1306741 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306741 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 35) (hex := hex_1306741)
  decide +kernel
#print axioms cover_1306741

def state_1306779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 44) else (if j.val < 3 then 96 else (if j.val < 4 then 58 else 45)))
def hex_1306779 : String := "44414305404244080A4441430506430506410A430506054305400605414309400A420944410A050909"
theorem cover_1306779 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306779 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1306779)
  decide +kernel
#print axioms cover_1306779

def state_1306823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 88) else (if j.val < 3 then 97 else (if j.val < 4 then 116 else 90)))
def hex_1306823 : String := "05"
theorem cover_1306823 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306823 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1306823)
  decide +kernel
#print axioms cover_1306823
end Mub6.Numerical.CircleFullD0.Forest
