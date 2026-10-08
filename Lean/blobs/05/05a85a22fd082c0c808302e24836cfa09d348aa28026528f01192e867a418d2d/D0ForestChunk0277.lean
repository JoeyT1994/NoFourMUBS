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
def state_1003926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 88)))
def hex_1003926 : String := "434241084044080808410640444342410640444342410640440506060608430608060642084106404443060808064306080608"
theorem cover_1003926 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003926 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 51) (hex := hex_1003926)
  decide +kernel
#print axioms cover_1003926

def state_1003977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 89)))
def hex_1003977 : String := "43420841064044430608060608"
theorem cover_1003977 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003977 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1003977)
  decide +kernel
#print axioms cover_1003977

def state_1003990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 44)))
def hex_1003990 : String := "440808"
theorem cover_1003990 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003990 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1003990)
  decide +kernel
#print axioms cover_1003990

def state_1003998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 110) else (if j.val < 3 then 72 else (if j.val < 4 then 106 else 88)))
def hex_1003998 : String := "40444341424008084044430A0A0A4443420741080707084207400A0741080743414208400A08420A400A440A0A084443410807074341084207404407080708"
theorem cover_1003998 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003998 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_1003998)
  decide +kernel
#print axioms cover_1003998

def state_1004064 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 110) else (if j.val < 3 then 73 else (if j.val < 4 then 212 else 176)))
def hex_1004064 : String := "424140444305420A054342410A05050A444342410605054241080741050543064208064044050A440543054207054140050605"
theorem cover_1004064 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004064 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 51) (hex := hex_1004064)
  decide +kernel
#print axioms cover_1004064

def state_1004115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 110) else (if j.val < 3 then 73 else (if j.val < 4 then 213 else 176)))
def hex_1004115 : String := "4241400A08400A44070A4140440543050A44430542080543060805"
theorem cover_1004115 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004115 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_1004115)
  decide +kernel
#print axioms cover_1004115
end Mub6.Numerical.CircleFullD0.Forest
