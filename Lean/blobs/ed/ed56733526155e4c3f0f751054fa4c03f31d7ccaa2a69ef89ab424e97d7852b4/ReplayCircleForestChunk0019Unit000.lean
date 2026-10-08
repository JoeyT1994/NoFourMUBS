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
def state_142294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 15)))
def hex_142294 : String := "404306064341424440414243444009410A42090A0909430A0742434440064142090606060906414243444041424305050A42430A090A41420543050542430505430A8240410542050A0544404142090709824009410509430A4440424107430A0707824042090642414305054344400642050A050941084306064243444041424344080909430A44400641424308090A080642430809430606414243078243440707824207430782404142090606414205430A444006050542070644400982094344400A4142430A820A424307820A4006410A0644404142434440064142440A060606060906068240064142430609060640064142430505430A444006420506064243444006410506060906444006410A42430A44400641428206060606064244400642414344404208060706444009420A4182430709094307444006070641434440064207060644400642418206060606060641424440094341420944070742094440094341424440074382070907424440090A09440506410742090709090944400643410742444006434107050706060706424440064342094144400643420A050A06060906444006430641060506"
theorem cover_142294 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142294 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 20) (count := 433) (hex := hex_142294)
  decide +kernel
#print axioms cover_142294

def state_142727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 7)))
def hex_142727 : String := "444043050543050540064306410606"
theorem cover_142727 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142727 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_142727)
  decide +kernel
#print axioms cover_142727

def state_142742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 7)))
def hex_142742 : String := "42444043050543050540064306420606440506"
theorem cover_142742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142742 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_142742)
  decide +kernel
#print axioms cover_142742

def state_142761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 7)))
def hex_142761 : String := "41424440430707434142440740074307070742440540090A05410742440509054009434142090742094440064341070507060944400743050540064307074244404305054305054006434209410605094405400505"
theorem cover_142761 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142761 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 85) (hex := hex_142761)
  decide +kernel
#print axioms cover_142761

def state_142848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_142848 : String := "4142434441420843400844414307070707400A0742084307400744070808444142050A42400808400A4344410706080A0A434441434042444143050A0508440541080542444143400505400A070741430707074441430540050505410905400A4244410A070744410A43400505060A434005054042070607414344400808070A43074440074207070844410A400642430606060A4243084442084006414306060608434407084440060644400A410A0808"
theorem cover_142848 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142848 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 177) (hex := hex_142848)
  decide +kernel
#print axioms cover_142848


end Mub6.Numerical.CircleFullPrototype.Forest
