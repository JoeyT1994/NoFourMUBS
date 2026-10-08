import D0FullInterface
import ChartPartitionJoined
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1320587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_1320587 : String := "4142434441420A40070A424006084043440741090607430844050A41420A440A0A42440A0A440A4043440A0A0A0A444105420543400705050A4344410740074243090707414409094440420A07420A090A4407410743444007420A070A07424344420640060842440606444006410A060A4442430606434006414405420607064007410507420A43444006410A060A4440060A064344404142434406060707420643050641424308440740410706414208070843090742084308440740070844404142430544060605054142434409094440414206070641420A09420609400A0A43054409094243054406064305444005430541090505400541420A050544434007410742440743060607074344404107064142434440064107060A44070A434407400741074244070A07074243060643440740054142060505074041080541420A44430A0708424406064443054005410805054440074107424306060740084108420608"
theorem cover_1320587 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320587 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 357) (hex := hex_1320587)
  decide +kernel
#print axioms cover_1320587

def state_1320945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_1320945 : String := "4243444041054205430805050A4405400A054344404109424308440540090809410642080640410944420A090A410644420A06094440410543420507050540410A4344420A4007090A444205070A410A434442054009060A44050A"
theorem cover_1320945 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320945 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 91) (hex := hex_1320945)
  decide +kernel
#print axioms cover_1320945

def state_1321037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
def hex_1321037 : String := "43440840420844410A080A084440420543410508050540420A4344410A4006080A4441054306060A420A43444105080A44050A"
theorem cover_1321037 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321037 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_1321037)
  decide +kernel
#print axioms cover_1321037

def state_1321089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 2)))
def hex_1321089 : String := "4440414208430844084009080808404441424308404441420809080A44080A4309400909424308404408420843054144060A0608430840440843054109050841420A430544090942430544400A0707430544400543054109050544414208430840090808410A07"
theorem cover_1321089 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321089 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 103) (hex := hex_1321089)
  decide +kernel
#print axioms cover_1321089

def state_1321193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 4)))
def hex_1321193 : String := "40434142440540434105080505440540074341050805424405404308420507084407400708410742050743414205050805"
theorem cover_1321193 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321193 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_1321193)
  decide +kernel
#print axioms cover_1321193


end Mub6.Numerical.CircleFullD0.Forest
