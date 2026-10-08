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
def state_173204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 37 else (if j.val < 4 then 59 else 94)))
def hex_173204 : String := "414042054307440705074042434408410508084344410606410740060744084140050708420843074407410707"
theorem cover_173204 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173204 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_173204)
  decide +kernel
#print axioms cover_173204

def state_173249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 37 else (if j.val < 4 then 59 else 95)))
def hex_173249 : String := "4105404205434441050A054441054005420543050505424307440705430744410740420707074105400507"
theorem cover_173249 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173249 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_173249)
  decide +kernel
#print axioms cover_173249

def state_173292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 49) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 47)))
def hex_173292 : String := "42430744070643074407410707"
theorem cover_173292 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173292 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_173292)
  decide +kernel
#print axioms cover_173292

def state_173306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 23)))
def hex_173306 : String := "410706"
theorem cover_173306 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173306 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_173306)
  decide +kernel
#print axioms cover_173306

def state_173310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 48) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 23)))
def hex_173310 : String := "44404243060706074042430741054407050807"
theorem cover_173310 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173310 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_173310)
  decide +kernel
#print axioms cover_173310

def state_173330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 49) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 46)))
def hex_173330 : String := "40424306414406400607440540064243060805064243074107050A"
theorem cover_173330 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173330 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_173330)
  decide +kernel
#print axioms cover_173330

def state_173360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 38 else (if j.val < 4 then 58 else 47)))
def hex_173360 : String := "4406410706"
theorem cover_173360 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173360 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_173360)
  decide +kernel
#print axioms cover_173360

def state_173366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 38 else (if j.val < 4 then 59 else 94)))
def hex_173366 : String := "414042430644070706074042430644064140064207064006424306080606424307444107074107404207060706"
theorem cover_173366 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173366 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_173366)
  decide +kernel
#print axioms cover_173366

def state_173412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 98) else (if j.val < 3 then 38 else (if j.val < 4 then 59 else 95)))
def hex_173412 : String := "4042050807"
theorem cover_173412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173412 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_173412)
  decide +kernel
#print axioms cover_173412

def state_173418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 99) else (if j.val < 3 then 38 else (if j.val < 4 then 59 else 95)))
def hex_173418 : String := "4243440641054005074441400542050740424305050642430795060543064406410506"
theorem cover_173418 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173418 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_173418)
  decide +kernel
#print axioms cover_173418
end Mub6.Numerical.CircleFullPrototype.Forest
