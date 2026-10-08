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
def state_1665822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 12)))
def hex_1665822 : String := "410A43440A4042410A43440A0A0A0A0A0A"
theorem cover_1665822 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665822 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_1665822)
  decide +kernel
#print axioms cover_1665822

def state_1665840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 13)))
def hex_1665840 : String := "4340070A0A"
theorem cover_1665840 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665840 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1665840)
  decide +kernel
#print axioms cover_1665840

def state_1665847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 13)))
def hex_1665847 : String := "4244414340070A0A43404244414340070A0A43404244410743F10A050742050A4042440A05070A050742050A4042440A090A0A41074305400705440A07"
theorem cover_1665847 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665847 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 61) (hex := hex_1665847)
  decide +kernel
#print axioms cover_1665847

def state_1665908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 13)))
def hex_1665908 : String := "42440A050A"
theorem cover_1665908 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665908 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1665908)
  decide +kernel
#print axioms cover_1665908

def state_1665913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 13)))
def hex_1665913 : String := "4042440A4309090A0A"
theorem cover_1665913 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665913 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1665913)
  decide +kernel
#print axioms cover_1665913

def state_1665922 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
def hex_1665922 : String := "40424143074409074344090709074241080541074344400705054440070A07"
theorem cover_1665922 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665922 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_1665922)
  decide +kernel
#print axioms cover_1665922

def state_1665954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 6)))
def hex_1665954 : String := "40424344410640090609440641060943444105084140070A40090944054140050608420643440641064042090A0606"
theorem cover_1665954 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665954 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 47) (hex := hex_1665954)
  decide +kernel
#print axioms cover_1665954

def state_1666002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
def hex_1666002 : String := "424341440907094144404209430741060906404208074208430707440940094209430709434107074144400743070A074440090907"
theorem cover_1666002 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666002 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_1666002)
  decide +kernel
#print axioms cover_1666002
end Mub6.Numerical.CircleFullD0.Forest
