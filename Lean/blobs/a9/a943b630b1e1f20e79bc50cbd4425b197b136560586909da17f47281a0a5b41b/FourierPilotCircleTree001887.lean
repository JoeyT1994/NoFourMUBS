import FourierPilotCircleTree001888
import FourierPilotCircleTree001889
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001887
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![46, 49, 32, 53, 42]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001888.state FourierPilotCircleTree001889.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001888.covered FourierPilotCircleTree001889.covered
#print axioms covered
end FourierPilotCircleTree001887
