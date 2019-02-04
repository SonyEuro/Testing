using System;
using System.Collections.Generic;
using System.Text;

namespace TestComplex
{
	public class Workers : Users
	{
		string Surname;
		string SecondName;
		Brigades Brigade;
		//position Position;
		DateTime DayOfBirth;
		DateTime DayOfPosition;

		public Workers(string Login,string Password) : base(Login, Password)
		{
			
		}
	}
}
