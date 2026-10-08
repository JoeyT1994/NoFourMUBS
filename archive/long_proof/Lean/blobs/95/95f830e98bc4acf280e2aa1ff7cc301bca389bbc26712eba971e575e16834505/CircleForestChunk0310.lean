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
def state_149753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
def hex_149753 : String := "43444041430A440505430A44080841430A050A40410A0A0A444041084408420508410544420543080805404105420543050505"
theorem cover_149753 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149753 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_149753)
  decide +kernel
#print axioms cover_149753

def state_149809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 6)))
def hex_149809 : String := "43444043064406410506430644060540430741050A0A44404408410508094041054205434405050505"
theorem cover_149809 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149809 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_149809)
  decide +kernel
#print axioms cover_149809

def state_149850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 6)))
def hex_149850 : String := "4344404206060607440940424143070543444042410543050507090744094042054105430505054107430744094042090709424105434409050909"
theorem cover_149850 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149850 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_149850)
  decide +kernel
#print axioms cover_149850

def state_149910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 6)))
def hex_149910 : String := "434440410606060A4408404142430A05434440414205430505080A0A44084041054205430505054208430A440740410A070A414205430A4405050A"
theorem cover_149910 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149910 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_149910)
  decide +kernel
#print axioms cover_149910

def state_149970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 6)))
def hex_149970 : String := "44400606404142430644060707420A430644064041070A0641420A060A"
theorem cover_149970 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_149970 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_149970)
  decide +kernel
#print axioms cover_149970
end Mub6.Numerical.CircleFullPrototype.Forest
