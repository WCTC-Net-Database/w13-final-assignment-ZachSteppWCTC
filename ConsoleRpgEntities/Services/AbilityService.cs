using ConsoleRpgEntities.Models.Attributes;
using ConsoleRpgEntities.Models.Characters;
using ConsoleRpgEntities.Models.Abilities.PlayerAbilities;


namespace ConsoleRpgEntities.Services
{
    public class AbilityService
    {
        private readonly IOutputService _outputService;

        public AbilityService(IOutputService outputService)
        {
            _outputService = outputService;
        }

        public void Activate(IAbility ability, IPlayer user, ITargetable target)
        {
            if (ability is ShoveAbility shoveAbility)
            {
                // Shove ability logic
                _outputService.WriteLine($"{user.Name} uses {shoveAbility.Name}, pushing {target.Name} back {shoveAbility.Distance} feet, and dealing {shoveAbility.Damage} damage!");
                target.Health -= shoveAbility.Damage;
            }
            else if (ability is SmashAbility smashAbility)
            {
                _outputService.WriteLine($"{user.Name} deals a devestating {smashAbility.Name} to {target.Name}, dealing {smashAbility.Damage} damage!");
                target.Health -= smashAbility.Damage;
            }
        }
    }
}
