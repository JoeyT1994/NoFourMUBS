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
def state_4569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 3)))
def hex_4569 : String := "44404143440542050544074205054305054107074041434244050906420A4405064305054143090A43424405080807"
theorem cover_4569 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4569 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 47) (hex := hex_4569)
  decide +kernel
#print axioms cover_4569

def state_4617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
def hex_4617 : String := "4041444243050806420A430506440505414442074306064207430740410A44050507440742074305400507"
theorem cover_4617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4617 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_4617)
  decide +kernel
#print axioms cover_4617

def state_4660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 7)))
def hex_4660 : String := "40410A0541420A430A0A42430744050543440505440505"
theorem cover_4660 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4660 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 23) (hex := hex_4660)
  decide +kernel
#print axioms cover_4660

def state_4688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_4688 : String := "42434441070808444143080943084009090843444142400A06400506420A400A430A4407064105420805444105424308050505"
theorem cover_4688 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4688 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_4688)
  decide +kernel
#print axioms cover_4688

def state_4741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 2)))
def hex_4741 : String := "08"
theorem cover_4741 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4741 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_4741)
  decide +kernel
#print axioms cover_4741

def state_4744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 4)))
def hex_4744 : String := "404108424407084407084107420707"
theorem cover_4744 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4744 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_4744)
  decide +kernel
#print axioms cover_4744

def state_4759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 4)))
def hex_4759 : String := "4041420944094308054244094308094443070943424407084407054209440905414209440708424407430709440743074042090707"
theorem cover_4759 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4759 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_4759)
  decide +kernel
#print axioms cover_4759

def state_4812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 5)))
def hex_4812 : String := "4308444041054208050808"
theorem cover_4812 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4812 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_4812)
  decide +kernel
#print axioms cover_4812
end Mub6.Numerical.CircleFullPrototype.Forest
