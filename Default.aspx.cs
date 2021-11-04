using System;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Web.Configuration;
using System.Web.UI.DataVisualization.Charting;

namespace NewHRMS
{
    public partial class Default : System.Web.UI.Page
    {
        public static String connectString = connectDB.GetDBConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            string connection = WebConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection connect = new SqlConnection(connection);
          
            GetChartOne();
        }

       


        void GetChartOne()
        {
            // Chart1.ImageStorageMode =System.Web.UI.DataVisualization.Charting.ImageStorageMode.UseImageLocation;
            Chart1.ChartAreas[0].Area3DStyle.Enable3D = true;
            Chart2.ChartAreas[0].Area3DStyle.Enable3D = true;
            string connection = WebConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection connect = new SqlConnection(connection);
            using (SqlCommand cmdChartone = new SqlCommand("countNumberOfOfficersByRank_sp", connect) { CommandType = CommandType.StoredProcedure })
            {
                Series series = Chart1.Series["Series1"];
                connect.Open();
                SqlDataReader rd_One = cmdChartone.ExecuteReader();
                while (rd_One.Read())
                {
                    series.Points.AddXY(rd_One["Rank"].ToString(), rd_One["NumberOfOfficers"]);
                }
                connect.Close();
            }
            using (SqlCommand cmdChart2 = new SqlCommand("countNumberOfOfficersBySex_sp", connect) { CommandType = CommandType.StoredProcedure })
            {
                Series series1 = Chart2.Series["Series1"];
                connect.Open();
                SqlDataReader rd_One = cmdChart2.ExecuteReader();
                while (rd_One.Read())
                {
                    series1.Points.AddXY(rd_One["Gender"].ToString(), rd_One["NumberOfOfficers"]);
                }
                connect.Close();
            }
        }

    }
}