using System;
using System.Collections.Generic;
using System.Text;

namespace TestComplex
{
	public class Users
	{
        public int id;
        public string Name;
        public string Password;
        public string Login;

        public void Add()
		{
			
		}

		public void Delete()
		{
			
		}

		public void Save()
		{
			
		}

		public void Change()
		{
			
		}

        public Users(string login, string password)
        {
            Login = login;
            Password = password;
            id = -1;
        }

		public void ChangePassword()
		{
			
		}

        /// <summary>
        /// Атентификация
        /// </summary>
        /// <returns></returns>
        public bool LogIn()
        {//TODO: придумать как сделать доступ к БД
            //return UserInterface.Base.CheckLogin(this);
            return false;
        }
    }
}
