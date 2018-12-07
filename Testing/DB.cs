using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using System.Data;
using System.Threading;

namespace SPFS
{
    public class DB
    {
        /// <summary>
        /// IP Адрес сервера БД MySQL
        /// </summary>
        string IPAddress;
        /// <summary>
        /// Номер порта сервера БД MySQL
        /// </summary>
        int Port;
        /// <summary>
        /// Имя базы данных
        /// </summary>
        string DBName = "sector_status_map";
        /// <summary>
        /// Версия схемы БД
        /// </summary>
        string Version;

        MySqlConnectionStringBuilder mysqlCSB;
        MySqlConnection myConnection;
        MySqlCommand command;
        /// <summary>
        /// Конструктор класса работы с БД. 
        /// Задаются первоначальные жизненноважные настройки.
        /// </summary>
        public DB()
        {
            mysqlCSB = new MySqlConnectionStringBuilder();
            mysqlCSB.UserID = "RZD";//"Admin";// "RZD";
            mysqlCSB.Password = "rzd";//"1234";// "rzd";
            mysqlCSB.ConvertZeroDateTime = true;
            mysqlCSB.SslMode = MySqlSslMode.None;
            mysqlCSB.Database = "sectors_status_map";
            mysqlCSB.CharacterSet = "utf8";
            mysqlCSB.AllowUserVariables = true;
        }

        //TODO: Проверка на доступность сервера, иначе ошибки пытаются писаться в БД

        /// <summary>
        /// Подключение с серверу базы данных.
        /// </summary>
        public void Connect()
        {
            try
            {
                myConnection = new MySqlConnection(mysqlCSB.ConnectionString);
                myConnection.Open();
                connected = true;
            }
            /*catch (Exception)
            {
                string msg = "Сервер базы данных недоступен!";
                UserLog.Log(msg);
                Errors.Handle(new Exception(msg));
                Thread.EndThreadAffinity();
            }*/
            catch (InvalidOperationException)
            {

            }
        }

        private void Disconnect()
        {
            myConnection.Close();
            connected = false;
        }

        public string GetPassword(string password)
        {
            string query = "select PASSWORD('" + password + "')";
            return ((string)Select(query).Rows[0][0]);
        }

        public bool CheckLogin(User usr)
        {

            //TODO:вернуть номер участка, ид, права доступа
            string query = "select u.ID, u.PASSWORD, u.NUM_SECTOR, R.ROLE from user u left join role r on r.id=u.role where LOGIN='" + usr.Login + "'";
            DataTable dt = Select(query);
            if (dt.Rows.Count != 0)
            {
                string realPassword = (string)dt.Rows[0][1];//пароль
                if (GetPassword(usr.Password).Equals(realPassword))
                {
                    usr.ID = (int)dt.Rows[0][0]; //ID
                    usr.Sector = (int)dt.Rows[0][2]; //NUM_SECTOR
                                                     //usr.SetRules((string)dt.Tables[0].Rows[0][3]); //ROLE
                    return true;
                }
            }
            return false;
        }

        /// <summary>
        /// Установка настроек соединения с сервером БД
        /// </summary>
        /// <param name="ip">IP-адрес сервера</param>
        /// <param name="port">Порт сервера</param>
        public void SetConnectionSettings(string ip, string port, string timeout = "5")
        {
            IPAddress = ip;
            Port = Convert.ToInt16(port);
            mysqlCSB.Server = ip;
            mysqlCSB.Port = Convert.ToUInt16(port);
            if (!(timeout == "" || timeout == " "))
                mysqlCSB.ConnectionTimeout = Convert.ToUInt16(timeout);
            else
            {
                mysqlCSB.ConnectionTimeout = 5;
            }

        }

        public void WriteSystemError(string errorText, string dateTime, int ID)
        {
            string query = @"Insert into system_log (Log,Time,User) values ('" +
                                                        errorText + "'," +
                                                        //" convert(datetime,'"+dateTime + "')," +
                                                        "CURTIME()," +
                                                        ID.ToString() + ")";
            Insert(query);
        }

        public void WriteUserLog(string errorText, string dateTime, int ID)
        {
            string query = @"Insert into user_log (Log,Time,User) values ('" +
                                                        errorText + "'," +
                                                        //" convert(datetime,'"+dateTime + "')," +
                                                        "CURTIME()," +
                                                        ID.ToString() + ")";
            Insert(query);
        }

        //public void Insert(string query)
        //{
        //    //string query="";
        //    int s=ExecuteQuery(query).Tables[0].Rows.Count;
        //}

        //public void Update()
        //{
        //    string query = "";
        //    int s = ExecuteQuery(query).Tables[0].Rows.Count;
        //}
        bool connected = false;

