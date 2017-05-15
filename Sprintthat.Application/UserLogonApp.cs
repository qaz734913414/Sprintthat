using Sprintthat.Repository.IRepository;
using Sprintthat.Repository.Repository;

namespace Sprintthat.Application
{
    public class UserLogonApp
    {
        private IUserRepository _userRepository = new UserRepository();

        public bool CheckLogin(string userName, string password)
        {
            var user = _userRepository.Find(entity => entity.FAccount.Equals(userName) && entity.FPassword.Equals(password));
            return user != null;
        }
    }
}
