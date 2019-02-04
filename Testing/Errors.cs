using System;
using System.Collections.Generic;
using System.Text;

namespace TestComplex
{
	public class Errors
	{
		DateTime DateTime;
		string Name;
		string Type;

		private void WriteLog()
		{
			
		}

		private void WriteDB()
		{
			
		}

        static public void Write(string text, User user)
        {
            WriteLog(text, user);
            WriteDB(text, user);
        }

        static private void ShowMessage(string ErrorText)
        {
            //вывод ошибки пользователю
            MessageBox.Show(ErrorText, "Ошибка", MessageBoxButtons.OK, MessageBoxIcon.Error);
            RegisterStartupScript("key", "<script>alert('test!!!');</script>");
        }

        /// <summary>
        /// Перехват, обработка и запись ошибок в лог (БД и файл).
        /// </summary>
        /// <param name="ex"></param>
        static public void Handle(Exception ex)
		{
            //TODO: Виды ошибок
            string ErrorText;
            string ErrorTextLog;
            if (ex.StackTrace is null)
            {
                ErrorText = ex.GetType().FullName + ": " + ex.Message + "\n"; //TODO: Временно
                ErrorTextLog = ErrorText;//ex.ToString();
            }
            else
            {

                ErrorText = ex.GetType().FullName + ": " + ex.Message + "\n" + (ex.StackTrace + "               ")
                                        .Substring(0, (ex.StackTrace + "               ").IndexOf("строка") + 15); //TODO: Временно
                ErrorTextLog = ErrorText;//ex.ToString();
            }

            ShowMessage(ErrorText);

            Write(ErrorTextLog, UserInterface.User);
            //TODO: обработка варианта ошибки через if и подстановка соответствующего сообщения

        }
    }
}
