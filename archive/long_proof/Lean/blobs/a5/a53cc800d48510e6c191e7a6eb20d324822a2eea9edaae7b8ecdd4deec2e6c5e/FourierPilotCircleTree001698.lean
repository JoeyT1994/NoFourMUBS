import FourierPilotCircleTree001699
import FourierPilotCircleTree001720
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001698
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![20, 30, 27, 53, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001699.state FourierPilotCircleTree001720.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001699.covered FourierPilotCircleTree001720.covered
#print axioms covered
end FourierPilotCircleTree001698
