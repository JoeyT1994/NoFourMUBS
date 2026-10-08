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
def state_2286532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 7)))
def hex_2286532 : String := "4144404243414409090A410906434144074240434107090707074408420A08410744070742094341070A074042434109090643414442404341090909094043410744074240430907074043410544070707070707424043410909060940434144424043410509070707424008084043410544070807074442404341090941070909404341440742404341050907070744420A40430507074240430A41090909404341440542400505050A41074407420A07434105090707074240434144090844094206404309060906094043414442404341084409E541074407E509404341054405E50707E544424043414409E50A414409E5440AE509404341444240430541050A0905E544420A400808E5414407E54442430A400A07430807E543414405E54409E507E54144074206074442434006060607420643E506434144074209074409420940E50707410744074206074341070907444240430909094043414408420A400808084144074243090607084309074240434109090609404341444240430A0A09404341440A420A400808084144420A0742430A0643080708430A4107084240434144094206400A090A06094043414442400A0940430A414408E508430A0AE5440A420A404307050A41444243400606064340414408E508410708400606420643E50644420A08420543050543414409420940E5090A41440942064043090607440942064043080509440A420A40430A050A41444206434041070607064206434006060644420608420543400505054341090941090941440706444206070642094341090907444042430A0608420908404209434144420A084240050940430A050A0A41060609"
theorem cover_2286532 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286532 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 27) (count := 617) (hex := hex_2286532)
  decide +kernel
#print axioms cover_2286532

def state_2287155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 4)))
def hex_2287155 : String := "4143094006420744050A09"
theorem cover_2287155 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287155 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2287155)
  decide +kernel
#print axioms cover_2287155

def state_2287169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 10)))
def hex_2287169 : String := "404241430A06074106094241434405404241060706054406400642410643080606430944074007420741430906074143050A43094409400942410A0909"
theorem cover_2287169 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287169 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_2287169)
  decide +kernel
#print axioms cover_2287169

def state_2287231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 11)))
def hex_2287231 : String := "42410A07410A434409424006434441060741060706060A"
theorem cover_2287231 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287231 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 23) (hex := hex_2287231)
  decide +kernel
#print axioms cover_2287231

def state_2287255 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 11)))
def hex_2287255 : String := "4143444042410A43440707070A4208410843054405084042410843080A0A08444006424106430A060A0A43444042074341440940074207434106070607410A0742434108074144070807434144054008084409400708414440420709054042070A08440940074207434409410807440941080740420743444140074207434408080A07414007080744410A07410A0542434408084441080741080743444108400708410840070844414042080A08400742074344410807410840070644410807410840070841400A084042054407054208444308410840050843084105054440074241430707074143440A0A0A43440740074207434407410A070A44070A4042070A424441434007080A0741430A050544410A43400742074443410A070A43410A070A0A410A43400542054443410A05050505"
theorem cover_2287255 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287255 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 307) (hex := hex_2287255)
  decide +kernel
#print axioms cover_2287255

def state_2287563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 11)))
def hex_2287563 : String := "4344400A05400A4241074344400A05070A070A"
theorem cover_2287563 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287563 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 19) (hex := hex_2287563)
  decide +kernel
#print axioms cover_2287563

def state_2287584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 22)))
def hex_2287584 : String := "4042434144050A0941060909424341054405400905414405400A42430505054409400942434405094409410A09094305410509"
theorem cover_2287584 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287584 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 51) (hex := hex_2287584)
  decide +kernel
#print axioms cover_2287584

def state_2287636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 23)))
def hex_2287636 : String := "424344410A40074207430944090A410A4007420743444140064243444106074106070A06400742070941400A42434441080741084007080A0A40074207CF440A410A40050A0A4344410609410642400643444106094106424006CF4006CF0A060A"
theorem cover_2287636 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287636 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 97) (hex := hex_2287636)
  decide +kernel
#print axioms cover_2287636


end Mub6.Numerical.CircleFullD0.Forest
