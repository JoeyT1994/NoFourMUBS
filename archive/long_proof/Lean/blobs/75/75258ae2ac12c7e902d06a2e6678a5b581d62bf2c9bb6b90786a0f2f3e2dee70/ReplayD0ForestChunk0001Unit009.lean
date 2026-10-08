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
def state_945371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 26)))
def hex_945371 : String := "4241440A43420940410609414443420940064408060909440A09090A414443400842080808434006424144430640060806440A43060641064408064042094105084241050A414408054408430605440843400A420A414408060A0A"
theorem cover_945371 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945371 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 91) (hex := hex_945371)
  decide +kernel
#print axioms cover_945371

def state_945463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 21) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 26)))
def hex_945463 : String := "41444340420A440841434008420708080842074407410707400A064340424109440A094144434042094408094244410707094441434008070708410943404209064207070940094207440709094443400A420A41440843400A4205050A0A0A43404209410609420941444340060909094443400A05090909424144070744070741444340420744070707074340420941094407094207074009074443404207410705070743404241074407074144434042070707070944430507434042090505094207410707404207410707074042094109440A09420741440707440607440A4340420A41440A43400A420A41440A430509050A0A42414407434042070707070A41444305064340424144050705414405430540090505420505404207414407070A07440543050A400A42064144060706"
theorem cover_945463 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945463 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 305) (hex := hex_945463)
  decide +kernel
#print axioms cover_945463

def state_945770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 52)))
def hex_945770 : String := "43404244084143080808440841080842440841434042080807400807430540080644084143050805404208084244064107064408410808"
theorem cover_945770 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945770 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_945770)
  decide +kernel
#print axioms cover_945770

def state_945827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 42) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 53)))
def hex_945827 : String := "4241444340424408060642444108084143064006420706434006424407060640084207084441080841064306400608404244080908424408410943400807084408414308050843400642410606064009420941094443060906444340420A0842414408434006054008080A414405430508054008420A0843400642414443064006420941060606444305400A420A4144050605064106444305400605064042094106440806424109440A0941444340064241090806400842080843060944434008420808084306094144434006424408060640084244084108080843064006424106060644434042080642410805054008420808430640064241444306080644430808064106440806"
theorem cover_945827 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945827 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 265) (hex := hex_945827)
  decide +kernel
#print axioms cover_945827


end Mub6.Numerical.CircleFullD0.Forest
