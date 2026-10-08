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
def state_273878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
def hex_273878 : String := "404105430505410A430A4442404105070A40410507410A070A"
theorem cover_273878 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273878 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_273878)
  decide +kernel
#print axioms cover_273878

def state_273906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 4)))
def hex_273906 : String := "4243050505"
theorem cover_273906 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273906 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_273906)
  decide +kernel
#print axioms cover_273906

def state_273914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 8)))
def hex_273914 : String := "414005434244410606410506440A4105400543050542060A40064342440A064408414006430806080A"
theorem cover_273914 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273914 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_273914)
  decide +kernel
#print axioms cover_273914

def state_273955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 9)))
def hex_273955 : String := "4140054305054006434442064140054344420605050607420607440606"
theorem cover_273955 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273955 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 29) (hex := hex_273955)
  decide +kernel
#print axioms cover_273955

def state_273984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 15 else 4)))
def hex_273984 : String := "440A410506"
theorem cover_273984 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273984 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_273984)
  decide +kernel
#print axioms cover_273984

def state_273989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 7 else 4)))
def hex_273989 : String := "4344414005424305050540080A4105400542434441050805440A05430505440A410540050A"
theorem cover_273989 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273989 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_273989)
  decide +kernel
#print axioms cover_273989

def state_274028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 7 else 4)))
def hex_274028 : String := "4344404105434244400707084440050740054105430505420844070841074342084407404107430A07080840410543050541080808"
theorem cover_274028 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274028 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_274028)
  decide +kernel
#print axioms cover_274028

def state_274081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 7 else 4)))
def hex_274081 : String := "4344404105424305050541074243440740410543424406050507060743440606074005410542434440050A0508430505444005074005410508"
theorem cover_274081 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274081 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 57) (hex := hex_274081)
  decide +kernel
#print axioms cover_274081
end Mub6.Numerical.CircleFullPrototype.Forest
