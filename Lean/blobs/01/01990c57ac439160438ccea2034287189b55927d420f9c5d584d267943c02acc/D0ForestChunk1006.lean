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
def state_1541794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 23)))
def hex_1541794 : String := "43414008424443074107050707400542050A41400842444308050544434107400507080705"
theorem cover_1541794 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541794 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_1541794)
  decide +kernel
#print axioms cover_1541794

def state_1541833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 22)))
def hex_1541833 : String := "0A"
theorem cover_1541833 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541833 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1541833)
  decide +kernel
#print axioms cover_1541833

def state_1541836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 30) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 22)))
def hex_1541836 : String := "4244430A410A0A0A0A"
theorem cover_1541836 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541836 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1541836)
  decide +kernel
#print axioms cover_1541836

def state_1541848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 50 else (if j.val < 4 then 38 else 44)))
def hex_1541848 : String := "410A0A"
theorem cover_1541848 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541848 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1541848)
  decide +kernel
#print axioms cover_1541848

def state_1541853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 60) else (if j.val < 3 then 50 else (if j.val < 4 then 39 else 44)))
def hex_1541853 : String := "4244430A4106050A0A"
theorem cover_1541853 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541853 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1541853)
  decide +kernel
#print axioms cover_1541853

def state_1541863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 100 else (if j.val < 4 then 39 else 44)))
def hex_1541863 : String := "444341400A0A0A4140424405050A424443410905050944430A41090543070940054205440505430A414042060A420907400542050A"
theorem cover_1541863 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541863 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_1541863)
  decide +kernel
#print axioms cover_1541863

def state_1541916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 101 else (if j.val < 4 then 39 else 44)))
def hex_1541916 : String := "44430A41400A420A0A0A430741070A"
theorem cover_1541916 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541916 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_1541916)
  decide +kernel
#print axioms cover_1541916

def state_1541931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 61) else (if j.val < 3 then 50 else (if j.val < 4 then 39 else 44)))
def hex_1541931 : String := "4042050A4244430505430505440A0A"
theorem cover_1541931 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541931 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1541931)
  decide +kernel
#print axioms cover_1541931

def state_1541946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 45)))
def hex_1541946 : String := "430A414042080A4244430741074005070707400A42444305050A0A"
theorem cover_1541946 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541946 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1541946)
  decide +kernel
#print axioms cover_1541946

def state_1541973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 22)))
def hex_1541973 : String := "44430A41400A42440A070A0A4307410A0A"
theorem cover_1541973 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541973 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1541973)
  decide +kernel
#print axioms cover_1541973

def state_1541990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 31) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 22)))
def hex_1541990 : String := "400A4244430605430A050A"
theorem cover_1541990 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541990 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1541990)
  decide +kernel
#print axioms cover_1541990

def state_1542001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 23)))
def hex_1542001 : String := "430A4140084442430741074008070707400A440A0A"
theorem cover_1542001 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542001 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 21) (hex := hex_1542001)
  decide +kernel
#print axioms cover_1542001

def state_1542025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 24 else (if j.val < 4 then 18 else 22)))
def hex_1542025 : String := "4142404408430641070606404406070606"
theorem cover_1542025 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542025 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1542025)
  decide +kernel
#print axioms cover_1542025
end Mub6.Numerical.CircleFullD0.Forest
