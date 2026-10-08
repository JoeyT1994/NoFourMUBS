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
def state_273385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 16)))
def hex_273385 : String := "4143424408400541050805424440054105094005410543050544080508"
theorem cover_273385 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273385 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_273385)
  decide +kernel
#print axioms cover_273385

def state_273414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 16)))
def hex_273414 : String := "414342440940410A0809440640080642440940414305054309094143090709444007074041054305420705410643064207064308420908"
theorem cover_273414 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273414 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_273414)
  decide +kernel
#print axioms cover_273414

def state_273470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 17)))
def hex_273470 : String := "41430505430842444140054308424409050508410540054307440805440805"
theorem cover_273470 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273470 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_273470)
  decide +kernel
#print axioms cover_273470

def state_273502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 17)))
def hex_273502 : String := "430A4244404105430A42440905050A0A44400541054306420A0505"
theorem cover_273502 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273502 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_273502)
  decide +kernel
#print axioms cover_273502

def state_273530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 17 else (if j.val < 4 then 54 else 17)))
def hex_273530 : String := "42444008090A08"
theorem cover_273530 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273530 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_273530)
  decide +kernel
#print axioms cover_273530

def state_273537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 17 else (if j.val < 4 then 55 else 17)))
def hex_273537 : String := "42444041434209084209440940050A430809414309090940410A430744420908070A4440084143064244090A060840410508410A4308420A08"
theorem cover_273537 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273537 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_273537)
  decide +kernel
#print axioms cover_273537

def state_273594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 8)))
def hex_273594 : String := "4308424409414043074409420707430709094408414008430842440841400707070808"
theorem cover_273594 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273594 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 35) (hex := hex_273594)
  decide +kernel
#print axioms cover_273594
end Mub6.Numerical.CircleFullPrototype.Forest
