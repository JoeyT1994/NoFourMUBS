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
def state_2323020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 43 else (if j.val < 4 then 60 else 44)))
def hex_2323020 : String := "40444241054305400505050707"
theorem cover_2323020 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323020 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2323020)
  decide +kernel
#print axioms cover_2323020

def state_2323036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 86 else (if j.val < 4 then 61 else 88)))
def hex_2323036 : String := "41430540060543404442050542410509050540444241054309400644050541050942414305064340084405070841050A44054241054305404405080505"
theorem cover_2323036 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323036 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_2323036)
  decide +kernel
#print axioms cover_2323036

def state_2323097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 87 else (if j.val < 4 then 61 else 88)))
def hex_2323097 : String := "41054305400A05"
theorem cover_2323097 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323097 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2323097)
  decide +kernel
#print axioms cover_2323097

def state_2323104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 43 else (if j.val < 4 then 61 else 89)))
def hex_2323104 : String := "42410743074044420807070707"
theorem cover_2323104 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323104 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2323104)
  decide +kernel
#print axioms cover_2323104

def state_2323117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 56) else (if j.val < 3 then 43 else (if j.val < 4 then 61 else 44)))
def hex_2323117 : String := "4442050507"
theorem cover_2323117 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323117 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2323117)
  decide +kernel
#print axioms cover_2323117

def state_2323123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 60 else 44)))
def hex_2323123 : String := "404442090942414307400907060744420606420606"
theorem cover_2323123 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323123 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_2323123)
  decide +kernel
#print axioms cover_2323123

def state_2323147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 86 else (if j.val < 4 then 61 else 88)))
def hex_2323147 : String := "41434009440942090940440942090944424143094009050909424143400944050540440908444205054241050807094143074009070909"
theorem cover_2323147 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323147 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 55) (hex := hex_2323147)
  decide +kernel
#print axioms cover_2323147

def state_2323202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 87 else (if j.val < 4 then 61 else 88)))
def hex_2323202 : String := "4143094009440942090709"
theorem cover_2323202 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323202 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2323202)
  decide +kernel
#print axioms cover_2323202

def state_2323213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 61 else 89)))
def hex_2323213 : String := "42414340440908444241070607074008444241430708430908410743070808430940084409084143074008074309400809"
theorem cover_2323213 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323213 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_2323213)
  decide +kernel
#print axioms cover_2323213
end Mub6.Numerical.CircleFullD0.Forest
