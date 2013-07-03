using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace xiaowangzi
{
    public partial class _99乘法表 : System.Web.UI.Page
    {
          class Test
          {
           static void Main()
           { 
            int i,j;
            for(i = 1; i <= 9; i++)
            { 
             for(j = 1; j <=i; j++)
              {
               Console.Write("{0}*{1}={2,2} ",i, j , i * j);
              }
             Console.WriteLine();
             }
            }
           }
         
     }    
}