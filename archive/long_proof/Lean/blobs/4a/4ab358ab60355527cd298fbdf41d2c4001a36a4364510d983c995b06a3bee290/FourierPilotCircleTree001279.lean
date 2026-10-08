import FourierPilotCircleTree001280
import FourierPilotCircleTree001307
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001279
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![27, 20, 8, 8, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001280.state FourierPilotCircleTree001307.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001280.covered FourierPilotCircleTree001307.covered
#print axioms covered
end FourierPilotCircleTree001279
