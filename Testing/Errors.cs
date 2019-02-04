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
            //����� ������ ������������
            MessageBox.Show(ErrorText, "������", MessageBoxButtons.OK, MessageBoxIcon.Error);
            RegisterStartupScript("key", "<script>alert('test!!!');</script>");
        }

        /// <summary>
        /// ��������, ��������� � ������ ������ � ��� (�� � ����).
        /// </summary>
        /// <param name="ex"></param>
        static public void Handle(Exception ex)
		{
            //TODO: ���� ������
            string ErrorText;
            string ErrorTextLog;
            if (ex.StackTrace is null)
            {
                ErrorText = ex.GetType().FullName + ": " + ex.Message + "\n"; //TODO: ��������
                ErrorTextLog = ErrorText;//ex.ToString();
            }
            else
            {

                ErrorText = ex.GetType().FullName + ": " + ex.Message + "\n" + (ex.StackTrace + "               ")
                                        .Substring(0, (ex.StackTrace + "               ").IndexOf("������") + 15); //TODO: ��������
                ErrorTextLog = ErrorText;//ex.ToString();
            }

            ShowMessage(ErrorText);

            Write(ErrorTextLog, UserInterface.User);
            //TODO: ��������� �������� ������ ����� if � ����������� ���������������� ���������

        }
    }
}
