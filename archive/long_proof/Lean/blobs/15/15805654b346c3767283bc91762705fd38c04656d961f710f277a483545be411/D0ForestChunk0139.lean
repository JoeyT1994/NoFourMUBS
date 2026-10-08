import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_970811 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 28)))
def hex_970811 : String := "4041424344064041050A06064344400A06404105420507414205434406050506064206434406414007060A0606"
theorem cover_970811 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970811 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 45) (hex := hex_970811)
  decide +kernel
#print axioms cover_970811

def state_970857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 23) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 29)))
def hex_970857 : String := "414205434440054105420505050542434441400506400A0605054344414005424307050740074206070705"
theorem cover_970857 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970857 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_970857)
  decide +kernel
#print axioms cover_970857

def state_970900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 23) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 29)))
def hex_970900 : String := "414243080543444041050806080542434406400806064344064041084208070806"
theorem cover_970900 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970900 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_970900)
  decide +kernel
#print axioms cover_970900

def state_970934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 14)))
def hex_970934 : String := "44400741440943094240414409070709070940074143074442080707430744424007090707"
theorem cover_970934 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970934 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 37) (hex := hex_970934)
  decide +kernel
#print axioms cover_970934

def state_970973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 23) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 28)))
def hex_970973 : String := "41434442400741434406070606070744420640070642400506074344420A0707440A420A07"
theorem cover_970973 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970973 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_970973)
  decide +kernel
#print axioms cover_970973

def state_971010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 23) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 28)))
def hex_971010 : String := "41434442060942404143440608060606400709440642060643440642060906"
theorem cover_971010 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971010 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_971010)
  decide +kernel
#print axioms cover_971010
end Mub6.Numerical.CircleFullD0.Forest