        /// <summary>
        /// Выполнение запроса к БД. Возвращает DataTable с данными.
        /// </summary>
        /// <param name="query">Строка запроса к БД</param>
        /// <returns>DataTable с данными.</returns>
        public DataTable Select(string query)
        {
            Connect();
            DataSet dataSet = new DataSet();
            if (!connected)
                return null;
            MySqlDataAdapter dataAdapter = new MySqlDataAdapter(query, myConnection);
            dataAdapter.Fill(dataSet);
            Disconnect();
            return dataSet.Tables[0];
        }

        /// <summary>
        /// Выполнение запроса к БД. Возвращает List<string> с данными
        /// </summary>
        /// <param name="query">Строка запроса к БД</param>
        /// <returns></returns>
        public List<string> SelectList(string query)
        {
            Connect();
            MySqlDataAdapter dataAdapter = new MySqlDataAdapter(query, myConnection);
            DataSet dataSet = new DataSet();
            dataAdapter.Fill(dataSet);
            Disconnect();
            if (dataSet.Tables[0].Rows.Count > 0)
                return dataSet.Tables[0].Rows.OfType<DataRow>().Select(r => r.ItemArray[0].ToString()).ToList<string>();
            else
                return null;
        }

        /// <summary>
        /// Выполнение запроса к БД. Возвращает DataSet (таблицу) с данными
        /// </summary>
        /// <param name="query">Строка запроса к БД</param>
        /// <returns></returns>
        public string SelectOne(string query)
        {
            Connect();
            MySqlDataAdapter dataAdapter = new MySqlDataAdapter(query, myConnection);
            DataSet dataSet = new DataSet();
            dataAdapter.Fill(dataSet);
            Disconnect();
            if (dataSet.Tables[0].Rows.Count > 0)
                return dataSet.Tables[0].Rows[0][0].ToString();
            else
                return null;
        }

        /// <summary>
        /// Выполняет обновление данных
        /// </summary>
        /// <param name="query">Строка запроса к БД</param>
        /// <returns></returns>
        public void Update(string query)
        {
            try
            {
                Connect();
                new MySqlCommand("START TRANSACTION", myConnection).ExecuteNonQuery();
                command = new MySqlCommand(query, myConnection);
                command.ExecuteNonQuery();
                new MySqlCommand("COMMIT", myConnection).ExecuteNonQuery();
                //if (command.ExecuteNonQuery() != 1)
                //{
                //    throw new Exception("Ошибка вставки данных в БД. " + query);
                //}
            }
            catch (Exception ex)
            {
                Errors.Handle(ex);
            }
            finally
            {
                Disconnect();
            }
            //return true;
        }

        /// <summary>
        /// Выполнение запроса к БД. Возвращает DataSet (таблицу) с данными
        /// </summary>
        /// <param name="query">Строка запроса к БД</param>
        /// <returns></returns>
        public void Insert(string query)
        {
            try
            {
                Connect();
                new MySqlCommand("START TRANSACTION", myConnection).ExecuteNonQuery();
                command = new MySqlCommand(query, myConnection);
                command.ExecuteNonQuery();
                new MySqlCommand("COMMIT", myConnection).ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Errors.Handle(ex);
                inputBox.Show(ex.ToString(), query);
            }
            finally
            {
                Disconnect();
            }
        }

        InputBox inputBox = new InputBox();

        public string GetNames(string table, string field)
        {
            string query = @"SELECT column_comment
                                                        FROM information_schema.columns
                                                           WHERE table_schema = 'sectors_status_map' and 
                                                                table_name = '" + table +
                                                                "' and COLUMN_NAME='" + field + "'";
            //string text = new MySqlCommand(query, myConnection).ExecuteScalar().ToString();
            string columnName = ((string)Select(query).Rows[0][0]);

            query = @"SELECT table_comment
                                                        FROM information_schema.tables
                                                           WHERE table_schema = 'sectors_status_map' and 
                                                                table_name = '" + table + "'";
            //string text = new MySqlCommand(query, myConnection).ExecuteScalar().ToString();
            string tableName = GetNameTable(table);

            //TablesColumns.Add(new List<string>());
            //TablesColumns[TablesColumns.Count - 1].Add(table);
            //TablesColumns[TablesColumns.Count - 1].Add(field);
            //ColumnsName.Add(tableName + ". " + columnName);
            return tableName + ". " + columnName;
        }

        public string GetNameTable(string table)
        {
            string query = @"SELECT table_comment
                                                        FROM information_schema.tables
                                                           WHERE table_schema = 'sectors_status_map' and 
                                                                table_name = '" + table + "'";

            return ((string)Select(query).Rows[0][0]);
        }

        public string GetNameColumn(string table, string field)
        {
            string query = @"SELECT column_comment
                                                        FROM information_schema.columns
                                                           WHERE table_schema = 'sectors_status_map' and 
                                                                table_name = '" + table +
                                                                "' and COLUMN_NAME='" + field + "'";

            return ((string)Select(query).Rows[0][0]);
        }
    }
}
