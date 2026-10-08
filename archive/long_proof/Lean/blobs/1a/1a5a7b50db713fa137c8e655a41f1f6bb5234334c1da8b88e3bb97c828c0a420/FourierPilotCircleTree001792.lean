import FourierPilotCircleTree001793
import FourierPilotCircleTree001794
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001792
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![7, 4, 5, 5, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001793.state FourierPilotCircleTree001794.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001793.covered FourierPilotCircleTree001794.covered
#print axioms covered
end FourierPilotCircleTree001792
