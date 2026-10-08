import AdaptiveCircleTree

import FourierPilotProofBatch0001

/- Preserved declarations from candidate module FourierPilotCircleTree000145. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000145
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![6, 5, 2, 3, 3]
def tree : Tree 48 := (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨2, by decide⟩))) (.reject ⟨4, by decide⟩)) (.reject ⟨2, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩))))) (.reject ⟨1, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩)))) (.reject ⟨4, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨4, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨5, by decide⟩)))) (.reject ⟨5, by decide⟩)) (.reject ⟨5, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨5, by decide⟩)) (.reject ⟨5, by decide⟩))) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩)) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩))) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨5, by decide⟩)) (.reject ⟨5, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)))) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))))) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨5, by decide⟩)) (.reject ⟨1, by decide⟩))))) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨5, by decide⟩))) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨1, by decide⟩)))) (.reject ⟨0, by decide⟩)))) (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨5, by decide⟩))))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree000145


/- Preserved declarations from candidate module FourierPilotCircleTree000146. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000146
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![7, 2, 2, 3, 3]
def tree : Tree 48 := (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨5, by decide⟩)))) (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨5, by decide⟩))) (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩))) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨1, by decide⟩))))) (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨0, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)))) (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)))) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)))))) (.reject ⟨2, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨3, by decide⟩))) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨3, by decide⟩)))) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩))))) (.reject ⟨1, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)))) (.reject ⟨0, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨3, by decide⟩))) (.reject ⟨3, by decide⟩)))) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨3, by decide⟩))))) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩)))) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨5, by decide⟩)) (.reject ⟨1, by decide⟩))))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree000146


/- Preserved declarations from candidate module FourierPilotCircleTree000149. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000149
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![3, 2, 3, 2, 2]
def tree : Tree 48 := (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨3, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨2, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨1, by decide⟩)))) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨2, by decide⟩)))) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩))))) (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨5, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩))))))) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨2, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨3, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨4, by decide⟩)))) (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩)))))) (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩))))))) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)))) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩))))) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨5, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨4, by decide⟩)) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩))))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨4, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨0, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))))))) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩))) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)))))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree000149


/- Preserved declarations from candidate module FourierPilotCircleTree000152. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000152
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![6, 4, 3, 2, 3]
def tree : Tree 48 := (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨5, by decide⟩))) (.reject ⟨5, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨2, by decide⟩)))) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨5, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩))))) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨2, by decide⟩))))))) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨5, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩))) (.reject ⟨5, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩))) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨4, by decide⟩))))) (.reject ⟨5, by decide⟩)))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨5, by decide⟩)) (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨5, by decide⟩)) (.reject ⟨4, by decide⟩))))) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨2, by decide⟩)) (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨5, by decide⟩)))) (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨2, by decide⟩)))) (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨5, by decide⟩)))))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree000152


/- Preserved declarations from candidate module FourierPilotCircleTree000154. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000154
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![6, 5, 6, 2, 3]
def tree : Tree 48 := (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨5, by decide⟩))) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨3, by decide⟩)) (.reject ⟨5, by decide⟩))))) (.reject ⟨3, by decide⟩)) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩)))))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨3, by decide⟩))) (.reject ⟨2, by decide⟩))) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩)) (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨3, by decide⟩)))) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨3, by decide⟩)))))) (.reject ⟨3, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨5, by decide⟩))) (.reject ⟨5, by decide⟩)) (.reject ⟨2, by decide⟩)))) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩))))))) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨5, by decide⟩))) (.reject ⟨0, by decide⟩))) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨5, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩))) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩))))) (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨4, by decide⟩))))) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨2, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩))))) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨0, by decide⟩))) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨3, by decide⟩)))) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩))))) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨5, by decide⟩)) (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨5, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)))) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨5, by decide⟩)))) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)))) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨1, by decide⟩))) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)))) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨2, by decide⟩)))) (.reject ⟨0, by decide⟩)))))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree000154


