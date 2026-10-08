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
def state_2554617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 49)))
def hex_2554617 : String := "4042430909430541440705054209434144404209430909094005420943410A0541090544400509054144404208080840420505420943410905084408400509"
theorem cover_2554617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554617 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_2554617)
  decide +kernel
#print axioms cover_2554617

def state_2554681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 27 else (if j.val < 4 then 31 else 24)))
def hex_2554681 : String := "444006420806404243414406400609440740070941440640060907064209434144400608404209064209434106060644084042090642080841440640060808"
theorem cover_2554681 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554681 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_2554681)
  decide +kernel
#print axioms cover_2554681

def state_2554744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 27 else (if j.val < 4 then 31 else 24)))
def hex_2554744 : String := "444007084042430907074209434144084008080808"
theorem cover_2554744 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554744 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_2554744)
  decide +kernel
#print axioms cover_2554744

def state_2554766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 25)))
def hex_2554766 : String := "4243410A440505414442400A094005430A410A050A4442050505430A414440054205050505"
theorem cover_2554766 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554766 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_2554766)
  decide +kernel
#print axioms cover_2554766

def state_2554804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 26 else (if j.val < 4 then 15 else 25)))
def hex_2554804 : String := "43414440420943090909400A06444009060641444009094042060A0644094042060506"
theorem cover_2554804 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554804 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 35) (hex := hex_2554804)
  decide +kernel
#print axioms cover_2554804

def state_2554841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 25)))
def hex_2554841 : String := "4440420A0A4243410A4409064144090A4409400A06430A410A44400A42090A0A0A"
theorem cover_2554841 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554841 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_2554841)
  decide +kernel
#print axioms cover_2554841
end Mub6.Numerical.CircleFullD0.Forest
