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
def state_1567780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 44 else 46)))
def hex_1567780 : String := "4241444006090844400543420541080505400543420508054144400843080808444008434241084440050A0841084440080A080A40084342080808"
theorem cover_1567780 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567780 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1567780)
  decide +kernel
#print axioms cover_1567780

def state_1567839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 45 else 46)))
def hex_1567839 : String := "42094108440A08"
theorem cover_1567839 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567839 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1567839)
  decide +kernel
#print axioms cover_1567839

def state_1567846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 22 else 46)))
def hex_1567846 : String := "4342094144400A094043070807444043420A0A0A0A40434241094409094107440A07090909"
theorem cover_1567846 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567846 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 37) (hex := hex_1567846)
  decide +kernel
#print axioms cover_1567846

def state_1567883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 22 else 47)))
def hex_1567883 : String := "40434208080843420941074440430709070709"
theorem cover_1567883 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567883 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_1567883)
  decide +kernel
#print axioms cover_1567883

def state_1567902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 23 else 11)))
def hex_1567902 : String := "444209410A0A09"
theorem cover_1567902 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567902 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1567902)
  decide +kernel
#print axioms cover_1567902

def state_1567910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 5)))
def hex_1567910 : String := "434441420940434408410942094044080908090942404308090840430844080908410942094440434142094406090609090909"
theorem cover_1567910 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567910 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 51) (hex := hex_1567910)
  decide +kernel
#print axioms cover_1567910

def state_1567966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 10 else 10)))
def hex_1567966 : String := "43444140424105084105060806410540424406050506444109404209430609064109404209434409050909"
theorem cover_1567966 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567966 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_1567966)
  decide +kernel
#print axioms cover_1567966
end Mub6.Numerical.CircleFullD0.Forest
