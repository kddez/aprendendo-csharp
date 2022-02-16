<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="porcentagem.aspx.cs" Inherits="SiteMaster2.Porcentagem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script runat="server" language="C#">

        void MyButtonCalc (Object sender, EventArgs e)
        {
            double n1, porc;

            n1 = double.Parse(Text1.Text);
            porc = (n1 * 0.1);
            ViewState["porc"] = porc;
            Resultado.Text = porc.ToString();
        }



        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div>
            <asp:textbox id="Text1" text="Número" runat="server" Height="24px" Width="150px" ></asp:textbox>
            <asp:button ID="Button2" Text="Calcular" OnClick="MyButtonCalc" runat="server" Width="57px"></asp:button>
            Resultado: <asp:Label ID="Resultado" runat="server" ></asp:Label>
        </div>
    </form>
</asp:Content>
