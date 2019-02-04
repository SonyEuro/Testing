using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestComplex;

namespace Testing
{
    public partial class FormLogInTeacher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnter_Click(object sender, EventArgs e)
        {
            string Login = tbLogin.Text;
            string Password = tbPassword.Text;
            Users User = new Users(Login, Password);
            tbLogin.Text = "Hello world";
            DataBase db = new DataBase();
            db.Connect();
            if (db.connected)
                tbLogin.Text = "подключился";
            else
                tbLogin.Text = "Не подключился";

            //TODO: UserLog.Log("Попытка входа в систему.");

            if (!User.LogIn())
            {
                //TODO: UserLog.Log("Неверный логин или пароль.", true);
                //tbPassword.Text = "";
                return;
            }
            //TODO: UserLog.Log("Успешный вход в систему.");
            //Errors.Write("Вход в систему.", User);
        }
    }
}