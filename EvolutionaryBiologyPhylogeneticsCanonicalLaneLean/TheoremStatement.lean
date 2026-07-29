import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyPhylogeneticsCanonicalLaneLean

structure PhylogeneticObject where
  objectType : Type
  objectData : String
  objectClosed : Prop
  conclusion : objectClosed

def ConstrainedPhylogenyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_phylogeny_endgame (A : AdmissibleClass) :
    ConstrainedPhylogenyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EvolutionaryBiologyPhylogeneticsCanonicalLaneLean
end HautevilleHouse
