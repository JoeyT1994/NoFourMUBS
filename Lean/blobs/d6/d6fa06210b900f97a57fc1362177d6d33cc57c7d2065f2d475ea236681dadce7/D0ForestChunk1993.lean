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
def state_2558924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 191) else (if j.val < 3 then 115 else (if j.val < 4 then 117 else 97)))
def hex_2558924 : String := "44404243050505424341444042430505070707444005420607054144084005070843410744400507054144080708400542430505430505"
theorem cover_2558924 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558924 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_2558924)
  decide +kernel
#print axioms cover_2558924

def state_2558979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 95) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 97)))
def hex_2558979 : String := "42430641444042070706060643074107444042430707070707"
theorem cover_2558979 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558979 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_2558979)
  decide +kernel
#print axioms cover_2558979

def state_2559006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 94) else (if j.val < 3 then 57 else (if j.val < 4 then 59 else 96)))
def hex_2559006 : String := "40424344410506414006054006420808060642430505430505"
theorem cover_2559006 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559006 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_2559006)
  decide +kernel
#print axioms cover_2559006

def state_2559034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 114 else (if j.val < 4 then 118 else 97)))
def hex_2559034 : String := "41444042430A06064243070707400A07444042434144060A4408400808080642434107440807084307084042430A410A44080A0A4243070707"
theorem cover_2559034 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559034 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_2559034)
  decide +kernel
#print axioms cover_2559034

def state_2559091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 114 else (if j.val < 4 then 119 else 97)))
def hex_2559091 : String := "41440640064207064408400808"
theorem cover_2559091 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559091 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_2559091)
  decide +kernel
#print axioms cover_2559091

def state_2559104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 115 else (if j.val < 4 then 59 else 97)))
def hex_2559104 : String := "434144060A4440064243070606400A0706"
theorem cover_2559104 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559104 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_2559104)
  decide +kernel
#print axioms cover_2559104

def state_2559121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 94) else (if j.val < 3 then 57 else (if j.val < 4 then 59 else 97)))
def hex_2559121 : String := "42434107444042070705074144050744080743074107440807"
theorem cover_2559121 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559121 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_2559121)
  decide +kernel
#print axioms cover_2559121

def state_2559147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 95) else (if j.val < 3 then 57 else (if j.val < 4 then 59 else 96)))
def hex_2559147 : String := "404243414408400808080808420808"
theorem cover_2559147 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559147 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_2559147)
  decide +kernel
#print axioms cover_2559147
end Mub6.Numerical.CircleFullD0.Forest
