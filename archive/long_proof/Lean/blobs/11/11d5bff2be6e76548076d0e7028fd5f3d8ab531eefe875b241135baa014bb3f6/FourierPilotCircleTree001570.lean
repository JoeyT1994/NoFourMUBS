import FourierPilotCircleTree001571
import FourierPilotCircleTree001608
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001570
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![7, 6, 4, 5, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001571.state FourierPilotCircleTree001608.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001571.covered FourierPilotCircleTree001608.covered
#print axioms covered
end FourierPilotCircleTree001570