/- Preserved declarations from candidate module FourierPilotCircleTree000155. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000155
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![6, 5, 7, 2, 3]
def tree : Tree 48 := (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩)))) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨3, by decide⟩))))) (.reject ⟨4, by decide⟩)) (.reject ⟨3, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨2, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨5, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨0, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩))) (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨4, by decide⟩)))) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨5, by decide⟩)))))) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨5, by decide⟩))))) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨2, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨5, by decide⟩)) (.reject ⟨3, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩)))) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)))) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨3, by decide⟩)))))))))) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩))) (.reject ⟨2, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨3, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))) (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨3, by decide⟩))))) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩))))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨2, by decide⟩))) (.reject ⟨2, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩))))) (.reject ⟨0, by decide⟩)))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩)))) (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩))) (.reject ⟨4, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨2, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨3, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨4, by decide⟩))) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨4, by decide⟩)))) (.reject ⟨3, by decide⟩))) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨4, by decide⟩))) (.reject ⟨3, by decide⟩)))) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩))) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩))))) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))) (.reject ⟨1, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨2, by decide⟩)) (.reject ⟨1, by decide⟩)))))))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩))) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨5, by decide⟩))))) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨5, by decide⟩)) (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨5, by decide⟩)))) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩))))) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨3, by decide⟩))) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨3, by decide⟩)))) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨5, by decide⟩)))))) (.reject ⟨5, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨3, by decide⟩)))) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩)))) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨3, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩)) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩)))) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩)) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩)))) (.reject ⟨1, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨4, by decide⟩)))) (.reject ⟨4, by decide⟩)))) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨2, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨5, by decide⟩)) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨2, by decide⟩)))))) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨2, by decide⟩)) (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨5, by decide⟩))) (.reject ⟨1, by decide⟩))))))) (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨3, by decide⟩))) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨2, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨3, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨2, by decide⟩)))) (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩))))) (.reject ⟨3, by decide⟩)))))))) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨4, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨4, by decide⟩))) (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨5, by decide⟩)))) (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨3, by decide⟩))) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨3, by decide⟩)) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨3, by decide⟩))))))) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨5, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨5, by decide⟩)))) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩))) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨5, by decide⟩)))) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨5, by decide⟩)) (.reject ⟨4, by decide⟩)))) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨2, by decide⟩))) (.reject ⟨4, by decide⟩))))) (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩)) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩))))) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨2, by decide⟩))))) (.reject ⟨2, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)))) (.reject ⟨3, by decide⟩)))) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨5, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩))) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨4, by decide⟩))) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩))))))) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))))))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨3, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨2, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨3, by decide⟩)) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨4, by decide⟩)))))))) (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨4, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))) (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨5, by decide⟩)) (.reject ⟨4, by decide⟩))) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩))))))) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨3, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨3, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨3, by decide⟩)))))))) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨4, by decide⟩)))) (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩))))) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨2, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨3, by decide⟩)) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨3, by decide⟩))))))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨4, by decide⟩))) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩))) (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩)))) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩)))) (.reject ⟨3, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨4, by decide⟩))) (.reject ⟨4, by decide⟩)) (.reject ⟨3, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩)) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨4, by decide⟩))))))))))))))) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨1, by decide⟩)))) (.reject ⟨1, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨1, by decide⟩))) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)))) (.reject ⟨1, by decide⟩)))) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩)))) (.reject ⟨2, by decide⟩))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨2, by decide⟩))) (.reject ⟨1, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨4, by decide⟩))) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)))) (.reject ⟨1, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩))) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)))) (.reject ⟨1, by decide⟩)))) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨2, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))) (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩))) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩)))))) (.reject ⟨2, by decide⟩)))))) (.reject ⟨2, by decide⟩))))))))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree000155


/- Preserved declarations from candidate module FourierPilotCircleTree000157. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000157
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![7, 4, 3, 2, 3]
def tree : Tree 48 := (.split ⟨2, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨5, by decide⟩))) (.reject ⟨5, by decide⟩))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree000157


/- Preserved declarations from candidate module FourierPilotCircleTree000159. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000159
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![7, 5, 6, 2, 3]
def tree : Tree 48 := (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨5, by decide⟩)) (.reject ⟨5, by decide⟩))) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨5, by decide⟩))))) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree000159


/- Preserved declarations from candidate module FourierPilotCircleTree000161. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000161
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![7, 5, 7, 4, 3]
def tree : Tree 48 := (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨5, by decide⟩))) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨5, by decide⟩)) (.reject ⟨5, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨2, by decide⟩))) (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨5, by decide⟩)) (.reject ⟨5, by decide⟩)))))) (.reject ⟨5, by decide⟩))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree000161


/- Preserved declarations from candidate module FourierPilotCircleTree000163. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000163
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![7, 5, 7, 5, 6]
def tree : Tree 48 := (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨5, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree000163


/- Preserved declarations from candidate module FourierPilotCircleTree000165. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000165
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![7, 10, 7, 5, 7]
def tree : Tree 48 := (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩)))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree000165


/- Preserved declarations from candidate module FourierPilotCircleTree000169. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000169
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![14, 11, 14, 10, 7]
def tree : Tree 48 := (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨5, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩))))) (.reject ⟨0, by decide⟩)))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree000169


/- Preserved declarations from candidate module FourierPilotCircleTree000171. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000171
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![14, 11, 15, 10, 14]
def tree : Tree 48 := (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩))))) (.reject ⟨0, by decide⟩))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree000171


/- Preserved declarations from candidate module FourierPilotCircleTree000173. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000173
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![14, 22, 15, 10, 15]
def tree : Tree 48 := (.reject ⟨5, by decide⟩)
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree000173


/- Preserved declarations from candidate module FourierPilotCircleTree000175. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000175
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![14, 23, 15, 20, 15]
def tree : Tree 48 := (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨2, by decide⟩))) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨5, by decide⟩))))) (.reject ⟨5, by decide⟩))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree000175


/- Preserved declarations from candidate module FourierPilotCircleTree000178. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000178
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![28, 23, 30, 21, 15]
def tree : Tree 48 := (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)))))) (.reject ⟨5, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩))) (.reject ⟨5, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨2, by decide⟩)) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)))) (.reject ⟨5, by decide⟩)) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩))) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)))))) (.reject ⟨0, by decide⟩)))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree000178

#print axioms FourierPilotCircleTree000145.covered
#print axioms FourierPilotCircleTree000146.covered
#print axioms FourierPilotCircleTree000149.covered
#print axioms FourierPilotCircleTree000152.covered
#print axioms FourierPilotCircleTree000154.covered
#print axioms FourierPilotCircleTree000155.covered
#print axioms FourierPilotCircleTree000157.covered
#print axioms FourierPilotCircleTree000159.covered
#print axioms FourierPilotCircleTree000161.covered
#print axioms FourierPilotCircleTree000163.covered
#print axioms FourierPilotCircleTree000165.covered
#print axioms FourierPilotCircleTree000169.covered
#print axioms FourierPilotCircleTree000171.covered
#print axioms FourierPilotCircleTree000173.covered
#print axioms FourierPilotCircleTree000175.covered
#print axioms FourierPilotCircleTree000178.covered
