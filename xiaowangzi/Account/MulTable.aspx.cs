using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace xiaowangzi.Account
{
    public partial class MulTable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            for (int i = 1; i <= 9; ++i)
            {
                TableRow row = new TableRow();
                for (int j = 1; j <= i; ++j)
                {
                    TableCell cell = new TableCell();
                    cell.Text = i.ToString() + "*" + j.ToString() + "=" + (i * j).ToString();
                    row.Cells.Add(cell);
                }
                table.Rows.Add(row);
            }
        }
    }
}