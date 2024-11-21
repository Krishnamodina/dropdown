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
    public partial class DropDown : System.Web.UI.Page
    {
        string k = ConfigurationManager.ConnectionStrings["constr"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)

            {
                FillDropDown();
                FillData();
            }

        }
        private void FillDropDown()
        {
            SqlConnection con = new SqlConnection(k);
            
            string query = "select catid,catname from Category";
             SqlCommand cmd = new SqlCommand(query,con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            DropDownList1.DataSource = reader;
            DropDownList1.DataTextField = "catname";
            DropDownList1.DataValueField = "catid";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("---select Category---","0"));
               
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int catid = int.Parse(DropDownList1.SelectedItem.Value);
            SqlConnection con = new SqlConnection(k);
            con.Open();
            string query = "insert into product (pname,price,catid)values(@pname,@price,@catid)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@pname", txtpname.Text);
            cmd.Parameters.AddWithValue("@price", decimal.Parse(txtprice.Text)); 
            cmd.Parameters.AddWithValue("@catid", catid);
            cmd.ExecuteNonQuery();
            con.Close();
            FillData();
        }
        protected void FillData()
        {
            SqlConnection con = new SqlConnection(k);
            string query = "select p.pid,p.pname,c.catname from product p inner join Category c on p.catid=c.catid where c.catname='" + DropDownList1.SelectedItem.ToString()+"' ";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "product");
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}