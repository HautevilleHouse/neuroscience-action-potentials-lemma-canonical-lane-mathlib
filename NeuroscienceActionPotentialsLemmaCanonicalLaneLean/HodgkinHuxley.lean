import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsLemmaCanonicalLaneLean

structure HodgkinHuxleyPackage where
  sodiumCurrent : Type u
  potassiumCurrent : Type v
  leakCurrent : Type w
  gatingVariables : Type x
  voltageClamp : Prop
  rateConstants : Prop
  currentBalanceEquation : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  voltageClampClosed : H.voltageClamp
  rateConstantsClosed : H.rateConstants
  currentBalanceEquationClosed : H.currentBalanceEquation

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.voltageClamp ∧ H.rateConstants ∧ H.currentBalanceEquation

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage)
    (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.voltageClampClosed
    (And.intro E.rateConstantsClosed E.currentBalanceEquationClosed)

end NeuroscienceActionPotentialsLemmaCanonicalLaneLean
end HautevilleHouse