using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace dropdown
{
    public partial class Cascading : System.Web.UI.Page
    {
        string k = ConfigurationManager.ConnectionStrings["constr"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
           if(!IsPostBack)
            {
                Getcountry();

            }
        }
        private void Getcountry()
        {
            SqlConnection con = new SqlConnection(k);
            SqlDataAdapter da = new SqlDataAdapter("select * from country", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "country");
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "countryname";
            DropDownList1.DataValueField = "countryid";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("---select country---", "0"));
        }
        private void GetStates()
        {
            SqlConnection con = new SqlConnection(k);
            string query = "select s.stateid,s.statename from country c inner join state s on  c.countryid=s.countryid where c.countryname='" + DropDownList1.SelectedItem.ToString() + "'";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "state");
            DropDownList2.DataSource = ds;
            DropDownList2.DataTextField = "statename";
            DropDownList2.DataValueField = "stateid";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, new ListItem("---select state---", "0"));
        }
        private void Getcities()
        {
            SqlConnection con = new SqlConnection(k);
            string query = "select c.cityid,c.cityname from state s inner join city c on s.stateid=c.stateid where s.statename='" + DropDownList2.SelectedItem.ToString() + "' ";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "city");
            DropDownList3.DataSource = ds;
            DropDownList3.DataTextField = "cityname";
            DropDownList3.DataValueField = "cityid";
            DropDownList3.DataBind();
            DropDownList3.Items.Insert(0, new ListItem("---select city---", "0"));
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GetStates();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Getcities();
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(k);
            string query = "select e.eno, e.ename,e.salary from employee e inner join city c on e.cityid=c.cityid where c.cityname='" + DropDownList3.SelectedItem.ToString()+"' ";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "employee");
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}