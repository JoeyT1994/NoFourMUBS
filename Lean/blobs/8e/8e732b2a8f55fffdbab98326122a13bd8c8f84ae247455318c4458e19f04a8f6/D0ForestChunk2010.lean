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
def state_2562928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
def hex_2562928 : String := "414244430907430909440743414440074209074042070742094341440940090909414407400709074407400709414407400742080707420907"
theorem cover_2562928 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562928 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 57) (hex := hex_2562928)
  decide +kernel
#print axioms cover_2562928

def state_2562986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
def hex_2562986 : String := "42440A094443404142050507050A4340414442094341400905090942064341440906060944090641440A4206430609064041440A0908410A08"
theorem cover_2562986 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562986 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_2562986)
  decide +kernel
#print axioms cover_2562986

def state_2563043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
def hex_2563043 : String := "42064407430608"
theorem cover_2563043 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563043 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2563043)
  decide +kernel
#print axioms cover_2563043

def state_2563052 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
def hex_2563052 : String := "4041430842070707410507"
theorem cover_2563052 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563052 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_2563052)
  decide +kernel
#print axioms cover_2563052

def state_2563067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 10)))
def hex_2563067 : String := "424143084007080741084308400708"
theorem cover_2563067 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563067 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_2563067)
  decide +kernel
#print axioms cover_2563067

def state_2563082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 11)))
def hex_2563082 : String := "42414308444042070808400806430644400706064143084408084344080644404207410807084042440741080644410807410843060506"
theorem cover_2563082 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563082 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_2563082)
  decide +kernel
#print axioms cover_2563082
end Mub6.Numerical.CircleFullD0.Forest
