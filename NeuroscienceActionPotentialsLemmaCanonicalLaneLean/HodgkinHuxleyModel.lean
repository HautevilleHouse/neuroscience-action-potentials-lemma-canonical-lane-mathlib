import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsLemmaCanonicalLaneLean

structure HodgkinHuxleyModelPackage where
  membraneCapacitance : ℝ
  sodiumConductance : ℝ
  potassiumConductance : ℝ
  leakConductance : ℝ
  sodiumReversalPotential : ℝ
  potassiumReversalPotential : ℝ
  leakReversalPotential : ℝ
  gateActivationVariables : Type
  gateInactivationVariables : Type
  differentialEquationsDefined : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyModelPackage) where
  differentialEquationsDefinedClosed : H.differentialEquationsDefined

def HodgkinHuxleyModelClosed (H : HodgkinHuxleyModelPackage) : Prop :=
  H.differentialEquationsDefined

theorem hodgkin_huxley_model_closed_from_evidence (H : HodgkinHuxleyModelPackage) (E : HodgkinHuxleyEvidence H) :
    HodgkinHuxleyModelClosed H := by
  exact E.differentialEquationsDefinedClosed

end HautevilleHouse
end NeuroscienceActionPotentialsLemmaCanonicalLaneLean
